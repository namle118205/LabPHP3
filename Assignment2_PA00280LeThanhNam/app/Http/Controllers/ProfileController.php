<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\DB;
use Illuminate\Routing\Controller as BaseController;

class ProfileController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth'); // Yêu cầu đăng nhập
    }

    // Hiển thị profile
    public function show()
    {
        $user = Auth::user();
        return view('profile.show', compact('user'));
    }

    // Hiển thị form chỉnh sửa profile
    public function edit()
    {
        $user = Auth::user();
        return view('profile.edit', compact('user'));
    }

    // Cập nhật profile
    public function update(Request $request)
    {
        $user = Auth::user();

        $request->validate([
            'name' => 'required|string|max:255',
            'email' => 'required|email|unique:users,email,' . $user->id,
            'password' => 'nullable|confirmed|min:6',
        ]);

        $data = [
            'name' => $request->name,
            'email' => $request->email,
            'updated_at' => now()
        ];

        if ($request->password) {
            $data['password'] = Hash::make($request->password);
        }

        DB::table('users')->where('id', $user->id)->update($data);

        return redirect()->route('profile.show')->with('success', 'Cập nhật thông tin thành công');
    }

    // Dashboard admin
    public function adminDashboard()
    {
        if (Auth::user()->role !== 'admin') {
            return redirect()->route('home')->with('error', 'Bạn không có quyền truy cập');
        }
        // Logic cho dashboard admin
        $users = DB::table('users')->get();
        return view('admin.dashboard', compact('users'));
    }
}