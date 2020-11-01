<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class UserTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $data = [
            [
                'name' => 'AnhTai',
                'username' => 'phananhtai1',
                'email' => 'phananhtai868@gmail.com',
                'password' => bcrypt('123456'),
                'phone' => "0348668653",
                'level' => 1
            ],
            [
                'name' => 'PhanAnh',
                'username' => 'admin1',
                'email' => 'admin@gmail.com',
                'password' => bcrypt('123456'),
                'phone' => "0348668653",
                'level' => 1
            ],
        ];

        DB::table('tbl_users')->insert($data);
    }
}
