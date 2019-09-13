<?php

use Illuminate\Database\Seeder;
use Spatie\Permission\Models\Permission;

class PermissionTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
      app()[\Spatie\Permission\PermissionRegistrar::class]->forgetCachedPermissions();
        //

      Permission::create(['name' => 'ediAccept Student Enquiry ( PHP Bootcamp - YGN )t']);
      Permission::create(['name' => ' 
Accept Student Enquiry ( HR - YGN )']);
      Permission::create(['name' => 'Accept Student Enquiry ( HR - MDY )']);
      Permission::create(['name' => 'Accept Student Enquiry ( iOS - YGN )']);
      Permission::create(['name' => 'Enroll Student ( PHP Bootcamp - YGN )']);
      Permission::create(['name' => 'Enroll Student ( HR - YGN )']);
      Permission::create(['name' => 'Enroll Student ( HR - MDY )']);
      Permission::create(['name' => 'Enroll Student ( iOS - YGN )']);
      Permission::create(['name' => 'Schedule Timetable']);
      Permission::create(['name' => 'Receive Course Fees']);
      Permission::create(['name' => 'Find HR Jobs']);
      Permission::create(['name' => 'Find PHP Jobs']);
      Permission::create(['name' => 'Record Expense']);
      Permission::create(['name' => 'Took Attendance']);


    }
}
