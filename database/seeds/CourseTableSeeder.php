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
            'codeno'     => '001',
            'name'		 => 'HR/ Admin/ Office Staff Training',
            'fees'		 =>	'140000',
            'location_id'=> '2',
            'user_id'    => '1',
            'created_at' => now(),
	        'updated_at' => now()
        ]);

        //HR (Mdy)
        DB::table('courses')->insert([
            'codeno'     => '002',
            'name'		 => 'HR/ Admin/ Office Staff Training',
            'fees'		 =>	'140000',
            'location_id'=> '3',
            'user_id'    => '1',
            'created_at' => now(),
	        'updated_at' => now()
        ]);

        //PHP (YGN)
        DB::table('courses')->insert([
            'codeno'     => '003',
            'name'		 => 'PHP Web Developer Bootcamp',
            'fees'		 =>	'280000',
            'location_id'=> '1',
            'user_id'    => '1',
            'created_at' => now(),
	        'updated_at' => now()
        ]);

        //iOS
        DB::table('courses')->insert([
            'codeno'     => '004',
            'name'		 => 'iOS Application Development Training',
            'fees'		 =>	'200000',
            'location_id'=> '1',
            'user_id'    => '1',
            'created_at' => now(),
	        'updated_at' => now()
        ]);

        //PHP (MDY)
        DB::table('courses')->insert([
            'codeno'     => '005',
            'name'       => 'PHP Web Developer Bootcamp',
            'fees'       => '280000',
            'location_id'=> '3',
            'user_id'    => '1',
            'created_at' => now(),
            'updated_at' => now()
        ]);
    }
}
