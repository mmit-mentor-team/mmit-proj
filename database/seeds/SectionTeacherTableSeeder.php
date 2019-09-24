<?php

use Illuminate\Database\Seeder;

class SectionTeacherTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
    	// PHP Bootcamp (YGN) Sec:1
        DB::table('section_teacher')->insert([
            'section_id'		 => '1',
            'teacher_id'		 =>	'1',
            'created_at' => now(),
	        'updated_at' => now()
        ]);

        // PHP Bootcamp (YGN) Sec:1
        DB::table('section_teacher')->insert([
            'section_id'		 => '1',
            'teacher_id'		 =>	'2',
            'created_at' => now(),
	        'updated_at' => now()
        ]);

        // PHP Bootcamp (YGN) Sec:2
        DB::table('section_teacher')->insert([
            'section_id'		 => '2',
            'teacher_id'		 =>	'1',
            'created_at' => now(),
	        'updated_at' => now()
        ]);

        // PHP Bootcamp (YGN) Sec:2
        DB::table('section_teacher')->insert([
            'section_id'		 => '2',
            'teacher_id'		 =>	'2',
            'created_at' => now(),
	        'updated_at' => now()
        ]);

        // PHP Bootcamp (MDY) Sec:3
        DB::table('section_teacher')->insert([
            'section_id'		 => '3',
            'teacher_id'		 =>	'1',
            'created_at' => now(),
	        'updated_at' => now()
        ]);

        // PHP Bootcamp (MDY) Sec:3
        DB::table('section_teacher')->insert([
            'section_id'		 => '3',
            'teacher_id'		 =>	'13',
            'created_at' => now(),
	        'updated_at' => now()
        ]);

        // HR (YGN) Sec:4
        DB::table('section_teacher')->insert([
            'section_id'		 => '4',
            'teacher_id'		 =>	'4',
            'created_at' => now(),
	        'updated_at' => now()
        ]);

        // HR (YGN) Sec:5
        DB::table('section_teacher')->insert([
            'section_id'		 => '5',
            'teacher_id'		 =>	'5',
            'created_at' => now(),
	        'updated_at' => now()
        ]);

        // HR (YGN) Sec:6
        DB::table('section_teacher')->insert([
            'section_id'		 => '6',
            'teacher_id'		 =>	'6',
            'created_at' => now(),
	        'updated_at' => now()
        ]);

        // HR (YGN) Sec:7
        DB::table('section_teacher')->insert([
            'section_id'		 => '7',
            'teacher_id'		 =>	'5',
            'created_at' => now(),
	        'updated_at' => now()
        ]);

        // HR (YGN) Sec:8
        DB::table('section_teacher')->insert([
            'section_id'		 => '8',
            'teacher_id'		 =>	'6',
            'created_at' => now(),
	        'updated_at' => now()
        ]);

        // HR (YGN) Sec:9
        DB::table('section_teacher')->insert([
            'section_id'		 => '9',
            'teacher_id'		 =>	'4',
            'created_at' => now(),
	        'updated_at' => now()
        ]); 

        // HR (YGN) Sec:10
        DB::table('section_teacher')->insert([
            'section_id'		 => '10',
            'teacher_id'		 =>	'6',
            'created_at' => now(),
	        'updated_at' => now()
        ]);

        // HR (YGN) Sec:11
        DB::table('section_teacher')->insert([
            'section_id'		 => '11',
            'teacher_id'		 =>	'4',
            'created_at' => now(),
	        'updated_at' => now()
        ]);

        // HR (YGN) Sec:12
        DB::table('section_teacher')->insert([
            'section_id'		 => '12',
            'teacher_id'		 =>	'5',
            'created_at' => now(),
	        'updated_at' => now()
        ]);

        // HR (YGN) Sec:13
        DB::table('section_teacher')->insert([
            'section_id'		 => '13',
            'teacher_id'		 =>	'8',
            'created_at' => now(),
	        'updated_at' => now()
        ]);

        // HR (YGN) Sec:14
        DB::table('section_teacher')->insert([
            'section_id'		 => '14',
            'teacher_id'		 =>	'8',
            'created_at' => now(),
	        'updated_at' => now()
        ]);

        // HR (YGN) Sec:15
        DB::table('section_teacher')->insert([
            'section_id'		 => '15',
            'teacher_id'		 =>	'9',
            'created_at' => now(),
	        'updated_at' => now()
        ]);

        // HR (YGN) Sec:16
        DB::table('section_teacher')->insert([
            'section_id'		 => '16',
            'teacher_id'		 =>	'7',
            'created_at' => now(),
	        'updated_at' => now()
        ]);

        // HR (YGN) Sec:17
        DB::table('section_teacher')->insert([
            'section_id'		 => '17',
            'teacher_id'		 =>	'3',
            'created_at' => now(),
	        'updated_at' => now()
        ]);

        // HR (YGN) Sec:18
        DB::table('section_teacher')->insert([
            'section_id'		 => '18',
            'teacher_id'		 =>	'3',
            'created_at' => now(),
	        'updated_at' => now()
        ]);


    }
}
