<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class HomeController extends Controller
{
    public function index()
    {
        
        // Tin nổi bật (có thể dùng ở các chỗ khác sau này)
        $highlighted = DB::table('posts')
            ->orderBy('views', 'desc')
            ->limit(6)
            ->get();

        // Tin mới: load tất cả, tách 1 tin đầu & các tin nhỏ bên view
        $latest = DB::table('posts')
            ->orderBy('created_at', 'desc')
            ->limit(7)
            ->get();

        // Tin xem nhiều bên phải
        $popular = DB::table('posts')
            ->orderBy('views', 'desc')
            ->limit(10)
            ->get();

        // Danh mục
        $categories = DB::table('categories')->get();

        return view('home', compact('highlighted', 'latest', 'popular', 'categories'));
    }
}
