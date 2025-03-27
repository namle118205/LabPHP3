@extends('layouts.app')

@section('content')
<div class="max-w-md mx-auto mt-10 p-6 bg-white rounded shadow">
    <h2 class="text-xl font-bold mb-4">Quên mật khẩu</h2>
    @if(session('success')) <p class="text-green-500">{{ session('success') }}</p> @endif
    @if(session('error')) <p class="text-red-500">{{ session('error') }}</p> @endif

    <form method="POST" action="{{ route('forgot.send') }}">
        @csrf
        <div class="mb-4">
            <label>Email</label>
            <input type="email" name="email" class="w-full border rounded p-2" required>
        </div>
        <button type="submit" class="bg-blue-500 text-white px-4 py-2 rounded">Gửi yêu cầu</button>
    </form>
</div>
@endsection
