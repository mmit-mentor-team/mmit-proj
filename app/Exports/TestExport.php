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
use Maatwebsite\Excel\Concerns\WithMapping;
use Illuminate\Contracts\View\View;
use Maatwebsite\Excel\Concerns\FromView;
/*WithTitle,ShouldAutoSize,WithHeadings,*/

class TestExport implements FromView,ShouldAutoSize
{
    protected $month = '';
    protected $year = '';
    protected $incomeresult;
    protected $result;


    public function __construct($month,$year){
        $this->month = $month;
        $this->year = $year;
    }
  
    public function view(): View
    {
        switch ($this->month) {
                case 'Jan':
                    $month='01';
                    break;

                case 'Feb':
                    $month='02';
                    break;
                
                case 'Mar':
                    $month='03';
                    break;

                case 'April':
                    $month='04';
                    break;

                case 'May':
                    $month='05';
                    break;

                case 'June':
                    $month='06';
                    break;

                case 'July':
                    $month='07';
                    break;

                case 'Aug':
                    $month='08';
                    break;

                case 'Sep':
                   $month='09';
                    break;

                case 'Oct':
                   $month='10';
                    break;

                case 'Nov':
                    $month='11';
                    break;

                case 'Dec':
                   $month='12';
                    break;
                default:
                    
                    break;
            }
            //dd($month);
            $startdate = $this->year.'-'.$month.'-01';
            //dd($startdate);
            $enddate =$this->year.'-'.$month.'-31';
            //dd($enddate);
            $phpresult = DB::table('expenses')
                        ->join('users','users.id','=','expenses.user_id')
                       
                        ->whereBetween('expenses.date',[$startdate,$enddate])
                         ->select('expenses.type as etype','expenses.description as edescription','expenses.date as edate','expenses.amount as eamount')
                         ->where('expenses.type','=','PHP')
                        ->get();
            //dd($this->phpresult);
            $phpresults = count($phpresult);

            $phptotals = DB::table('expenses')
                        ->join('users','users.id','=','expenses.user_id')
                       
                        ->whereBetween('expenses.date',[$startdate,$enddate])
                        ->where('expenses.type','=','PHP')
                        ->sum('expenses.amount');

            $recruitmentresult = DB::table('expenses')
                        ->join('users','users.id','=','expenses.user_id')
                       
                        ->whereBetween('expenses.date',[$startdate,$enddate])
                         ->select('expenses.type as etype','expenses.description as edescription','expenses.date as edate','expenses.amount as eamount')
                         ->where('expenses.type','=','Recruitment')
                        ->get();
            //dd($this->recruitmentresult);
            $recruitmentresults = count($recruitmentresult);

            $recruitmenttotals = DB::table('expenses')
                        ->join('users','users.id','=','expenses.user_id')
                       
                        ->whereBetween('expenses.date',[$startdate,$enddate])
                        ->where('expenses.type','=','Recruitment')
                        ->sum('expenses.amount');
            //dd($recruitmenttotals);

            $hrresult = DB::table('expenses')
                        ->join('users','users.id','=','expenses.user_id')
                       
                        ->whereBetween('expenses.date',[$startdate,$enddate])
                         ->select('expenses.type as etype','expenses.description as edescription','expenses.date as edate','expenses.amount as eamount')
                         ->where('expenses.type','=','HR')
                        ->get();
            //dd($this->hrresult);
            $hrresults = count($hrresult);

            $hrtotals = DB::table('expenses')
                        ->join('users','users.id','=','expenses.user_id')
                       
                        ->whereBetween('expenses.date',[$startdate,$enddate])
                        ->where('expenses.type','=','HR')
                        ->sum('expenses.amount');

            $generalresult = DB::table('expenses')
                        ->join('users','users.id','=','expenses.user_id')
                       
                        ->whereBetween('expenses.date',[$startdate,$enddate])
                         ->select('expenses.type as etype','expenses.description as edescription','expenses.date as edate','expenses.amount as eamount')
                         ->where('expenses.type','=','General')
                        ->get();
            //dd($this->generalresult);
            $generalresults = count($generalresult);
            //dd($generalresults);

            $generaltotals = DB::table('expenses')
                        ->join('users','users.id','=','expenses.user_id')
                       
                        ->whereBetween('expenses.date',[$startdate,$enddate])
                        ->where('expenses.type','=','General')
                        ->sum('expenses.amount');

            $iresult = DB::table('incomes')
                        ->join('users','users.id','=','incomes.user_id')
                        ->whereBetween('date',[$startdate,$enddate])
                        ->sum('incomes.amount');
            
            
           /* $incomeresult = [];
            array_push($incomeresult, ['','','',$iresult]);
           */
            $incomeresult = DB::table('incomes')
                        ->join('users','users.id','=','incomes.user_id')
                       
                        ->whereBetween('incomes.date',[$startdate,$enddate])
                         ->select('incomes.description as idescription','incomes.date as idate','incomes.amount as iamount')
                        ->get();

            $result1 = DB::table('expenses')
            ->join('users','users.id','=','expenses.user_id')
           
            ->whereBetween('expenses.date',[$startdate,$enddate])

           ->sum('expenses.amount');
        
            $total = $iresult-$result1;
             
            $export=[];
            array_push($export,[' ','','',$total]);
        return view('export.view_loan_export', [
            'hrs' => $hrresult,
            'phps' => $phpresult,
            'recruitments' => $recruitmentresult,
            'generals' => $generalresult,
            'generalcount'=>$generalresults,
            'hrcount'=>$hrresults,
            'recruitmentcount'=>$recruitmentresults,
            'phpcount'=>$phpresults,
            'recruitmenttotal'=>$recruitmenttotals,
            'hrtotal'=>$hrtotals,
            'phptotal'=>$phptotals,
            'generaltotal'=>$generaltotals,
            'totalexpense'=>$result1,
            'incomeexpense'=>$iresult,
            'change'=>$total,
            'incomeresults'=>$incomeresult,
            'year' => $this->year,
            'month'=>$this->month
        ]);
     }

   public function registerEvents(): array
    {
        return [
            AfterSheet::class    => function(AfterSheet $event) {
                $cellRange = 'A1:Z1'; // All headers
                $event->sheet->getDelegate()->getStyle($cellRange)->getFont()->setSize(14);
              
            },
        ];
    }
  
   
}
