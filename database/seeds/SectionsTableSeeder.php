<?php

use Illuminate\Database\Seeder;

class SectionsTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
    	// 1 PHP Bootcamp (YGN)
        DB::table('sections')->insert([
            'codeno'       	=> '7th Oct 2019',
            'title'      	=> 'Batch 10',
            'startdate'    	=> '2019-10-07',
            'enddate'   	=>	'2019-11-23',
            'duration_id'	=>	'1',
            'user_id'		=>	'1',
            'created_at' 	=> now(),
            'updated_at' 	=> now()
        ]);

        // 2 PHP Bootcamp (YGN)
        DB::table('sections')->insert([
            'codeno'       	=> '23rd Oct 2019',
            'title'      	=> 'Batch 11',
            'startdate'    	=> '2019-10-23',
            'enddate'   	=>	'2019-12-06',
            'duration_id'	=>	'1',
            'user_id'		=>	'1',
            'created_at' 	=> now(),
            'updated_at' 	=> now()
        ]);

        // 3 PHP Bootcamp (MDY)
        DB::table('sections')->insert([
            'codeno'       	=> '16th Oct 2019',
            'title'      	=> 'Batch 1',
            'startdate'    	=> '2019-10-16',
            'enddate'   	=>	'2019-11-29',
            'duration_id'	=>	'2',
            'user_id'		=>	'1',
            'created_at' 	=> now(),
            'updated_at' 	=> now()
        ]);

        // 4 HR (YGN)
        DB::table('sections')->insert([
            'codeno'       	=> '20th Sep 2019',
            'title'      	=> 'YGN HR Batch 40',
            'startdate'    	=> '2019-09-20',
            'enddate'   	=> '2019-11-15',
            'duration_id'	=> '3',
            'user_id'		=>	'1',
            'created_at' 	=> now(),
            'updated_at' 	=> now()
        ]);

        // 5 HR (YGN)
        DB::table('sections')->insert([
            'codeno'       	=> '20th Sep 2019',
            'title'      	=> 'YGN HR Batch 41',
            'startdate'    	=> '2019-09-20',
            'enddate'   	=> '2019-12-09',
            'duration_id'	=> '4',
            'user_id'		=>	'1',
            'created_at' 	=> now(),
            'updated_at' 	=> now()
        ]);

        // 6 HR (YGN)
        DB::table('sections')->insert([
            'codeno'       	=> '20th Sep 2019',
            'title'      	=> 'YGN HR Batch 42',
            'startdate'    	=> '2019-09-20',
            'enddate'   	=> '2019-12-09',
            'duration_id'	=> '5',
            'user_id'		=>	'1',
            'created_at' 	=> now(),
            'updated_at' 	=> now()
        ]);

        // 7 HR (YGN)
        DB::table('sections')->insert([
            'codeno'       	=> '21th Sep 2019',
            'title'      	=> 'YGN HR Batch 43',
            'startdate'    	=> '2019-09-21',
            'enddate'   	=> '2019-11-16',
            'duration_id'	=> '3',
            'user_id'		=>	'1',
            'created_at' 	=> now(),
            'updated_at' 	=> now()
        ]);

        // 8 HR (YGN)
        DB::table('sections')->insert([
            'codeno'       	=> '21th Sep 2019',
            'title'      	=> 'YGN HR Batch 43',
            'startdate'    	=> '2019-09-21',
            'enddate'   	=> '2019-12-10',
            'duration_id'	=> '4',
            'user_id'		=>	'1',
            'created_at' 	=> now(),
            'updated_at' 	=> now()
        ]);

        // 9 HR (YGN)
        DB::table('sections')->insert([
            'codeno'       	=> '21th Sep 2019',
            'title'      	=> 'YGN HR Batch 44',
            'startdate'    	=> '2019-09-21',
            'enddate'   	=> '2019-12-10',
            'duration_id'	=> '5',
            'user_id'		=>	'1',
            'created_at' 	=> now(),
            'updated_at' 	=> now()
        ]);

        // 10 HR (YGN)
        DB::table('sections')->insert([
            'codeno'       	=> '22th Sep 2019',
            'title'      	=> 'YGN HR Batch 45',
            'startdate'    	=> '2019-09-22',
            'enddate'   	=> '2019-11-17',
            'duration_id'	=> '3',
            'user_id'		=>	'1',
            'created_at' 	=> now(),
            'updated_at' 	=> now()
        ]);

        // 11 HR (YGN)
        DB::table('sections')->insert([
            'codeno'       	=> '22th Sep 2019',
            'title'      	=> 'YGN HR Batch 46',
            'startdate'    	=> '2019-09-22',
            'enddate'   	=> '2019-12-11',
            'duration_id'	=> '4',
            'user_id'		=>	'1',
            'created_at' 	=> now(),
            'updated_at' 	=> now()
        ]);

        // 12 HR (YGN)
        DB::table('sections')->insert([
            'codeno'       	=> '22th Sep 2019',
            'title'      	=> 'YGN HR Batch 47',
            'startdate'    	=> '2019-09-22',
            'enddate'   	=> '2019-12-11',
            'duration_id'	=> '5',
            'user_id'		=>	'1',
            'created_at' 	=> now(),
            'updated_at' 	=> now()
        ]);

        // 13 HR (MDY)
        DB::table('sections')->insert([
            'codeno'       	=> '16th Sep 2019',
            'title'      	=> 'MDY HR Batch 29',
            'startdate'    	=> '2019-09-16',
            'enddate'   	=> '2019-11-21',
            'duration_id'	=> '10',
            'user_id'		=>	'1',
            'created_at' 	=> now(),
            'updated_at' 	=> now()
        ]);

        // 14 HR (MDY)
        DB::table('sections')->insert([
            'codeno'       	=> '18th Sep 2019',
            'title'      	=> 'MDY HR Batch 30',
            'startdate'    	=> '2019-09-18',
            'enddate'   	=>	'2019-12-14',
            'duration_id'	=>	'8',
            'user_id'		=>	'1',
            'created_at' 	=> now(),
            'updated_at' 	=> now()
        ]);

        // 15 HR (MDY)
        DB::table('sections')->insert([
            'codeno'       	=> '25th Sep 2019',
            'title'      	=> 'MDY HR Batch 31',
            'startdate'    	=> '2019-09-25',
            'enddate'   	=>	'2019-11-30',
            'duration_id'	=>	'10',
            'user_id'		=>	'1',
            'created_at' 	=> now(),
            'updated_at' 	=> now()
        ]);

        // 16 HR (MDY)
        DB::table('sections')->insert([
            'codeno'       	=> '25th Sep 2019',
            'title'      	=> 'MDY HR Batch 32',
            'startdate'    	=> '2019-09-25',
            'enddate'   	=>	'2019-11-30',
            'duration_id'	=>	'9',
            'user_id'		=>	'1',
            'created_at' 	=> now(),
            'updated_at' 	=> now()
        ]);

        // 17 iOS (YGN)
        DB::table('sections')->insert([
            'codeno'       	=> '10th Aug 2019',
            'title'      	=> 'YGN iOS Batch 27',
            'startdate'    	=> '2019-08-10',
            'enddate'   	=>	'2019-12-07',
            'duration_id'	=>	'11',
            'user_id'		=>	'1',
            'created_at' 	=> now(),
            'updated_at' 	=> now()
        ]);

        // 18 iOS (YGN)
        DB::table('sections')->insert([
            'codeno'       	=> '7 Sep 2019',
            'title'      	=> 'YGN iOS Batch 28',
            'startdate'    	=> '2019-09-07',
            'enddate'   	=>	'2020-1-04',
            'duration_id'	=>	'12',
            'user_id'		=>	'1',
            'created_at' 	=> now(),
            'updated_at' 	=> now()
        ]);
    }
}
