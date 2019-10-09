<?php

use Illuminate\Database\Seeder;

class InquireSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
    	$faker = Faker\Factory::create();
    	$gender = $faker->randomElement(['male', 'female']);

	    //Sec:1
    	$sec1_a=1; $sec1_b =1; $sec1_c=1; $sec1_d=1; $sec1_e=1; $sec1_f=1;
    	for($i = 0; $i < 12; $i++) 
    	{
	        DB::table('inquires')->insert([
	            'inquireno'			=> '12092019000'+$sec1_a,
	            'receiveno'			=> '12091900311181000'+$sec1_b,
	            'name'				=> $faker->name,
	            'gender'    		=> $gender,
	            'dob'				=> $faker->date($format = 'Y-m-d', $max = 'now'),
	            'age'				=> '',
	            'address'			=> $faker->address,
	            'phno'				=> $faker->phoneNumber,
	            'email'				=> $faker->email,
	            'installmentdate'	=> '2019-09-12',
	            'installmentamount'	=> '100000',
	            'remark'			=> 'HTML,CSS little experience',
	            'position'			=> 'Junior Web Developer',
	            'camp'				=> 'No Camp',
	            'education'			=> '1',
	            'acceptedyear'		=> 2017,
	            'actionstatus'		=> 0,
	            'section_id'		=> 1,
	            'township_id'		=> $i,
	            'user_id'			=>	1,
	            'created_at' 		=> now(),
		        'updated_at'		=> now()
	        ]);

	        $sec1_a++; $sec1_b++;
        }

        for($i = 12; $i < 40; $i++) 
    	{
	        DB::table('inquires')->insert([
	            'inquireno'			=> '13092019000'+$sec1_c,
	            'receiveno'			=> '13091900311181000'+$sec1_d,
	            'name'				=> $faker->name,
	            'gender'    		=> $gender,
	            'dob'				=> $faker->date($format = 'Y-m-d', $max = 'now'),
	            'age'				=> '',
	            'address'			=> $faker->address,
	            'phno'				=> $faker->phoneNumber,
	            'email'				=> $faker->email,
	            'installmentdate'	=> '2019-09-13',
	            'installmentamount'	=> '100000',
	            'remark'			=> 'HTML,CSS little experience',
	            'position'			=> 'Junior Web Developer',
	            'camp'				=> 'No Camp',
	            'education'			=> '1',
	            'acceptedyear'		=> 2017,
	            'actionstatus'		=> 0,
	            'section_id'		=> 1,
	            'township_id'		=> 20,
	            'user_id'			=>	1,
	            'created_at' 		=> now(),
		        'updated_at'		=> now()
	        ]);

	        $sec1_c++; $sec1_d++;
        }

        for($i = 40; $i < 56; $i++) 
    	{
	        DB::table('inquires')->insert([
	            'inquireno'			=> '14092019000'+$sec1_e,
	            'receiveno'			=> '14091900311181000'+$sec1_f,
	            'name'				=> $faker->name,
	            'gender'    		=> $gender,
	            'dob'				=> $faker->date($format = 'Y-m-d', $max = 'now'),
	            'age'				=> '',
	            'address'			=> $faker->address,
	            'phno'				=> $faker->phoneNumber,
	            'email'				=> $faker->email,
	            'installmentdate'	=> '2019-09-14',
	            'installmentamount'	=> '100000',
	            'remark'			=> 'HTML,CSS little experience',
	            'position'			=> 'Junior Web Developer',
	            'camp'				=> 'No Camp',
	            'education'			=> '1',
	            'acceptedyear'		=> 2017,
	            'actionstatus'		=> 0,
	            'section_id'		=> 1,
	            'township_id'		=> $i,
	            'user_id'			=>	1,
	            'created_at' 		=> now(),
		        'updated_at'		=> now()
	        ]);

	        $sec1_e++; $sec1_f++;
        }

        // Sec:2
        $sec2_a=1; $sec2_b =1; $sec2_c=1; $sec2_d=1; $sec2_e=1; $sec2_f=1;
    	for($i = 0; $i < 5; $i++) 
    	{
	        DB::table('inquires')->insert([
	            'inquireno'			=> '19092019000'+$sec1_a,
	            'receiveno'			=> '19091900311181000'+$sec1_b,
	            'name'				=> $faker->name,
	            'gender'    		=> $gender,
	            'dob'				=> $faker->date($format = 'Y-m-d', $max = 'now'),
	            'age'				=> '',
	            'address'			=> $faker->address,
	            'phno'				=> $faker->phoneNumber,
	            'email'				=> $faker->email,
	            'installmentdate'	=> '2019-09-19',
	            'installmentamount'	=> '100000',
	            'remark'			=> 'HTML,CSS little experience',
	            'position'			=> 'Junior Web Developer',
	            'camp'				=> 'No Camp',
	            'education'			=> '1',
	            'acceptedyear'		=> 2017,
	            'actionstatus'		=> 0,
	            'section_id'		=> 2,
	            'township_id'		=> $i,
	            'user_id'			=>	1,
	            'created_at' 		=> now(),
		        'updated_at'		=> now()
	        ]);

	        $sec2_a++; $sec2_b++;
        }

        for($i = 5; $i < 40; $i++) 
    	{
	        DB::table('inquires')->insert([
	            'inquireno'			=> '20092019000'+$sec2_c,
	            'receiveno'			=> '20091900311181000'+$sec2_d,
	            'name'				=> $faker->name,
	            'gender'    		=> $gender,
	            'dob'				=> $faker->date($format = 'Y-m-d', $max = 'now'),
	            'age'				=> '',
	            'address'			=> $faker->address,
	            'phno'				=> $faker->phoneNumber,
	            'email'				=> $faker->email,
	            'installmentdate'	=> '2019-09-20',
	            'installmentamount'	=> '180000',
	            'remark'			=> 'HTML,CSS little experience',
	            'position'			=> 'Junior Web Developer',
	            'camp'				=> 'No Camp',
	            'education'			=> '1',
	            'acceptedyear'		=> 2017,
	            'actionstatus'		=> 0,
	            'section_id'		=> 2,
	            'township_id'		=> 20,
	            'user_id'			=>	1,
	            'created_at' 		=> now(),
		        'updated_at'		=> now()
	        ]);

	        $sec2_c++; $sec2_d++;
        }

        for($i = 40; $i < 56; $i++) 
    	{
	        DB::table('inquires')->insert([
	            'inquireno'			=> '23092019000'+$sec2_e,
	            'receiveno'			=> '23091900311181000'+$sec2_f,
	            'name'				=> $faker->name,
	            'gender'    		=> $gender,
	            'dob'				=> $faker->date($format = 'Y-m-d', $max = 'now'),
	            'age'				=> '',
	            'address'			=> $faker->address,
	            'phno'				=> $faker->phoneNumber,
	            'email'				=> $faker->email,
	            'installmentdate'	=> '2019-09-23',
	            'installmentamount'	=> '100000',
	            'remark'			=> 'HTML,CSS little experience',
	            'position'			=> 'Junior Web Developer',
	            'camp'				=> 'No Camp',
	            'education'			=> '1',
	            'acceptedyear'		=> 2017,
	            'actionstatus'		=> 0,
	            'section_id'		=> 2,
	            'township_id'		=> $i,
	            'user_id'			=>	1,
	            'created_at' 		=> now(),
		        'updated_at'		=> now()
	        ]);

	        $sec2_e++; $sec2_f++;
        }

        // Sec:3
        $sec3_a=1; $sec3_b =1; $sec3_c=1; $sec3_d=1; $sec3_e=1; $sec3_f=1;
        for($i = 0; $i < 15; $i++) 
    	{
	        DB::table('inquires')->insert([
	            'inquireno'			=> '12092019000'+$sec3_a,
	            'receiveno'			=> '12091900505011000'+$sec3_b,
	            'name'				=> $faker->name,
	            'gender'    		=> $gender,
	            'dob'				=> $faker->date($format = 'Y-m-d', $max = 'now'),
	            'age'				=> '',
	            'address'			=> $faker->address,
	            'phno'				=> $faker->phoneNumber,
	            'email'				=> $faker->email,
	            'installmentdate'	=> '2019-09-12',
	            'installmentamount'	=> '280000',
	            'remark'			=> 'HTML,CSS little experience',
	            'position'			=> 'Junior Web Developer',
	            'camp'				=> 'No Camp',
	            'education'			=> '1',
	            'acceptedyear'		=> 2017,
	            'actionstatus'		=> 0,
	            'section_id'		=> 3,
	            'township_id'		=> $i,
	            'user_id'			=>	1,
	            'created_at' 		=> now(),
		        'updated_at'		=> now()
	        ]);

	        $sec3_a++; $sec3_b++;
        }

        for($i = 15; $i < 46; $i++) 
    	{
	        DB::table('inquires')->insert([
	            'inquireno'			=> '25092019000'+$sec3_c,
	            'receiveno'			=> '25091900505011000'+$sec3_d,
	            'name'				=> $faker->name,
	            'gender'    		=> $gender,
	            'dob'				=> $faker->date($format = 'Y-m-d', $max = 'now'),
	            'age'				=> '',
	            'address'			=> $faker->address,
	            'phno'				=> $faker->phoneNumber,
	            'email'				=> $faker->email,
	            'installmentdate'	=> '2019-09-25',
	            'installmentamount'	=> '100000',
	            'remark'			=> 'HTML,CSS little experience',
	            'position'			=> 'Junior Web Developer',
	            'camp'				=> 'No Camp',
	            'education'			=> '1',
	            'acceptedyear'		=> 2017,
	            'actionstatus'		=> 0,
	            'section_id'		=> 3,
	            'township_id'		=> $i,
	            'user_id'			=>	1,
	            'created_at' 		=> now(),
		        'updated_at'		=> now()
	        ]);

	        $sec3_c++; $sec3_d++;
        }

        // Sec:4
        $sec4_a=1; $sec4_b =1;
    	for($i = 0; $i < 10; $i++) 
    	{
	        DB::table('inquires')->insert([
	            'inquireno'			=> '05092019000'+$sec4_a,
	            'receiveno'			=> '05091900111181000'+$sec4_b,
	            'name'				=> $faker->name,
	            'gender'    		=> $gender,
	            'dob'				=> $faker->date($format = 'Y-m-d', $max = 'now'),
	            'age'				=> '',
	            'address'			=> $faker->address,
	            'phno'				=> $faker->phoneNumber,
	            'email'				=> $faker->email,
	            'installmentdate'	=> '2019-09-05',
	            'installmentamount'	=> '40000',
	            'remark'			=> '',
	            'position'			=> 'Junior Office Staff',
	            'camp'				=> 'No Camp',
	            'education'			=> '1',
	            'acceptedyear'		=> 2017,
	            'actionstatus'		=> 0,
	            'section_id'		=> 4,
	            'township_id'		=> $i,
	            'user_id'			=>	1,
	            'created_at' 		=> now(),
		        'updated_at'		=> now()
	        ]);

	        $sec4_a++; $sec4_b++;
        }

        // Sec:5
        $sec5_a=1; $sec5_b =1;
    	for($i = 0; $i < 10; $i++) 
    	{
	        DB::table('inquires')->insert([
	            'inquireno'			=> '11092019000'+$sec5_a,
	            'receiveno'			=> '11091900111181000'+$sec5_b,
	            'name'				=> $faker->name,
	            'gender'    		=> $gender,
	            'dob'				=> $faker->date($format = 'Y-m-d', $max = 'now'),
	            'age'				=> '',
	            'address'			=> $faker->address,
	            'phno'				=> $faker->phoneNumber,
	            'email'				=> $faker->email,
	            'installmentdate'	=> '2019-09-11',
	            'installmentamount'	=> '40000',
	            'remark'			=> '',
	            'position'			=> 'Junior Office Staff',
	            'camp'				=> 'No Camp',
	            'education'			=> '1',
	            'acceptedyear'		=> 2017,
	            'actionstatus'		=> 0,
	            'section_id'		=> 4,
	            'township_id'		=> $i,
	            'user_id'			=>	1,
	            'created_at' 		=> now(),
		        'updated_at'		=> now()
	        ]);

	        $sec5_a++; $sec5_b++;
        }

        // Sec:6
        $sec6_a=1; $sec6_b =1;
    	for($i = 0; $i < 10; $i++) 
    	{
	        DB::table('inquires')->insert([
	            'inquireno'			=> '11092019000'+$sec6_a,
	            'receiveno'			=> '11091900111181000'+$sec6_b,
	            'name'				=> $faker->name,
	            'gender'    		=> $gender,
	            'dob'				=> $faker->date($format = 'Y-m-d', $max = 'now'),
	            'age'				=> '',
	            'address'			=> $faker->address,
	            'phno'				=> $faker->phoneNumber,
	            'email'				=> $faker->email,
	            'installmentdate'	=> '2019-09-11',
	            'installmentamount'	=> '40000',
	            'remark'			=> '',
	            'position'			=> 'Junior Office Staff',
	            'camp'				=> 'No Camp',
	            'education'			=> '1',
	            'acceptedyear'		=> 2017,
	            'actionstatus'		=> 0,
	            'section_id'		=> 6,
	            'township_id'		=> $i,
	            'user_id'			=>	1,
	            'created_at' 		=> now(),
		        'updated_at'		=> now()
	        ]);

	        $sec6_a++; $sec6_b++;
        }

        // Sec:7
        $sec7_a=1; $sec7_b =1;
    	for($i = 0; $i < 10; $i++) 
    	{
	        DB::table('inquires')->insert([
	            'inquireno'			=> '05092019000'+$sec7_a,
	            'receiveno'			=> '05091900111181000'+$sec7_b,
	            'name'				=> $faker->name,
	            'gender'    		=> $gender,
	            'dob'				=> $faker->date($format = 'Y-m-d', $max = 'now'),
	            'age'				=> '',
	            'address'			=> $faker->address,
	            'phno'				=> $faker->phoneNumber,
	            'email'				=> $faker->email,
	            'installmentdate'	=> '2019-09-05',
	            'installmentamount'	=> '40000',
	            'remark'			=> '',
	            'position'			=> 'Junior Office Staff',
	            'camp'				=> 'No Camp',
	            'education'			=> '1',
	            'acceptedyear'		=> 2017,
	            'actionstatus'		=> 0,
	            'section_id'		=> 7,
	            'township_id'		=> $i,
	            'user_id'			=>	1,
	            'created_at' 		=> now(),
		        'updated_at'		=> now()
	        ]);

	        $sec4_a++; $sec4_b++;
        }

        // Sec:8
        $sec8_a=1; $sec8_b =1;
    	for($i = 0; $i < 10; $i++) 
    	{
	        DB::table('inquires')->insert([
	            'inquireno'			=> '11092019000'+$sec8_a,
	            'receiveno'			=> '11091900111181000'+$sec8_b,
	            'name'				=> $faker->name,
	            'gender'    		=> $gender,
	            'dob'				=> $faker->date($format = 'Y-m-d', $max = 'now'),
	            'age'				=> '',
	            'address'			=> $faker->address,
	            'phno'				=> $faker->phoneNumber,
	            'email'				=> $faker->email,
	            'installmentdate'	=> '2019-09-11',
	            'installmentamount'	=> '40000',
	            'remark'			=> '',
	            'position'			=> 'Junior Office Staff',
	            'camp'				=> 'No Camp',
	            'education'			=> '1',
	            'acceptedyear'		=> 2017,
	            'actionstatus'		=> 0,
	            'section_id'		=> 8,
	            'township_id'		=> $i,
	            'user_id'			=>	1,
	            'created_at' 		=> now(),
		        'updated_at'		=> now()
	        ]);

	        $sec8_a++; $sec8_b++;
        }

        // Sec:9
        $sec9_a=1; $sec9_b =1;
    	for($i = 0; $i < 10; $i++) 
    	{
	        DB::table('inquires')->insert([
	            'inquireno'			=> '11092019000'+$sec9_a,
	            'receiveno'			=> '11091900111181000'+$sec9_b,
	            'name'				=> $faker->name,
	            'gender'    		=> $gender,
	            'dob'				=> $faker->date($format = 'Y-m-d', $max = 'now'),
	            'age'				=> '',
	            'address'			=> $faker->address,
	            'phno'				=> $faker->phoneNumber,
	            'email'				=> $faker->email,
	            'installmentdate'	=> '2019-09-11',
	            'installmentamount'	=> '40000',
	            'remark'			=> '',
	            'position'			=> 'Junior Office Staff',
	            'camp'				=> 'No Camp',
	            'education'			=> '1',
	            'acceptedyear'		=> 2017,
	            'actionstatus'		=> 0,
	            'section_id'		=> 9,
	            'township_id'		=> $i,
	            'user_id'			=>	1,
	            'created_at' 		=> now(),
		        'updated_at'		=> now()
	        ]);

	        $sec9_a++; $sec9_b++;
        }



        // DB::table('courses')->insert([
        //     'id'     			=> '',
        //     'inquireno'			=> '',
        //     'receiveno'			=> '',
        //     'name'				=> '',
        //     'gender'    		=> '',
        //     'dob'				=> '',
        //     'age'				=> '',
        //     'address'			=> '',
        //     'phno'				=> '',
        //     'email'				=> '',
        //     'installmentdate'	=> '',
        //     'installmentamount'	=> '',
        //     'remark'			=> '',
        //     'position'			=> '',
        //     'camp'				=> '',
        //     'education'			=> '',
        //     'acceptedyear'		=> '',
        //     'actionstatus'		=> '',
        //     'section_id'		=> '',
        //     'township_id'		=> '',
        //     'user_id'			=>	1,
        //     'created_at' 		=> now(),
	       //  'updated_at'		=> now()
        // ]);

        // DB::table('courses')->insert([
        //     'inquireno'			=> '',
        //     'receiveno'			=> '',
        //     'name'				=> '',
        //     'gender'    		=> '',
        //     'dob'				=> '',
        //     'age'				=> '',
        //     'address'			=> '',
        //     'phno'				=> '',
        //     'email'				=> '',
        //     'installmentdate'	=> '',
        //     'installmentamount'	=> '',
        //     'remark'			=> '',
        //     'position'			=> '',
        //     'camp'				=> '',
        //     'education'			=> '',
        //     'acceptedyear'		=> '',
        //     'actionstatus'		=> '',
        //     'section_id'		=> '',
        //     'township_id'		=> '',
        //     'user_id'			=>	1,
        //     'created_at' 		=> now(),
	       //  'updated_at'		=> now()
        // ]);

        // DB::table('courses')->insert([
        //     'inquireno'			=> '',
        //     'receiveno'			=> '',
        //     'name'				=> '',
        //     'gender'    		=> '',
        //     'dob'				=> '',
        //     'age'				=> '',
        //     'address'			=> '',
        //     'phno'				=> '',
        //     'email'				=> '',
        //     'installmentdate'	=> '',
        //     'installmentamount'	=> '',
        //     'remark'			=> '',
        //     'position'			=> '',
        //     'camp'				=> '',
        //     'education'			=> '',
        //     'acceptedyear'		=> '',
        //     'actionstatus'		=> '',
        //     'section_id'		=> '',
        //     'township_id'		=> '',
        //     'user_id'			=>	1,
        //     'created_at' 		=> now(),
	       //  'updated_at'		=> now()
        // ]);

    }
}
