<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Support\Facades\Auth;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Category;

class CategoryController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth');
    }

    // Hiển thị danh sách loại tin
    public function index(Request $request)
    {
        if (Auth::user()->role !== 'admin') {
            Auth::logout();
            return redirect()->route('login')->with('error', 'Vui lòng đăng nhập bằng tài khoản quản trị viên.');
        }
        $search = $request->query('search');
        
        $categories = Category::when($search, function ($query, $search) {
            return $query->where('name', 'like', "%{$search}%");
        })
        ->orderBy('id', 'desc')
        ->paginate(10);

        return view('admin.categories.index', compact('categories', 'search'));
    }

    // Hiển thị form thêm mới
    public function create()
    {
        return view('admin.categories.create');
    }

    // Xử lý thêm mới
    public function store(Request $request)
    {
        $request->validate([
            'name' => 'required|string|max:255|unique:categories',
        ]);

        Category::create([
            'name' => $request->name,
        ]);

        return redirect()->route('admin.categories')
            ->with('success', 'Thêm loại tin thành công');
    }

    // Hiển thị form chỉnh sửa
    public function edit($id)
    {
        $category = Category::findOrFail($id);
        return view('admin.categories.edit', compact('category'));
    }

    // Xử lý cập nhật
    public function update(Request $request, $id)
    {
        $category = Category::findOrFail($id);

        $request->validate([
            'name' => 'required|string|max:255|unique:categories,name,' . $id,
        ]);

        $category->update([
            'name' => $request->name,
        ]);

        return redirect()->route('admin.categories')
            ->with('success', 'Cập nhật loại tin thành công');
    }

    // Xử lý xóa
    public function destroy($id)
    {
        $category = Category::findOrFail($id);
        $category->delete();

        return redirect()->route('admin.categories')
            ->with('success', 'Xóa loại tin thành công');
    }
}