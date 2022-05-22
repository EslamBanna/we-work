<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class ContactInfo extends Seeder
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
                "key_ar" => 'الهاتف',
                "key_en" => 'phone',
                "value" => '01012703464'
            ],
            [
                "key_ar" => 'الفاكس',
                "key_en" => 'fax',
                "value" => '01012703464'
            ],
            [
                "key_ar" => 'البريد الإلكتروني',
                "key_en" => 'email',
                "value" => 'we-work@gmail.com'
            ],
            [
                "key_ar" => 'رسائل نصية',
                "key_en" => 'text messages',
                "value" => '546456'
            ],
            [
                "key_ar" => 'صندوق البريد',
                "key_en" => 'mail box',
                "value" => '1325645'
            ],
            [
                "key_ar" => 'الرمز البريدي',
                "key_en" => 'Postal code',
                "value" => '1325645'
            ],
        ];
        DB::table('contact_infos')->insert($data);
    }
}
