<!DOCTYPE html>
<html lang="vi">
<head>     
    <title>@yield('title', 'NEWS PORTAL')</title> 
    <meta charset="utf-8"/> 
    <meta name="viewport" content="width=device-width, initial-scale=1"> 
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"/> 
</head> 
<body class="bg-light"> 
    <div class="container"> 
        <a href="{{ route('trangchu') }}" class="text-decoration-none">
            <header class="bg-primary text-white py-3 px-4 shadow-sm fs-4 fw-bold">NEWS PORTAL</header>
        </a> 
        
        <nav class="navbar navbar-expand-lg navbar-light bg-warning fw-bold">
            <div class="container">
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarNav">
                    <ul class="navbar-nav">
                        <li class="nav-item">
                            <a class="nav-link" href="{{ route('trangchu') }}">Trang Chủ</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="{{ route('tin.danhsach') }}">Danh sách tin tức</a>
                        </li>
                    </ul>
                </div>
            </div>
        </nav> 
        
        <main class="row mt-4">
            <article class="col-md-12 bg-white p-4 shadow-sm rounded"> 
                @yield('noidung')
            </article> 
        </main> 
        
        <footer class="bg-dark text-white text-center py-3 mt-4 fw-bold">
            Phát triển bởi Lê Thành Nam - PA00280
        </footer> 
    </div> 
    
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
</body>  
</html>
