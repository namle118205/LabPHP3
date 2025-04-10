@extends('layouts.admin')

@section('admin_content')
<div class="container-fluid">
    <h1 class="h3 mb-4 text-gray-800">Chỉnh sửa bài viết</h1>

    <div class="card shadow mb-4">
        <div class="card-body">
            <form method="POST" action="{{ route('admin.posts.update', $post->id) }}" enctype="multipart/form-data">
                @csrf
                @method('PUT')
                <div class="form-group mb-3">
                    <label for="title">Tiêu đề</label>
                    <input type="text" class="form-control @error('title') is-invalid @enderror" 
                           id="title" name="title" value="{{ old('title', $post->title) }}">
                    @error('title')
                        <div class="invalid-feedback">{{ $message }}</div>
                    @enderror
                </div>

                <div class="form-group mb-3">
                    <label for="category_id">Danh mục</label>
                    <select class="form-control @error('category_id') is-invalid @enderror" 
                            id="category_id" name="category_id">
                        <option value="">Chọn danh mục</option>
                        @foreach($categories as $category)
                            <option value="{{ $category->id }}" {{ old('category_id', $post->category_id) == $category->id ? 'selected' : '' }}>
                                {{ $category->name }}
                            </option>
                        @endforeach
                    </select>
                    @error('category_id')
                        <div class="invalid-feedback">{{ $message }}</div>
                    @enderror
                </div>

                <div class="form-group mb-3">
                    <label for="description">Mô tả ngắn</label>
                    <textarea class="form-control @error('description') is-invalid @enderror" 
                              id="description" name="description">{{ old('description', $post->description) }}</textarea>
                    @error('description')
                        <div class="invalid-feedback">{{ $message }}</div>
                    @enderror
                </div>

                <div class="form-group mb-3">
                    <label for="content">Nội dung</label>
                    <textarea class="form-control @error('content') is-invalid @enderror" 
                              id="content" name="content">{{ old('content', $post->content) }}</textarea>
                    @error('content')
                        <div class="invalid-feedback">{{ $message }}</div>
                    @enderror
                </div>

                <div class="form-group mb-3">
                    <label for="image">Hình ảnh</label>
                    <input type="file" class="form-control @error('image') is-invalid @enderror" 
                           id="image" name="image">
                    @if($post->image)
                        <img src="{{ asset('storage/' . $post->image) }}" alt="Current image" class="mt-2" style="max-width: 200px;">
                    @endif
                    @error('image')
                        <div class="invalid-feedback">{{ $message }}</div>
                    @enderror
                </div>

                <button type="submit" class="btn btn-primary">Cập nhật</button>
                <a href="{{ route('admin.posts') }}" class="btn btn-secondary">Quay lại</a>
            </form>
        </div>
    </div>
</div>

<!-- CKEditor 5 -->
<script src="https://cdn.ckeditor.com/ckeditor5/34.0.0/classic/ckeditor.js"></script>
<script>
    ClassicEditor
        .create(document.querySelector('#content'), {
            height: 600, // Tăng chiều cao giống file create
            width: '100%', // Chiều rộng full
            language: 'vi'
        })
        .then(editor => {
            console.log('CKEditor 5 đã được khởi tạo thành công.');
        })
        .catch(error => {
            console.error('Lỗi khi khởi tạo CKEditor 5:', error);
        });
</script>

<style>
    /* Đảm bảo CKEditor chiếm toàn bộ chiều rộng của container */
    .ck-editor__editable_inline {
        min-height: 600px !important; /* Đảm bảo chiều cao tối thiểu */
        width: 100% !important;
    }
</style>
@endsection