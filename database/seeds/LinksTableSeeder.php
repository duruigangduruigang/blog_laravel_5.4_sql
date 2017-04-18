<?php

use Illuminate\Database\Seeder;

class LinksTableSeeder extends Seeder
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
                  'link_name' => 'php基地',
                  'link_title' => '让你每天发现都不一样的自己',
                  'link_url' => 'http://ggnhs.online',
                  'link_order' => 1,
              ],
                [
                    'link_name' => '基地',
                    'link_title' => '让你每天发现都不一样的自己',
                    'link_url' => 'http://ggnhs.online',
                    'link_order' => 2,
                ]
        ];
        DB::table('links')->insert($data);
    }
}
