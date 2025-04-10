<!DOCTYPE html>
<html lang="vi">

<head>
    <meta charset="UTF-8">
    <title>News Website</title>
    <link href="https://cdn.jsdelivr.net/npm/tailwindcss@2.2.19/dist/tailwind.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>

</head>

<body class="bg-gray-100 min-h-screen flex flex-col">

    <!-- Header Top -->
    <header class="bg-white border-b border-gray-200">
        <div class="container mx-auto flex justify-between items-center py-3">
            <!-- Logo + link -->
            <div class="flex items-center space-x-2">
                <a href="{{ route('home') }}" class="flex items-center space-x-2">
                    <img src="{{ asset('image/Screenshot 2025-03-21 020815.png') }}" alt="Logo" class="h-14">
                </a>
                <span class="text-sm text-gray-500 hidden md:inline">
                    {{ \Illuminate\Support\Str::title(\Carbon\Carbon::now()->translatedFormat('l')) }},
                    {{ \Carbon\Carbon::now()->format('d/m/Y') }}
                </span>
            </div>

            <!-- Search + Login/Register/Profile -->
            <div class="flex items-center space-x-4">
                <!-- Search form -->
                <form action="{{ route('search') }}" method="GET" class="flex">
                    <input type="text" name="keyword" placeholder="Tìm kiếm..." value="{{ request('keyword') }}"
                        class="border rounded-l px-2 py-1 text-sm focus:outline-none">
                    <button type="submit"
                        class="bg-gray-600 text-white px-3 rounded-r text-sm hover:bg-blue-700">Tìm</button>
                </form>

                <!-- Login/Register/Profile -->
                <nav class="d-flex align-items-center gap-2">
                    @if(Auth::check())
                        <!-- Dropdown menu -->
                        <div class="dropdown">
                            <button
                                class="btn btn-link text-dark text-decoration-none dropdown-toggle"
                                type="button"
                                id="userDropdown"
                                data-bs-toggle="dropdown"
                                aria-expanded="false">
                                {{ Auth::user()->name }}
                            </button>
                            <ul class="dropdown-menu dropdown-menu-end" aria-labelledby="userDropdown">
                                <li><a class="dropdown-item" href="{{ route('profile.show') }}">Hồ sơ cá nhân</a></li>
                                <li><a class="dropdown-item" href="{{ route('profile.edit') }}">Chỉnh sửa hồ sơ</a></li>
                                @if(Auth::user()->role === 'admin')
                                    <li><a class="dropdown-item" href="{{ route('admin.dashboard') }}">Quản trị viên</a></li>
                                @endif
                                <li><a class="dropdown-item" href="{{ route('logout') }}">Đăng xuất</a></li>
                            </ul>
                        </div>                                     
                    @else
                        <a href="{{ route('login') }}" class="text-dark text-decoration-none">Đăng nhập</a>
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

    <!-- Main -->
    <main class="container mx-auto mt-6 flex-grow">
        @yield('content')
    </main>

    <!-- Footer -->
    <footer class="bg-gray-700 text-white text-center p-4 mt-10">
        © 2025 - Laravel News Website
    </footer>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-WO2V8LXowm1CtnDnE91o2tyNfSlS9Up+rPC61ZlU5CdzZmhE+UHKZXTwI/xUJmjR" crossorigin="anonymous"></script>

</body>

</html>