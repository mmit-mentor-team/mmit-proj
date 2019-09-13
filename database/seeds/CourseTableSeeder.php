<?php

use Illuminate\Database\Seeder;

class CourseTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        //HR (Ygn)
        DB::table('courses')->insert([
            'name'		 => 'HR/ Admin/ Office Staff Training',
            'fees'		 =>	'140000',
            'location_id'=> '2',
            'user_id'    => '1',
            'created_at' => now(),
	        'updated_at' => now()
        ]);

        //HR (Mdy)
        DB::table('courses')->insert([
            'name'		 => 'HR/ Admin/ Office Staff Training',
            'fees'		 =>	'140000',
            'location_id'=> '3',
            'user_id'    => '1',
            'created_at' => now(),
	        'updated_at' => now()
        ]);

        //PHP
        DB::table('courses')->insert([
            'name'		 => 'PHP Web Developer Bootcamp',
            'fees'		 =>	'250000',
            'location_id'=> '1',
            'user_id'    => '1',
            'created_at' => now(),
	        'updated_at' => now()
        ]);

        //iOS
        DB::table('courses')->insert([
            'name'		 => 'iOS Application Development Training',
            'fees'		 =>	'200000',
            'location_id'=> '1',
            'user_id'    => '1',
            'created_at' => now(),
	        'updated_at' => now()
        ]);
    }
}
