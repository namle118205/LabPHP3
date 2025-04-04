<?php

namespace Database\Seeders;

use App\Models\User;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB; // Thêm facade DB

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     */
    public function run(): void
    {
        
        // User::factory(10)->create();

        
        DB::table('users')->insert([
            'name' => 'Vui Tung Phút Giây',
            'email' => 'vuiqua@gmail.com',
            'password' => bcrypt('hehe'),
            'idgroup' => 1,
            'diachi' => 'TPHCM'
        ]);
        DB::table('users')->insert([
            'name' => 'Buồn Tung Phút Giây',
            'email' => 'buonqua@gmail.com',
            'password' => bcrypt('huhu'),
            'idgroup' => 1,
            'diachi' => 'TPHCM'
        ]);
        DB::table('users')->insert([
            'name' => 'Nguyen Thi Gia Hu',
            'email' => 'giahug@gmail.com',
            'password' => bcrypt('hihi'),
            'idgroup' => 0,
            'diachi' => 'HN'
        ]);

        // Tạo một user cụ thể bằng factory
        User::factory()->create([
            'name' => 'Test User',
            'email' => 'test@example.com',
        ]);
    }
}
