<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Maatwebsite\Excel\Facades\Excel;
use App\Exports\TestExport;
use App\User;
use Illuminate\Support\Facades\DB;

class ExportController extends Controller
{
    //
    public function export($month, $year){
    	
    	return Excel::download(new TestExport($month,$year), 'YEAR_MONTH_DATA_AT_' . $year . '_'. $month . '.xlsx');
    }

  
}
