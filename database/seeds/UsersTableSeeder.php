<?php

use Illuminate\Database\Seeder;

class UsersTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        //Yin Min Ei
        DB::table('users')->insert([
            'name'       => 'Yin Min Ei',
            'email'      => 'yinmim.mic@gmail.com',
            'role_id'    => 2,
            'password'   => Hash::make('123456789'),
            'created_at' => now(),
            'updated_at' => now()
        ]);

        // //Yin Min Ei
        // DB::table('users')->insert([
        //     'name' 		 => 'Yin Min Ei',
        //     'email'		 =>	'yinmiei@gmail.com',
        //     'password'	 => Hash::make('123456789'),
        //     'created_at' => now(),
	       //  'updated_at' => now()
        // ]);

        // //Aye Chan Khin
        // DB::table('users')->insert([
        //     'name' 		 => 'Aye Chan Khin',
        //     'email'		 =>	'ayechankhin@gmail.com',
        //     'password'	 => Hash::make('123456789'),
        //     'created_at' => now(),
	       //  'updated_at' => now()
        // ]);

        // //Ei Mar Win
        // DB::table('users')->insert([
        //     'name' 		 => 'Ei Mar Win',
        //     'email'		 =>	'eimarwin@gmail.com',
        //     'password'	 => Hash::make('123456789'),
        //     'created_at' => now(),
	       //  'updated_at' => now()
        // ]);

        // //Htet Htet Wai
        // DB::table('users')->insert([
        //     'name' 		 => 'Htet Htet Wai',
        //     'email'		 =>	'htethtetwai@gmail.com',
        //     'password'	 => Hash::make('123456789'),
        //     'created_at' => now(),
	       //  'updated_at' => now()
        // ]);

        // //Naing Zaw
        // DB::table('users')->insert([
        //     'name' 		 => 'Naing Zaw',
        //     'email'		 =>	'naingzaw@gmail.com',
        //     'password'	 => Hash::make('123456789'),
        //     'created_at' => now(),
	       //  'updated_at' => now()
        // ]);

        // //Khin Mar Myint
        // DB::table('users')->insert([
        //     'name' 		 => 'Khin Mar Myint',
        //     'email'		 =>	'khinmarmyint@gmail.com',
        //     'password'	 => Hash::make('123456789'),
        //     'created_at' => now(),
	       //  'updated_at' => now()
        // ]);

        // //Thiri Tone
        // DB::table('users')->insert([
        //     'name' 		 => 'Thiri Tone',
        //     'email'		 =>	'thiritone@gmail.com',
        //     'password'	 => Hash::make('123456789'),
        //     'created_at' => now(),
	       //  'updated_at' => now()
        // ]);

        // //Khin Moet Moet Naing
        // DB::table('users')->insert([
        //     'name' 		 => 'Khin Moet Moet Naing',
        //     'email'		 =>	'khinmoetmoetnaing@gmail.com',
        //     'password'	 => Hash::make('123456789'),
        //     'created_at' => now(),
	       //  'updated_at' => now()
        // ]);

        // //Daw Phyu Phyu Khaing Aye
        // DB::table('users')->insert([
        //     'name' 		 => 'Daw Phyu Phyu Khaing Aye',
        //     'email'		 =>	'phyuphyukhaingaye@gmail.com',
        //     'password'	 => Hash::make('123456789'),
        //     'created_at' => now(),
	       //  'updated_at' => now()
        // ]);

        // //Daw Thuzar
        // DB::table('users')->insert([
        //     'name' 		 => 'Daw Thuzar',
        //     'email'		 =>	'thuzar@gmail.com',
        //     'password'	 => Hash::make('123456789'),
        //     'created_at' => now(),
	       //  'updated_at' => now()
        // ]);

        // //Daw Pyae Phyo Khaing
        // DB::table('users')->insert([
        //     'name' 		 => 'Daw Pyae Phyo Khaing',
        //     'email'		 =>	'pyaephyokhaing@gmail.com',
        //     'password'	 => Hash::make('123456789'),
        //     'created_at' => now(),
	       //  'updated_at' => now()
        // ]);

        // //Daw July Oo
        // DB::table('users')->insert([
        //     'name' 		 => 'Daw July Oo',
        //     'email'		 =>	'julyoo@gmail.com',
        //     'password'	 => Hash::make('123456789'),
        //     'created_at' => now(),
	       //  'updated_at' => now()
        // ]);

        // //Daw Thi Dar
        // DB::table('users')->insert([
        //     'name' 		 => 'Daw Thi Dar',
        //     'email'		 =>	'thidar@gmail.com',
        //     'password'	 => Hash::make('123456789'),
        //     'created_at' => now(),
	       //  'updated_at' => now()
        // ]);

        // //Min Aung Hein
        // DB::table('users')->insert([
        //     'name' 		 => 'Min Aung Hein',
        //     'email'		 =>	'minaunghein@gmail.com',
        //     'password'	 => Hash::make('123456789'),
        //     'created_at' => now(),
	       //  'updated_at' => now()
        // ]);

        // //Thet Paing Htut
        // DB::table('users')->insert([
        //     'name' 		 => 'Thet Paing Htut',
        //     'email'		 =>	'thetpainghtut@gmail.com',
        //     'password'	 => Hash::make('123456789'),
        //     'created_at' => now(),
	       //  'updated_at' => now()
        // ]);

        // //Ya Thaw Myat Noe
        // DB::table('users')->insert([
        //     'name' 		 => 'Ya Thaw Myat Noe',
        //     'email'		 =>	'yathawmyatnoe@gmail.com',
        //     'password'	 => Hash::make('123456789'),
        //     'created_at' => now(),
	       //  'updated_at' => now()
        // ]);

        // //Hein Min Htet
        // DB::table('users')->insert([
        //     'name' 		 => 'Hein Min Htet',
        //     'email'		 =>	'heinminhtet@gmail.com',
        //     'password'	 => Hash::make('123456789'),
        //     'created_at' => now(),
	       //  'updated_at' => now()
        // ]);

        // //Chan Ei Hmwe
        // DB::table('users')->insert([
        //     'name' 		 => 'Chan Ei Hmwe',
        //     'email'		 =>	'chaneihmwe@gmail.com',
        //     'password'	 => Hash::make('123456789'),
        //     'created_at' => now(),
	       //  'updated_at' => now()
        // ]);

        // //Aye Lwin Soe
        // DB::table('users')->insert([
        //     'name' 		 => 'Aye Lwin Soe',
        //     'email'		 =>	'ayelwinsoe@gmail.com',
        //     'password'	 => Hash::make('123456789'),
        //     'created_at' => now(),
	       //  'updated_at' => now()
        // ]);
    }
}
