<?php

namespace App\Exports;

use Maatwebsite\Excel\Concerns\FromCollection;
use App\Model\Expense;
use App\Model\Income;
use Maatwebsite\Excel\Concerns\WithTitle;
use Maatwebsite\Excel\Concerns\WithHeadings;
use App\Http\Controllers\ExportController;
use Illuminate\Support\Facades\DB;
use Maatwebsite\Excel\Concerns\FromArray;
use Maatwebsite\Excel\Concerns\Exportable;
use App\Http\Resources\ExpenseResource;
use Maatwebsite\Excel\Concerns\WithMultipleSheets;
use Maatwebsite\Excel\Concerns\WithEvents;
use Maatwebsite\Excel\Events\AfterSheet;
use Maatwebsite\Excel\Concerns\ShouldAutoSize;
use Maatwebsite\Excel\Events\BeforeSheet;
use Maatwebsite\Excel\Sheet;
use Maatwebsite\Excel\Facades\Excel;

class TestExport implements FromCollection, WithTitle,ShouldAutoSize,WithEvents,WithHeadings
{
    protected $month = '';
    protected $year = '';
    protected $incomeresult;
    protected $result;


    public function __construct($month,$year){
        $this->month = $month;
        $this->year = $year;
    }
    
    public function collection(){
       
         switch ($this->month) {
            case 'Jan':
                $this->month='01';
                break;

            case 'Feb':
                $this->month='02';
                break;
            
            case 'Mar':
                $this->month='03';
                break;

            case 'April':
                $this->month='04';
                break;

            case 'May':
                $this->month='05';
                break;

            case 'June':
                $this->month='06';
                break;

            case 'July':
                $this->month='07';
                break;

            case 'Aug':
                $this->month='08';
                break;

            case 'Sep':
               $this->month='09';
                break;

            case 'Oct':
               $this->month='10';
                break;

            case 'Nov':
                $this->month='11';
                break;

            case 'Dec':
               $this->month='12';
                break;
            default:
                
                break;
        }
        //dd($month);
        $startdate = $this->year.'-'.$this->month.'-01';
        //dd($startdate);
        $enddate =$this->year.'-'.$this->month.'-31';
        //dd($enddate);
        $this->result = DB::table('expenses')
                    ->join('users','users.id','=','expenses.user_id')
                   
                    ->whereBetween('expenses.date',[$startdate,$enddate])
                     ->select('users.name as uname','expenses.description as edescription','expenses.date as edate','expenses.amount as eamount')

                    ->get();
                   
         
        $iresult = DB::table('incomes')
                    ->join('users','users.id','=','incomes.user_id')
                    ->whereBetween('date',[$startdate,$enddate])
                    ->sum('incomes.amount');
        
        
        $this->incomeresult = [];
        array_push($this->incomeresult, ['','','',$iresult]);
       

        $result1 = DB::table('expenses')
        ->join('users','users.id','=','expenses.user_id')
       
        ->whereBetween('expenses.date',[$startdate,$enddate])

       ->sum('expenses.amount');
    
        $total = $iresult-$result1;
         
        $export=[];
        array_push($export,[' ','','',$total]);
      
        $data =  $this->result->concat($this->incomeresult)->concat($export);
        return $data;
    
    }
    public function headings(): array {

    	return [
    		'User Name',
            'Description',
            'Date',
    		'Amount',
        ];
        
    }
     public function title(): string
    {
        return 'Month ' . $this->month . ' Year ' . $this->year;
    }

    public function registerEvents(): array
    {
        return [
             
            AfterSheet::class    => function(AfterSheet $event) {
                $cellRange = 'A1:W1'; // All headers
                $event->sheet->getDelegate()->getStyle($cellRange)->getFont()->setSize(14);
                $event->sheet->insertNewRowBefore(count($this->result)+2,2);
                $event->sheet->mergeCells('A'.(count($this->result)+4).':C'.(count($this->result)+4));
             
                $event->sheet->setCellValue('A'.(count($this->result)+4),'Income');
                
                $event->sheet->mergeCells('A'.(count($this->result)+5).':C'.(count($this->result)+5));
             
                $event->sheet->setCellValue('A'.(count($this->result)+5),'Balance');
              
                $event->sheet->styleCells(
                     'A1:D1',
                [
                    'alignment' => [
                        'horizontal' => \PhpOffice\PhpSpreadsheet\Style\Alignment::HORIZONTAL_CENTER,
                    ],
                    'font' => [
                        'name'      =>  'Calibri',
                        'size'      =>  15,
                        'bold'      =>  true,
                        'color' => ['argb' => 'DC143C'],
                    ],
                ]);

                $event->sheet->styleCells(
                     'A'.(count($this->result)+4).':C'.(count($this->result)+4),
                [
                    'alignment' => [
                        'horizontal' => \PhpOffice\PhpSpreadsheet\Style\Alignment::HORIZONTAL_CENTER,
                    ],
                    'font' => [
                        'name'      =>  'Calibri',
                        'size'      =>  15,
                        'bold'      =>  true,
                        'color' => ['argb' => '00FF00'],
                    ],
                ]);
                $event->sheet->styleCells(
                     'A'.(count($this->result)+5).':C'.(count($this->result)+5),
                [
                    'alignment' => [
                        'horizontal' => \PhpOffice\PhpSpreadsheet\Style\Alignment::HORIZONTAL_CENTER,
                    ],
                    'font' => [
                        'name'      =>  'Calibri',
                        'size'      =>  15,
                        'bold'      =>  true,
                        'color' => ['argb' => '34eb74'],
                    ],
                ]);
            },


        ];
    }
  
   
}
