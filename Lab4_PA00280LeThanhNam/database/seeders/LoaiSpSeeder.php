<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class LoaiSpSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        DB::table('loaisp')->insert([
            ['tenLoai' => 'Điện thoại', 'thuTu' => 1, 'anHien' => 1, 'urlHinh' => 'dienthoai.jpg'],
            ['tenLoai' => 'Máy tính bảng', 'thuTu' => 2, 'anHien' => 1, 'urlHinh' => 'maytinhbang.jpg'],
            ['tenLoai' => 'Phụ kiện', 'thuTu' => 3, 'anHien' => 1, 'urlHinh' => 'phukien.jpg'],
        ]);
    }
}
