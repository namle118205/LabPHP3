@extends('layouts.app')

@section('content')
<div class="max-w-md mx-auto mt-10 p-6 bg-white rounded shadow">
    <h2 class="text-xl font-bold mb-4">Đăng nhập</h2>
    @if(session('error')) <p class="text-red-500">{{ session('error') }}</p> @endif
    @if(session('success')) <p class="text-green-500">{{ session('success') }}</p> @endif
    <form method="POST" action="{{ route('login') }}">
        @csrf
        <div class="mb-4">
            <label>Email</label>
            <input type="email" name="email" class="w-full border rounded p-2" required>
        </div>
        <div class="mb-4">
            <label>Mật khẩu</label>
            <input type="password" name="password" class="w-full border rounded p-2" required>
        </div>
        <button type="submit" class="bg-blue-500 text-white px-4 py-2 rounded">Đăng nhập</button>
        <p class="mt-4"><a href="{{ route('forgot.form') }}" class="text-blue-600">Quên mật khẩu?</a></p>
    </form>
</div>
@endsection
