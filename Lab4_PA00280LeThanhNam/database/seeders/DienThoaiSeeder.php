<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Str;

class DienThoaiSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $brands = ['Oppo XA', 'iPhone XS Max', 'Nokia Pro'];
        
        for ($i = 0; $i < 300; $i++) {
            $brand = $brands[array_rand($brands)];
            $gia = match ($brand) {
                'Oppo XA' => rand(700000, 1000000),
                'iPhone XS Max' => rand(500000, 800000),
                'Nokia Pro' => rand(250000, 500000),
            };

            DB::table('dienthoai')->insert([
                'tenDT' => $brand . ' ' . Str::random(5),
                'moTa' => 'Mô tả sản phẩm ' . $brand,
                'ngayCapNhat' => now(),
                'gia' => $gia,
                'giaKM' => rand(0, $gia - 100000),
                'urlHinh' => 'no-image.jpg',
                'soLuongTonKho' => rand(10, 100),
                'hot' => rand(0, 1),
                'anHien' => rand(0, 1),
                'baiViet' => 'Chi tiết bài viết sản phẩm ' . $brand,
                'ghiChu' => 'Ghi chú ' . $brand,
                'idLoai' => rand(1, 3),
            ]);
        }
    }
}
