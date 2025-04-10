<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <title>Hồ sơ cá nhân</title>
    <link href="https://cdn.jsdelivr.net/npm/tailwindcss@2.2.19/dist/tailwind.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body class="bg-gray-100 min-h-screen flex flex-col">
    <!-- Header Top -->
    <header class="bg-white border-b border-gray-200">
        <div class="container mx-auto flex justify-between items-center py-3">
            <div class="flex items-center space-x-2">
                <a href="{{ route('home') }}" class="flex items-center space-x-2">
                    <img src="{{ asset('image/Screenshot 2025-03-21 020815.png') }}" alt="Logo" class="h-14">
                </a>
                <span class="text-sm text-gray-500 hidden md:inline">
                    {{ \Illuminate\Support\Str::title(\Carbon\Carbon::now()->translatedFormat('l')) }},
                    {{ \Carbon\Carbon::now()->format('d/m/Y') }}
                </span>
            </div>

            <div class="flex items-center space-x-4">
                <form action="{{ route('search') }}" method="GET" class="flex">
                    <input type="text" name="keyword" placeholder="Tìm kiếm..." value="{{ request('keyword') }}"
                        class="border rounded-l px-2 py-1 text-sm focus:outline-none">
                    <button type="submit"
                        class="bg-gray-600 text-white px-3 rounded-r text-sm hover:bg-blue-700">Tìm</button>
                </form>

                <nav class="d-flex align-items-center gap-2">
                    @if(Auth::check())
                        <div class="dropdown">
                            <button class="btn btn-link text-dark text-decoration-none dropdown-toggle"
                                type="button" id="userDropdown" data-bs-toggle="dropdown" aria-expanded="false">
                                {{ Auth::user()->name }}
                            </button>
                            <ul class="dropdown-menu dropdown-menu-end" aria-labelledby="userDropdown">
                                <li><a class="dropdown-item" href="{{ route('profile.show') }}">Thông tin tài khoản</a></li>
                                <li><a class="dropdown-item" href="{{ route('profile.edit') }}">Chỉnh sửa tài khoản</a></li>
                                @if(Auth::user()->role === 'admin')
                                    <li><a class="dropdown-item" href="{{ route('admin.dashboard') }}">Quản trị viên</a></li>
                                @endif
                                <li><a class="dropdown-item" href="{{ route('logout') }}">Đăng xuất</a></li>
                            </ul>
                        </div>                                     
                    @else
                        <a href="{{ route('login.form') }}" class="text-dark text-decoration-none">Đăng nhập</a>
                        <a href="{{ route('register.form') }}" class="text-dark text-decoration-none">Đăng ký</a>
                    @endif
                </nav>
            </div>
        </div>
    </header>

    <!-- Nav Category -->
    <nav class="bg-gray-50 border-b border-gray-200">
        <div class="container mx-auto flex space-x-6 py-2 overflow-x-auto">
            <a href="{{ route('home') }}" class="flex items-center space-x-1 text-gray-700 hover:text-blue-600 text-decoration-none">
                <span>Trang chủ</span>
            </a>
            @foreach ($categories as $category)
                <a href="{{ route('category', $category->id) }}"
                    class="text-gray-700 hover:text-blue-600 text-decoration-none whitespace-nowrap">{{ $category->name }}</a>
            @endforeach
        </div>
    </nav>

    <!-- Main content -->
    <main class="container mx-auto mt-6 flex-grow flex">
        <!-- Sidebar trái -->
        <div class="w-1/4 bg-white shadow-lg p-6">
            <h2 class="text-xl font-bold mb-6 text-black">Menu cá nhân</h2>
            <ul class="space-y-4">
                <li>
                    <a href="{{ route('profile.show') }}" 
                       class="block px-4 py-2 rounded text-black hover:text-blue-500 hover:bg-blue-100 text-decoration-none {{ Route::is('profile.show') ? 'bg-blue-100 text-blue-500' : '' }}">
                        Thông tin tài khoản
                    </a>
                </li>
                <li>
                    <a href="{{ route('profile.edit') }}" 
                       class="block px-4 py-2 rounded text-black hover:text-blue-500 hover:bg-blue-100 text-decoration-none {{ Route::is('profile.edit') ? 'bg-blue-100 text-blue-500' : '' }}">
                        Chỉnh sửa tài khoản
                    </a>
                </li>
                @if(Auth::user()->role === 'admin')
                    <li>
                        <a href="{{ route('admin.dashboard') }}" 
                           class="block px-4 py-2 rounded text-black hover:text-blue-500 hover:bg-blue-100 text-decoration-none {{ Route::is('admin.dashboard') ? 'bg-blue-100 text-blue-500' : '' }}">
                            Quản trị viên
                        </a>
                    </li>
                @endif
                <li>
                    <a href="{{ route('logout') }}" 
                       class="block px-4 py-2 rounded text-black hover:text-blue-500 hover:bg-blue-100 no-underline">
                        Đăng xuất
                    </a>
                </li>
            </ul>
        </div>

        <!-- Nội dung chính bên phải -->
        <div class="w-3/4 pl-4">
            @yield('profile-content')
        </div>
    </main>

    <!-- Footer -->
    <footer class="bg-gray-700 text-white text-center p-4 mt-10">
        © 2025 - Laravel News Website
    </footer>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>