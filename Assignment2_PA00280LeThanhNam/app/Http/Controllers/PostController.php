<?php

// PostController.php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class PostController extends Controller
{
    public function show($id)
    {
        // Lấy thông tin danh mục
        $category = DB::table('categories')->where('id', $id)->first();

        // Lấy danh sách tin theo danh mục
        $posts = DB::table('posts')
                    ->where('category_id', $id)
                    ->orderBy('created_at', 'desc')
                    ->paginate(10);

        return view('post.show', compact('category', 'posts'));
    }


    public function detail($id)
    {
        $post = DB::table('posts')->where('id', $id)->first();

        // Tăng view
        DB::table('posts')->where('id', $id)->increment('views');
    
        // Lấy comment và join với users
        $comments = DB::table('comments')
            ->join('users', 'comments.user_id', '=', 'users.id')
            ->where('comments.post_id', $id)
            ->select('comments.*', 'users.name as user_name')
            ->orderBy('comments.created_at', 'desc')
            ->get();
    
        return view('post.detail', compact('post', 'comments'));
    }

    public function search(Request $request)
    {
        $query = $request->input('keyword');

        // Dùng Query Builder để tìm kiếm
        $posts = DB::table('posts')
                ->where('title', 'like', '%'.$query.'%')
                ->orWhere('description', 'like', '%'.$query.'%')
                ->get();

        return view('search', compact('posts', 'query'));
    }
}



