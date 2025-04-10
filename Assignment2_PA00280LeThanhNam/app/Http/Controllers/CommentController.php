<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;

class CommentController extends Controller
{
    public function store(Request $request, $postId)
    {
        $request->validate([
            'content' => 'required|min:3'
        ]);

        DB::table('comments')->insert([
            'content' => $request->content,
            'user_id' => Auth::id(),
            'post_id' => $postId,
            'created_at' => now(),
            'updated_at' => now()
        ]);

        return back()->with('success', 'Đã thêm bình luận');
    }
}


