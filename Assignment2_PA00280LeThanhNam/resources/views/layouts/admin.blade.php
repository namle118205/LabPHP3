<!DOCTYPE html>
<html lang="vi">

<head>
    <meta charset="UTF-8">
    <title>Admin - News Website</title>
    <link href="https://cdn.jsdelivr.net/npm/tailwindcss@2.2.19/dist/tailwind.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css">
</head>

<body class="bg-light min-vh-100">
    <!-- Header Top -->
    <header class="bg-white text-dark p-3 shadow-sm" style="position: fixed; top: 0; left: 0; right: 0; z-index: 1000;">
        <div class="container-fluid d-flex justify-content-between align-items-center">
            <!-- Logo -->
            <div>
                <a href="{{ route('admin.dashboard') }}">
                    <img src="{{ asset('image/Screenshot 2025-03-21 020815.png') }}" alt="Logo" class="h-12">
                </a>
            </div>

            <!-- Profile Dropdown -->
            <nav class="d-flex align-items-center gap-2">
                @if(Auth::check())
                    <div class="dropdown">
                        <button class="btn btn-link text-dark text-decoration-none dropdown-toggle" type="button" id="userDropdown" data-bs-toggle="dropdown" aria-expanded="false">
                            {{ Auth::user()->name }}
                        </button>
                        <ul class="dropdown-menu dropdown-menu-end shadow-sm" aria-labelledby="userDropdown">
                            <li><a class="dropdown-item" href="{{ route('profile.show') }}">Thông tin tài khoản</a></li>
                            <li><a class="dropdown-item" href="{{ route('profile.edit') }}">Chỉnh sửa tài khoản</a></li>
                            <li><a class="dropdown-item" href="{{ route('logout') }}">Đăng xuất</a></li>
                        </ul>
                    </div>                                     
                @endif
            </nav>
        </div>
    </header>

    <!-- Sidebar -->
    <div class="d-flex">
        <div class="bg-white border-end shadow-sm" style="min-width: 250px; max-width: 250px; height: 100vh; position: fixed; top: 0; left: 0; padding-top: 70px; z-index: 999;">
            <!-- Navigation -->
            <nav class="nav flex-column mt-3">
                <a class="nav-link px-4 py-2 text-dark d-flex align-items-center gap-2" href="{{ route('admin.dashboard') }}">
                    <i class="fas fa-tachometer-alt"></i> Bảng điều khiển
                </a>
                <a class="nav-link px-4 py-2 text-dark d-flex align-items-center gap-2" href="{{ route('admin.categories') }}">
                    <i class="fas fa-folder"></i> Quản lý loại tin
                </a>
                <a class="nav-link px-4 py-2 text-dark d-flex align-items-center gap-2" href="{{ route('admin.posts') }}">
                    <i class="fas fa-file-alt"></i> Quản lý bài viết
                </a>
                <a class="nav-link px-4 py-2 text-dark d-flex align-items-center gap-2" href="{{ route('admin.users') }}">
                    <i class="fas fa-users"></i> Quản lý người dùng
                </a>
                <a class="nav-link px-4 py-2 text-dark d-flex align-items-center gap-2" href="{{ route('admin.comments.index') }}">
                    <i class="fas fa-comments"></i> Quản lý bình luận
                </a>
                <a class="nav-link px-4 py-2 text-dark d-flex align-items-center gap-2" href="{{ route('home') }}">
                    <i class="fas fa-sign-out-alt"></i> Thoát
                </a>
            </nav>
        </div>

        <!-- Main Content -->
        <main class="flex-grow" style="margin-left: 250px; padding: 20px; width: calc(100% - 250px); margin-top: 70px; overflow-y: auto; height: calc(100vh - 70px);">
            @yield('admin_content')
        </main>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
</body>

</html>