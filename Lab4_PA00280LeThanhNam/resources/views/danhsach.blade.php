@extends('layout')

@section('tieudetrang', 'Danh sách tất cả tin')

@section('noidung')
    <h1>Danh sách tất cả tin</h1>
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
                        <a href="{{ route('tin.loai', ['loai' => $tin->idLoaiTin]) }}" class="btn btn-secondary btn-sm mt-2">Xem tin khác cùng loại</a>
                    </div>
                </div>
            </div>
        @endforeach
    </div>
@endsection
