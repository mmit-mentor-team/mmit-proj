<?php

use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        $this->call(RolesAndPermissionsSeeder::class);
        $this->call(CitiesTableSeeder::class);
        $this->call(TownshipsTableSeeder::class);
        $this->call(PositionsTableSeeder::class);
        $this->call(LocationsTableSeeder::class);
        
        $this->call(CourseTableSeeder::class);    
        $this->call(DurationsTableSeeder::class);
        $this->call(SectionsTableSeeder::class);
        $this->call(SectionTeacherTableSeeder::class);

        $this->call(InquireSeeder::class);
        $this->call(StudentsTableSeeder::class);

        $this->call(UsersTableSeeder::class);
    }
}
