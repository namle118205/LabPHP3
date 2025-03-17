{{-- PA00280 - Lê Thành Nam --}}
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Chi tiết tin</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body class="container mt-4">
    <h1 class="mb-4">{{ $tin->TieuDe }}</h1>

    <p><strong>Số lượt xem:</strong> {{ $tin->SoXem }}</p>
    <p><strong>Tóm tắt:</strong> {{ $tin->TomTat }}</p>
    <hr>
    <div>
        <h5>Nội dung:</h5>
        <p>{{ $tin->NoiDung }}</p>
    </div>

    <a href="{{ route('tin.danhsach') }}" class="btn btn-secondary mt-3">Quay lại danh sách</a>
    <a href="{{ route('tin.noibat') }}" class="btn btn-primary mt-3">Xem tin nổi bật</a>
</body>
</html>