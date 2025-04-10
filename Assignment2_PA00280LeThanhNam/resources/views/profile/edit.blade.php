@extends('layouts.profile')

@section('profile-content')
<div class="bg-white rounded-lg shadow-lg p-6 max-w-2xl">
    <!-- Header -->
    <h2 class="text-2xl font-semibold text-gray-800 border-b pb-4 mb-6">
        Chỉnh sửa thông tin
    </h2>

    <!-- Error Messages -->
    @if ($errors->any())
        <div class="bg-red-100 border-l-4 border-red-500 text-red-700 p-4 mb-6 rounded">
            <ul class="list-disc pl-5">
                @foreach ($errors->all() as $error)
                    <li>{{ $error }}</li>
                @endforeach
            </ul>
        </div>
    @endif

    <!-- Edit Form -->
    <form method="POST" action="{{ route('profile.update') }}" class="space-y-6">
        @csrf
        <div>
            <label class="block text-gray-700 font-medium mb-2">Họ tên</label>
            <input type="text" 
                   name="name" 
                   value="{{ Auth::user()->name }}" 
                   class="w-full px-4 py-2 border rounded-lg focus:ring-2 focus:ring-blue-500 focus:border-transparent"
                   required>
        </div>

        <div>
            <label class="block text-gray-700 font-medium mb-2">Email</label>
            <input type="email" 
                   name="email" 
                   value="{{ Auth::user()->email }}" 
                   class="w-full px-4 py-2 border rounded-lg focus:ring-2 focus:ring-blue-500 focus:border-transparent"
                   required>
        </div>

        <div>
            <label class="block text-gray-700 font-medium mb-2">
                Mật khẩu mới 
                <span class="text-gray-500 text-sm">(để trống nếu không đổi)</span>
            </label>
            <input type="password" 
                   name="password" 
                   class="w-full px-4 py-2 border rounded-lg focus:ring-2 focus:ring-blue-500 focus:border-transparent">
        </div>

        <div>
            <label class="block text-gray-700 font-medium mb-2">Xác nhận mật khẩu mới</label>
            <input type="password" 
                   name="password_confirmation" 
                   class="w-full px-4 py-2 border rounded-lg focus:ring-2 focus:ring-blue-500 focus:border-transparent">
        </div>

        <div class="flex justify-end">
            <button type="submit" 
                    class="bg-blue-600 text-white px-6 py-2 rounded-lg hover:bg-blue-700 transition duration-200">
                Cập nhật
            </button>
        </div>
    </form>
</div>
@endsection