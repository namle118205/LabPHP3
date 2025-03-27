<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Str;

class ThanhVienSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $ho = ['Nguyễn', 'Trần', 'Lê', 'Phạm', 'Hoàng'];
        $tenDem = ['Văn', 'Thị', 'Hữu', 'Minh', 'Quang'];
        $ten = ['Hưng', 'Linh', 'Duy', 'Hải', 'Anh'];

        for ($i = 0; $i < 100; $i++) {
            $hoTen = $ho[array_rand($ho)] . ' ' . $tenDem[array_rand($tenDem)] . ' ' . $ten[array_rand($ten)];
            $email = Str::random(8) . '@gmail.com';

            DB::table('thanhvien')->insert([
                'hoTen' => $hoTen,
                'password' => Hash::make('hehe'),
                'email' => $email,
                'randomKey' => Str::random(10),
                'active' => rand(0, 1),
                'idGroup' => rand(0, 1),
            ]);
        }
    }
}
