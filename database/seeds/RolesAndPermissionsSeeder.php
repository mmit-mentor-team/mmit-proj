<?php

use Illuminate\Database\Seeder;
use Spatie\Permission\Models\Role;
use Spatie\Permission\Models\Permission;

class RolesAndPermissionsSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        Permission::create(['name' => 'Schedule Timetable']);
        Permission::create(['name' => 'Accept Student Inquiry']);
        Permission::create(['name' => 'Enroll Student']);
        Permission::create(['name' => 'Took Attendance']);
        Permission::create(['name' => 'Find Jobs']);
        Permission::create(['name' => 'Record Expense']);

        Role::create(['name' => 'Boss'])->givePermissionTo(Permission::all());
        Role::create(['name' => 'Senior Consultant']);
        Role::create(['name' => 'Junior Consultant']);
        Role::create(['name' => 'Teacher']);
        Role::create(['name' => 'Mentor']);
        Role::create(['name' => 'Admin Assistant']);
    }
}
