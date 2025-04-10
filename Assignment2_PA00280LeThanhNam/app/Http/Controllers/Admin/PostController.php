<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Support\Facades\Auth;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Post;
use App\Models\Category;
use Illuminate\Support\Str;
use Illuminate\Support\Facades\Log;

class PostController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth');
    }

    // Hiển thị danh sách bài viết
    public function index(Request $request)
    {
        if (Auth::user()->role !== 'admin') {
            Auth::logout();
            return redirect()->route('login')->with('error', 'Vui lòng đăng nhập bằng tài khoản quản trị viên.');
        }
        $search = $request->query('search');
        
        $posts = Post::with('category')
            ->when($search, function ($query, $search) {
                return $query->where('title', 'like', "%{$search}%")
                            ->orWhere('description', 'like', "%{$search}%");
            })
            ->orderBy('id', 'desc')
            ->paginate(10);

        return view('admin.posts.index', compact('posts', 'search'));
    }

    // Hiển thị form thêm mới
    public function create()
    {
        $categories = Category::all();
        return view('admin.posts.create', compact('categories'));
    }

    // Xử lý thêm mới
    public function store(Request $request)
    {
        $request->validate([
            'title' => 'required|string|max:255',
            'description' => 'required|string',
            'content' => 'required',
            'category_id' => 'required|exists:categories,id',
            'image' => 'nullable|image|max:2048',
        ]);

        $data = $request->all();
        $data['slug'] = Str::slug($request->title);

        if ($request->hasFile('image')) {
            // Lưu hình ảnh vào public/image
            $image = $request->file('image');
            $imageName = time() . '_' . $image->getClientOriginalName();
            $image->move(public_path('image'), $imageName);
            $data['image'] = $imageName; // Chỉ lưu tên file vào database
        }

        Post::create($data);

        return redirect()->route('admin.posts')
            ->with('success', 'Thêm bài viết thành công');
    }

    // Hiển thị form chỉnh sửa
    public function edit($id)
    {
        $post = Post::findOrFail($id);
        $categories = Category::all();
        return view('admin.posts.edit', compact('post', 'categories'));
    }

    // Xử lý cập nhật
    public function update(Request $request, $id)
    {
        $post = Post::findOrFail($id);

        $request->validate([
            'title' => 'required|string|max:255',
            'description' => 'required|string',
            'content' => 'required',
            'category_id' => 'required|exists:categories,id',
            'image' => 'nullable|image|max:2048',
        ]);

        $data = $request->all();
        $data['slug'] = Str::slug($request->title);

        if ($request->hasFile('image')) {
            // Xóa hình ảnh cũ nếu có
            if ($post->image && file_exists(public_path('image/' . $post->image))) {
                try {
                    unlink(public_path('image/' . $post->image));
                } catch (\Exception $e) {
                    // Ghi log lỗi nếu cần
                    Log::error('Không thể xóa hình ảnh cũ: ' . $e->getMessage());
                }
            }

            // Lưu hình ảnh mới vào public/image
            $image = $request->file('image');
            $imageName = time() . '_' . $image->getClientOriginalName();
            $image->move(public_path('image'), $imageName);
            $data['image'] = $imageName; // Chỉ lưu tên file vào database
        }

        $post->update($data);

        return redirect()->route('admin.posts')
            ->with('success', 'Cập nhật bài viết thành công');
    }

    // Xử lý xóa
    public function destroy($id)
    {
        $post = Post::findOrFail($id);

        // Xóa hình ảnh nếu có
        if ($post->image && file_exists(public_path('image/' . $post->image))) {
            try {
                unlink(public_path('image/' . $post->image));
            } catch (\Exception $e) {
                // Ghi log lỗi nếu cần
                Log::error('Không thể xóa hình ảnh: ' . $e->getMessage());
                // Có thể thêm thông báo lỗi nếu muốn
                return redirect()->route('admin.posts')
                    ->with('error', 'Xóa bài viết thành công, nhưng không thể xóa hình ảnh liên quan.');
            }
        }

        // Xóa bài viết
        $post->delete();

        return redirect()->route('admin.posts')
            ->with('success', 'Xóa bài viết thành công');
    }
}