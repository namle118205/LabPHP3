@extends('layouts.app')

@section('content')
<div class="max-w-md mx-auto mt-10 p-6 bg-white rounded shadow">
    <h2 class="text-xl font-bold mb-4">Đặt lại mật khẩu</h2>
    @if(session('error')) <p class="text-red-500">{{ session('error') }}</p> @endif

    <form method="POST" action="{{ route('reset.submit') }}">
        @csrf
        <input type="hidden" name="token" value="{{ $token }}">
        <div class="mb-4">
            <label>Email</label>
            <input type="email" name="email" class="w-full border rounded p-2" required>
        </div>
        <div class="mb-4">
            <label>Mật khẩu mới</label>
            <input type="password" name="password" class="w-full border rounded p-2" required>
        </div>
        <div class="mb-4">
            <label>Xác nhận mật khẩu</label>
            <input type="password" name="password_confirmation" class="w-full border rounded p-2" required>
        </div>
        <button type="submit" class="bg-green-500 text-white px-4 py-2 rounded">Đặt lại mật khẩu</button>
    </form>
</div>
@endsection
