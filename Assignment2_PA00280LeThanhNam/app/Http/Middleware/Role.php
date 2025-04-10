<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Symfony\Component\HttpFoundation\Response;

class Role
{
    public function handle(Request $request, Closure $next, string $role): Response
    {
        if (!Auth::check() || Auth::user()->role !== $role) {
            // Nếu không đăng nhập hoặc không có vai trò phù hợp, chuyển hướng về trang profile
            return redirect()->route('profile.show')->with('error', 'Bạn không có quyền truy cập trang này.');
        }

        return $next($request);
    }
}