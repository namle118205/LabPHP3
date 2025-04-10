<?php

namespace App\Http\Controllers\Auth;

use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Mail;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Str;
use App\Models\User;

class ForgotPasswordController extends Controller
{
    // Hiển thị form quên mật khẩu
    public function showForgotForm()
    {
        return view('auth.forgot-password');
    }

    // Xử lý gửi email đặt lại mật khẩu
    public function sendResetLink(Request $request)
    {
        $request->validate([
            'email' => 'required|email|exists:users,email'
        ]);

        $token = Str::random(64);
        DB::table('password_reset_tokens')->updateOrInsert(
            ['email' => $request->email],
            ['token' => $token, 'created_at' => now()]
        );

        // Gửi email
        Mail::send('emails.reset-password', ['token' => $token], function ($message) use ($request) {
            $message->to($request->email)->subject('Đặt lại mật khẩu');
        });

        return back()->with('success', 'Vui lòng kiểm tra email để đặt lại mật khẩu.');
    }

    // Hiển thị form nhập mật khẩu mới
    public function resetForm($token)
    {
        return view('auth.reset-password', ['token' => $token]);
    }

    // Cập nhật mật khẩu mới
    public function resetPassword(Request $request)
    {
        $request->validate([
            'email' => 'required|email|exists:users,email',
            'password' => 'required|min:6|confirmed',
            'token' => 'required'
        ]);

        $resetData = DB::table('password_reset_tokens')->where('email', $request->email)->where('token', $request->token)->first();

        if (!$resetData) {
            return back()->with('error', 'Token không hợp lệ.');
        }

        User::where('email', $request->email)->update(['password' => Hash::make($request->password)]);
        DB::table('password_reset_tokens')->where('email', $request->email)->delete();

        return redirect()->route('login')->with('success', 'Mật khẩu đã được đặt lại.');
    }
}
