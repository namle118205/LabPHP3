@extends('layout')

@section('tieudetrang', $tenLoai)

@section('noidung')
    <h1>{{ $tenLoai }}</h1>
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
                        <p class="card-text"><small class="text-muted">Số lượt xem: {{ $tin->SoXem }}</small></p>
                    </div>
                </div>
            </div>
        @endforeach
    </div>
    <a href="{{ route('tin.danhsach') }}" class="btn btn-secondary mt-3">Quay lại danh sách tất cả tin</a>
@endsection
