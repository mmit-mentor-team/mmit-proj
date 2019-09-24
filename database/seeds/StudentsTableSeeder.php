<?php

use Illuminate\Database\Seeder;

class StudentsTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
    	// Sec :1
    	for($i = 1; $i < 57; $i++) 
    	{

	        DB::table('students')->insert([
	            'secinstallmentdate'	=> '2019-10-07',
	            'secinstallmentamount'	=> '180000',
	            'remark'				=> 'HTML,CSS little experience',
	            'resume'    			=> '1568272312demo.docx',
	            'status'				=> '1',
	            'actionstatus'			=> '0',
	            'inquire_id'			=> $i,
	            'user_id'				=>	1,
	            'created_at' 			=> now(),
		        'updated_at'			=> now()
	        ]);
	    }

	    // Sec :2
    	for($i = 1; $i < 5; $i++) 
    	{

	        DB::table('students')->insert([
	            'secinstallmentdate'	=> '2019-09-19',
	            'secinstallmentamount'	=> '0',
	            'remark'				=> '',
	            'resume'    			=> '',
	            'status'				=> '1',
	            'actionstatus'			=> '0',
	            'inquire_id'			=> $i,
	            'user_id'				=>	1,
	            'created_at' 			=> now(),
		        'updated_at'			=> now()
	        ]);
	    }

	    // Sec :2
	    for($i = 6; $i < 57; $i++) 
    	{

	        DB::table('students')->insert([
	            'secinstallmentdate'	=> '2019-10-23',
	            'secinstallmentamount'	=> '100000',
	            'remark'				=> '',
	            'resume'    			=> '',
	            'status'				=> '1',
	            'actionstatus'			=> '0',
	            'inquire_id'			=> $i,
	            'user_id'				=>	1,
	            'created_at' 			=> now(),
		        'updated_at'			=> now()
	        ]);
	    }

	    // Sec:3
	    for($i = 1; $i < 15; $i++) 
    	{

	        DB::table('students')->insert([
	            'secinstallmentdate'	=> '2019-09-12',
	            'secinstallmentamount'	=> '0',
	            'remark'				=> 'HTML,CSS little experience',
	            'resume'    			=> '1568272312demo.docx',
	            'status'				=> '1',
	            'actionstatus'			=> '0',
	            'inquire_id'			=> $i,
	            'user_id'				=>	1,
	            'created_at' 			=> now(),
		        'updated_at'			=> now()
	        ]);
	    }

	    for($i = 16; $i < 26; $i++) 
    	{

	        DB::table('students')->insert([
	            'secinstallmentdate'	=> '2019-09-12',
	            'secinstallmentamount'	=> '180000',
	            'remark'				=> 'HTML,CSS little experience',
	            'resume'    			=> '',
	            'status'				=> '1',
	            'actionstatus'			=> '0',
	            'inquire_id'			=> $i,
	            'user_id'				=>	1,
	            'created_at' 			=> now(),
		        'updated_at'			=> now()
	        ]);
	    }

	    // Sec:4
	    for($i = 1; $i < 11; $i++) 
    	{

	        DB::table('students')->insert([
	            'secinstallmentdate'	=> '2019-09-20',
	            'secinstallmentamount'	=> '100000',
	            'remark'				=> 'HTML,CSS little experience',
	            'resume'    			=> '',
	            'status'				=> '1',
	            'actionstatus'			=> '0',
	            'inquire_id'			=> $i,
	            'user_id'				=>	1,
	            'created_at' 			=> now(),
		        'updated_at'			=> now()
	        ]);
	    }

	    // Sec:5
	    for($i = 1; $i < 11; $i++) 
    	{

	        DB::table('students')->insert([
	            'secinstallmentdate'	=> '2019-09-20',
	            'secinstallmentamount'	=> '0',
	            'remark'				=> 'HTML,CSS little experience',
	            'resume'    			=> '',
	            'status'				=> '1',
	            'actionstatus'			=> '0',
	            'inquire_id'			=> $i,
	            'user_id'				=>	1,
	            'created_at' 			=> now(),
		        'updated_at'			=> now()
	        ]);
	    }

	    // Sec:6
	    for($i = 1; $i < 11; $i++) 
    	{

	        DB::table('students')->insert([
	            'secinstallmentdate'	=> '2019-09-20',
	            'secinstallmentamount'	=> '0',
	            'remark'				=> 'HTML,CSS little experience',
	            'resume'    			=> '',
	            'status'				=> '1',
	            'actionstatus'			=> '0',
	            'inquire_id'			=> $i,
	            'user_id'				=>	1,
	            'created_at' 			=> now(),
		        'updated_at'			=> now()
	        ]);
	    }

    }
}
