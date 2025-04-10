@extends('layouts.app')

@section('content')
<div class="max-w-md mx-auto mt-10 p-6 bg-white rounded shadow">
    <h2 class="text-xl font-bold mb-4">Đăng ký</h2>

    @if ($errors->any())
        <div class="bg-red-100 text-red-700 p-4 rounded mb-4">
            <ul>
                @foreach ($errors->all() as $error)
                    <li>{{ $error }}</li>
                @endforeach
            </ul>
        </div>
    @endif

    <form method="POST" action="{{ route('register.form') }}">
        @csrf
        <div class="mb-4">
            <label>Họ tên</label>
            <input type="text" name="name" class="w-full border rounded p-2" value="{{ old('name') }}" required>
        </div>
        <div class="mb-4">
            <label>Email</label>
            <input type="email" name="email" class="w-full border rounded p-2" value="{{ old('email') }}" required>
        </div>
        <div class="mb-4">
            <label>Mật khẩu</label>
            <input type="password" name="password" class="w-full border rounded p-2" required>
        </div>
        <div class="mb-4">
            <label>Xác nhận mật khẩu</label>
            <input type="password" name="password_confirmation" class="w-full border rounded p-2" required>
        </div>
        <button type="submit" class="bg-green-500 text-white px-4 py-2 rounded">Đăng ký</button>
    </form>
</div>
@endsection
