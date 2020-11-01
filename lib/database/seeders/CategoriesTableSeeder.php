<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Str;

class CategoriesTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        //
        $data = [
            [
                'cat_name' =>'iPhone',
                'cat_slug' => Str::slug('iPhone')
            ],
            [
                'cat_name' =>'Samsung',
                'cat_slug' => Str::slug('Samsung')
            ],
        ];
        DB::table('tbl_categories')->insert($data);
    }
}
