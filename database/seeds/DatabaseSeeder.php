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
        // $this->call(PermissionTableSeeder::class);
        // $this->call(UsersTableSeeder::class);
        $this->call(CitiesTableSeeder::class);
        $this->call(TownshipsTableSeeder::class);
        $this->call(PositionsTableSeeder::class);
        $this->call(LocationsTableSeeder::class);
        $this->call(CourseTableSeeder::class);
        $this->call(DurationsTableSeeder::class);
        $this->call(RolesTableSeeder::class);
        // $this->call(PermissionsTableSeeder::class);

    }
}
