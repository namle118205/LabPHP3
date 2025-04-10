@extends('layouts.admin')

@section('admin_content')
<div class="container-fluid">
    <h1 class="h3 mb-4 text-gray-800">Thêm loại tin mới</h1>

    <div class="card shadow mb-4">
        <div class="card-body">
            <form method="POST" action="{{ route('admin.categories.store') }}">
                @csrf
                <div class="form-group mb-3">
                    <label for="name">Tên loại tin</label>
                    <input type="text" 
                           class="form-control @error('name') is-invalid @enderror" 
                           id="name" 
                           name="name" 
                           value="{{ old('name') }}">
                    @error('name')
                        <div class="invalid-feedback">{{ $message }}</div>
                    @enderror
                </div>

                <button type="submit" class="btn btn-primary">Thêm mới</button>
                <a href="{{ route('admin.categories') }}" 
                   class="btn btn-secondary">Quay lại</a>
            </form>
        </div>
    </div>
</div>
@endsection