{{-- PA00280 - Lê Thành Nam --}}
@extends('layout')

@section('tieudetrang', 'Tin nổi bật')

@section('noidung')
    <h1 class="mb-4">Danh sách tin nổi bật (Số xem > 300)</h1>

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

    <a href="{{ route('tin.danhsach') }}" class="btn btn-secondary mt-3">Quay lại danh sách tất cả tin</a>
    @endsection