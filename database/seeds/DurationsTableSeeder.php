<?php

use Illuminate\Database\Seeder;

class DurationsTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        // 1 PHP Bootcamp (YGN)
        DB::table('durations')->insert([
            'time'		 => '9:00 AM- 5:00 PM',
            'days'		 =>	'Monday - Friday',
            'during'	 => '30',
            'course_id'  => '3',
            'user_id'	 =>	'1',
            'created_at' => now(),
	        'updated_at' => now()
        ]);

        // 2 PHP Bootcamp (MDY)
        DB::table('durations')->insert([
            'time'       => '9:00 AM- 5:00 PM',
            'days'       => 'Monday - Friday',
            'during'     => '30',
            'course_id'  => '5',
            'user_id'    => '1',
            'created_at' => now(),
            'updated_at' => now()
        ]);

        // 3 HR (YGN)
        DB::table('durations')->insert([
            'time'		 => '9:00 AM- 12:00 PM',
            'days'		 =>	'Monday - Friday',
            'during'	 => '35',
            'course_id'  => '1',
            'user_id'	 =>	'1',
            'created_at' => now(),
	        'updated_at' => now()
        ]);

        // 4 HR (YGN)
        DB::table('durations')->insert([
            'time'		 => '1:00 PM - 3:00 PM',
            'days'		 =>	'Monday - Friday',
            'during'	 => '53',
            'course_id'  => '1',
            'user_id'	 =>	'1',
            'created_at' => now(),
	        'updated_at' => now()
        ]);

        // 5 HR (YGN)
        DB::table('durations')->insert([
            'time'		 => '3:00 PM - 5:00 PM',
            'days'		 =>	'Monday - Friday',
            'during'	 => '53',
            'course_id'  => '1',
            'user_id'	 =>	'1',
            'created_at' => now(),
	        'updated_at' => now()
        ]);

        // 6 HR (MDY)
        DB::table('durations')->insert([
            'time'		 => '9:00 AM- 12:00 PM',
            'days'		 =>	'Monday - Friday',
            'during'	 => '35',
            'course_id'  => '2',
            'user_id'	 =>	'1',
            'created_at' => now(),
	        'updated_at' => now()
        ]);

        // 7 HR (MDY)
        DB::table('durations')->insert([
            'time'		 => '1:00 PM - 3:00 PM',
            'days'		 =>	'Monday - Friday',
            'during'	 => '45',
            'course_id'  => '2',
            'user_id'	 =>	'1',
            'created_at' => now(),
	        'updated_at' => now()
        ]);

        // 8 HR (MDY)
        DB::table('durations')->insert([
            'time'		 => '7:00 AM - 8:30 AM',
            'days'		 =>	'Monday - Friday',
            'during'	 => '60',
            'course_id'  => '2',
            'user_id'	 =>	'1',
            'created_at' => now(),
	        'updated_at' => now()
        ]);

        // 9 HR (MDY)
        DB::table('durations')->insert([
            'time'		 => '1:00 PM - 4:00 PM',
            'days'		 =>	'Monday - Friday',
            'during'	 => '35',
            'course_id'  => '2',
            'user_id'	 =>	'1',
            'created_at' => now(),
	        'updated_at' => now()
        ]);

        // 10 HR (MDY) 
        DB::table('durations')->insert([
            'time'		 => '3:00 PM - 5:00 PM',
            'days'		 =>	'Monday - Friday',
            'during'	 => '45',
            'course_id'  => '2',
            'user_id'	 =>	'1',
            'created_at' => now(),
	        'updated_at' => now()
        ]);

        // 11 iOS (YGN)
        DB::table('durations')->insert([
            'time'		 => '2:00 PM- 4:00 PM',
            'days'		 =>	'Saturday - Sunday',
            'during'	 => '35',
            'course_id'  => '4',
            'user_id'	 =>	'1',
            'created_at' => now(),
	        'updated_at' => now()
        ]);

        // 12 iOS (YGN)
        DB::table('durations')->insert([
            'time'       => '4:00 PM- 6:00 PM',
            'days'       => 'Saturday - Sunday',
            'during'     => '35',
            'course_id'  => '4',
            'user_id'    => '1',
            'created_at' => now(),
            'updated_at' => now()
        ]);
    }
}
