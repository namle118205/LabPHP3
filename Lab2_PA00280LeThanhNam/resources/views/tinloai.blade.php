{{-- PA00280 - Lê Thành Nam --}}
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Tin theo loại: {{ $loai }}</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body class="container mt-4">
    <h1 class="mb-4">Danh sách tin trong loại: {{ $loai }}</h1>

    <div class="row">
        @foreach ($tins as $tin)
            <div class="col-md-6 mb-3">
                <div class="card h-100 shadow-sm">
                    <div class="card-body">
                        <h5 class="card-title">
                            <a href="{{ route('tin.chitiet', ['id' => $tin->id]) }}" class="text-decoration-none">
                                {{ $tin->TieuDe }}
                            </a>
                        </h5>
                        <p class="card-text">{{ $tin->TomTat }}</p>
                        <p class="card-text">
                            <small class="text-muted">Số lượt xem: {{ $tin->SoXem }}</small>
                        </p>
                    </div>
                </div>
            </div>
        @endforeach
    </div>

    <a href="{{ route('tin.danhsach') }}" class="btn btn-secondary mt-3">Quay lại danh sách tất cả tin</a>
</body>
</html>