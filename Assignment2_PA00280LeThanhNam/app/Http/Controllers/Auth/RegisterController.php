<?php

namespace App\Http\Controllers\Auth;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Str;
use Illuminate\Support\Facades\Mail;

class RegisterController extends Controller
{
    public function show()
    {
        return view('auth.register');
    }

    public function register(Request $request)
{
    $request->validate([
        'name' => 'required|string|max:255',
        'email' => 'required|email|unique:users,email',
        'password' => 'required|confirmed|min:6',
    ], [
        'email.unique' => 'Email đã được sử dụng. Vui lòng chọn email khác.',
        'password.confirmed' => 'Mật khẩu xác nhận không khớp.',
        'password.min' => 'Mật khẩu phải có ít nhất 6 ký tự.',
    ]);

    DB::table('users')->insert([
        'name' => $request->name,
        'email' => $request->email,
        'password' => Hash::make($request->password),
        'role' => 'client', // Thêm role mặc định là client
        'is_active' => true,
        'activation_token' => null,
        'created_at' => now(),
        'updated_at' => now()
    ]);

    return redirect()->route('login')->with('success', 'Đăng ký thành công. Hãy kiểm tra email để kích hoạt tài khoản.');
}


    public function activate($token)
    {
        $user = DB::table('users')->where('activation_token', $token)->first();
        if (!$user) {
            return redirect()->route('login')->with('error', 'Token không hợp lệ');
        }

        DB::table('users')->where('id', $user->id)->update([
            'is_active' => true,
            'activation_token' => null,
            'updated_at' => now()
        ]);

        return redirect()->route('login')->with('success', 'Kích hoạt thành công, hãy đăng nhập');
    }
}
