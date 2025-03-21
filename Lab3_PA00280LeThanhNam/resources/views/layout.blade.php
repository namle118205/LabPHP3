{{-- PA00280 - Lê Thành Nam --}}
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>@yield('tieudetrang')</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
    <style>
        .container > header { height: 220px; }
        .container > nav { height: 60px; }
        .container > footer { height: 90px; }
        .container > main { display: flex; min-height: 500px; }
    </style>
</head>
<body>
    <div class="container">
        <header class="bg-primary text-white d-flex justify-content-center align-items-center">
            <h1>Website Tin Tức Laravel</h1>
        </header>

        <nav class="bg-warning">
            @include('menu')
        </nav>

        <main>
            <article class="col-9 bg-light p-3">
                @yield('noidung')
            </article>
            <aside class="col-3 bg-info p-3">
                THÔNG TIN BỔ SUNG
            </aside>
        </main>

        <footer class="bg-dark text-white text-center d-flex justify-content-center align-items-center">
            PHÁT TRIỂN BỞI PA00280 - Lê Thành Nam
        </footer>
    </div>
</body>
</html>
