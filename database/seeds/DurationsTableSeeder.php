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
        DB::table('durations')->insert([
            'time'		 => '9:00 AM- 5:00 PM',
            'days'		 =>	'Monday - Friday',
            'during'	 => '31 Days',
            'course_id'  => '3',
            'user_id'	 =>	'1',
            'created_at' => now(),
	        'updated_at' => now()
        ]);

        DB::table('durations')->insert([
            'time'		 => '9:00 AM- 12:00 PM',
            'days'		 =>	'Monday - Friday',
            'during'	 => '35 Days',
            'course_id'  => '1',
            'user_id'	 =>	'1',
            'created_at' => now(),
	        'updated_at' => now()
        ]);

        DB::table('durations')->insert([
            'time'		 => '1:00 PM - 3:00 PM',
            'days'		 =>	'Monday - Friday',
            'during'	 => '53 Days',
            'course_id'  => '1',
            'user_id'	 =>	'1',
            'created_at' => now(),
	        'updated_at' => now()
        ]);

        DB::table('durations')->insert([
            'time'		 => '3:00 PM - 5:00 PM',
            'days'		 =>	'Monday - Friday',
            'during'	 => '53 Days',
            'course_id'  => '1',
            'user_id'	 =>	'1',
            'created_at' => now(),
	        'updated_at' => now()
        ]);

        DB::table('durations')->insert([
            'time'		 => '9:00 AM- 12:00 PM',
            'days'		 =>	'Monday - Friday',
            'during'	 => '36 Days',
            'course_id'  => '2',
            'user_id'	 =>	'1',
            'created_at' => now(),
	        'updated_at' => now()
        ]);

        DB::table('durations')->insert([
            'time'		 => '1:00 PM - 3:00 PM',
            'days'		 =>	'Monday - Friday',
            'during'	 => '54 Days',
            'course_id'  => '2',
            'user_id'	 =>	'1',
            'created_at' => now(),
	        'updated_at' => now()
        ]);

        DB::table('durations')->insert([
            'time'		 => '7:00 AM - 8:30 AM',
            'days'		 =>	'Monday - Friday',
            'during'	 => '54 Days',
            'course_id'  => '2',
            'user_id'	 =>	'1',
            'created_at' => now(),
	        'updated_at' => now()
        ]);

        DB::table('durations')->insert([
            'time'		 => '1:00 PM - 4:00 PM',
            'days'		 =>	'Monday - Friday',
            'during'	 => '36 Days',
            'course_id'  => '2',
            'user_id'	 =>	'1',
            'created_at' => now(),
	        'updated_at' => now()
        ]);

        DB::table('durations')->insert([
            'time'		 => '2:00 PM - 4:00 PM',
            'days'		 =>	'Saturday - Sunday',
            'during'	 => '60 Days',
            'course_id'  => '4',
            'user_id'	 =>	'1',
            'created_at' => now(),
	        'updated_at' => now()
        ]);

        DB::table('durations')->insert([
            'time'		 => '4:00 PM- 6:00 PM',
            'days'		 =>	'Saturday - Sunday',
            'during'	 => '60 Days',
            'course_id'  => '4',
            'user_id'	 =>	'1',
            'created_at' => now(),
	        'updated_at' => now()
        ]);
    }
}
