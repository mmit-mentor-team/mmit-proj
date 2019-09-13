<?php

use Illuminate\Database\Seeder;

class PositionsTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        //HR
        DB::table('positions')->insert([
            'name' => 'HR',
            'user_id'   =>  '1',
            'created_at' => now(),
	        'updated_at' => now()
        ]);

        //Admin
        DB::table('positions')->insert([
            'name' => 'Admin',
            'user_id'   =>  '1',
            'created_at' => now(),
	        'updated_at' => now()
        ]);

        //Office Staff
        DB::table('positions')->insert([
            'name' => 'Office Staff',
            'user_id'   =>  '1',
            'created_at' => now(),
	        'updated_at' => now()
        ]);

        //Sale Admin
        DB::table('positions')->insert([
            'name' => 'Sale Admin',
            'user_id'   =>  '1',
            'created_at' => now(),
	        'updated_at' => now()
        ]);

        //Resception
        DB::table('positions')->insert([
            'name' => 'Resception',
            'user_id'   =>  '1',
            'created_at' => now(),
	        'updated_at' => now()
        ]);

        //Data Entry
        DB::table('positions')->insert([
            'name' => 'Data Entry',
            'user_id'   =>  '1',
            'created_at' => now(),
	        'updated_at' => now()
        ]);
    }
}
