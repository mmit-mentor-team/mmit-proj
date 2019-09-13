<?php

use Illuminate\Database\Seeder;
use Spatie\Permission\Models\Role;

class RolesTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        Role::create(['name' => 'Boss']);
        Role::create(['name' => 'Senior Consultant']);
        Role::create(['name' => 'Junior Consultant']);
        Role::create(['name' => 'Teacher']);
        Role::create(['name' => 'Mentor']);
        Role::create(['name' => 'Admin Assistant']);

    }
}
