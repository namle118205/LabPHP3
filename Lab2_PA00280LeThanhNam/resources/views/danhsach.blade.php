{{-- PA00280 - Lê Thành Nam --}}
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Danh sách tất cả tin</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body class="container mt-4">
    <h1 class="mb-4">Danh sách tất cả tin</h1>
    <a href="{{ route('tin.noibat') }}" class="btn btn-primary mt-3 mb-3">Xem tin nổi bật</a>
    
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
                        <a href="{{ route('tin.loai', ['loai' => $tin->idLoaiTin]) }}" class="btn btn-secondary btn-sm mt-2">Xem tin khác cùng loại</a>
                    </div>
                </div>
            </div>
        @endforeach
    </div>
    

    
</body>
</html>