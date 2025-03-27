<!DOCTYPE html>
<html lang="vi">

<head>
    <meta charset="UTF-8">
    <title>News Website</title>
    <link href="https://cdn.jsdelivr.net/npm/tailwindcss@2.2.19/dist/tailwind.min.css" rel="stylesheet">
</head>

<body class="bg-gray-100 min-h-screen flex flex-col">

    <!-- Header Top -->
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

            <!-- Search + Login/Register -->
            <div class="flex items-center space-x-4">
                <!-- Search form -->
                <form action="{{ route('search') }}" method="GET" class="flex">
                    <input type="text" name="keyword" placeholder="Tìm kiếm..." value="{{ request('keyword') }}"
                        class="border rounded-l px-2 py-1 text-sm focus:outline-none">
                    <button type="submit"
                        class="bg-gray-600 text-white px-3 rounded-r text-sm hover:bg-blue-700">Tìm</button>
                </form>

                <!-- Login/Register -->
                <nav class="flex items-center space-x-3 text-sm">
                    @guest
                        <a href="{{ route('login.form') }}" class="text-gray-700 hover:text-blue-600">Đăng nhập</a>
                        <a href="{{ route('register.form') }}" class="text-gray-700 hover:text-blue-600">Đăng ký</a>
                    @else
                        <span class="text-gray-700">{{ Auth::user()->name }}</span>
                        <a href="{{ route('logout') }}" class="text-gray-700 hover:text-blue-600">Đăng xuất</a>
                    @endguest
                </nav>
            </div>
        </div>
    </header>


    <!-- Nav Category -->
    <nav class="bg-gray-50 border-b border-gray-200">
        <div class="container mx-auto flex space-x-6 py-2 overflow-x-auto">
            <a href="{{ route('home') }}" class="flex items-center space-x-1 text-gray-700 hover:text-blue-600">
                <span>Trang chủ</span>
            </a>
            @foreach ($categories as $category)
                <a href="{{ route('category', $category->id) }}"
                    class="text-gray-700 hover:text-blue-600 whitespace-nowrap">{{ $category->name }}</a>
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

</body>

</html>
