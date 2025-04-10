@extends('layouts.profile')

@section('profile-content')
<div class="bg-white rounded-lg shadow-lg p-6 max-w-2xl">
    <!-- Header -->
    <div class="flex items-center justify-between border-b pb-4 mb-6">
        <h2 class="text-2xl font-semibold text-gray-800">Thông tin cá nhân</h2>
        <a href="{{ route('profile.edit') }}" 
           class="text-blue-600 hover:text-blue-800 text-sm font-medium">
            Chỉnh sửa
        </a>
    </div>

    <!-- Success Message -->
    @if(session('success'))
        <div class="bg-green-100 border-l-4 border-green-500 text-green-700 p-4 mb-6 rounded">
            {{ session('success') }}
        </div>
    @endif

    <!-- Profile Information -->
    <div class="space-y-6">
        <div class="flex items-center">
            <span class="w-32 text-gray-600 font-medium">Họ tên:</span>
            <span class="text-gray-800">{{ Auth::user()->name }}</span>
        </div>
        <div class="flex items-center">
            <span class="w-32 text-gray-600 font-medium">Email:</span>
            <span class="text-gray-800">{{ Auth::user()->email }}</span>
        </div>
        <div class="flex items-center">
            <span class="w-32 text-gray-600 font-medium">Vai trò:</span>
            <span class="text-gray-800">
                {{ Auth::user()->role === 'client' ? 'Khách hàng' : 'Quản trị viên' }}
            </span>
        </div>
    </div>
</div>
@endsection