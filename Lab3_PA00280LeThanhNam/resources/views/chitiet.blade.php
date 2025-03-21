@extends('layout')

@section('tieudetrang', 'Chi tiết tin')

@section('noidung')
    <h1>{{ $tin->TieuDe }}</h1>
    <p><strong>Số lượt xem:</strong> {{ $tin->SoXem }}</p>
    <p><strong>Tóm tắt:</strong> {{ $tin->TomTat }}</p>
    <hr>
    <div>
        <h5>Nội dung:</h5>
        <p>{{ $tin->NoiDung }}</p>
    </div>
    <a href="{{ route('tin.danhsach') }}" class="btn btn-secondary mt-3">Quay lại danh sách</a>
    <a href="{{ route('tin.noibat') }}" class="btn btn-primary mt-3">Xem tin nổi bật</a>
@endsection
