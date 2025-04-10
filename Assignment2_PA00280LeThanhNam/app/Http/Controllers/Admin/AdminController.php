<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use App\Models\User;
use App\Models\Post;
use App\Models\Comment;
use App\Models\Category;

class AdminController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth'); // Yêu cầu đăng nhập
    }

    // Dashboard admin
    public function adminDashboard()
    {
        // Kiểm tra vai trò
        if (Auth::user()->role !== 'admin') {
            Auth::logout();
            return redirect()->route('login')->with('error', 'Vui lòng đăng nhập bằng tài khoản quản trị viên.');
        }

        // Tổng quan
        $totalUsers = User::count();
        $totalPosts = Post::count();
        $totalComments = Comment::count();
        $totalCategories = Category::count();

        // Bài viết xem nhiều (giả sử bảng posts có cột views)
        $topPosts = Post::orderBy('views', 'desc')
            ->take(5)
            ->get();

        // Bình luận gần đây
        $recentComments = Comment::with(['user', 'post'])
            ->latest()
            ->take(5)
            ->get();

        // Loại tin phổ biến (số lượng bài viết theo loại tin)
        $popularCategories = Category::select('categories.id', 'categories.name')
            ->leftJoin('posts', 'categories.id', '=', 'posts.category_id')
            ->groupBy('categories.id', 'categories.name')
            ->orderByRaw('COUNT(posts.id) DESC')
            ->take(5)
            ->get()
            ->map(function ($category) {
                $category->post_count = Post::where('category_id', $category->id)->count();
                return $category;
            });

        return view('admin.dashboard', compact(
            'totalUsers',
            'totalPosts',
            'totalComments',
            'totalCategories',
            'topPosts',
            'recentComments',
            'popularCategories'
        ));
    }
}