@extends('layouts.admin')

@section('admin_content')
    <div class="container-fluid">
        <h1 class="h3 mb-4 text-gray-800">Chỉnh sửa bình luận</h1>

        @if (session('success'))
            <div class="alert alert-success">
                {{ session('success') }}
            </div>
        @endif

        <div class="card shadow mb-4">
            <div class="card-body">
                <form action="{{ route('admin.comments.update', $comment) }}" method="POST">
                    @csrf
                    @method('PUT')

                    <div class="mb-3">
                        <label for="content" class="form-label">Nội dung bình luận</label>
                        <textarea name="content" id="content" class="form-control" rows="5" required>{{ $comment->content }}</textarea>
                        @error('content')
                            <div class="text-danger">{{ $message }}</div>
                        @enderror
                    </div>

                    <div class="mb-3">
                        <label class="form-label">Người dùng: </label>
                        <span>{{ $comment->user->name }}</span>
                    </div>

                    <div class="mb-3">
                        <label class="form-label">Bài viết: </label>
                        <span>{{ $comment->post->title }}</span>
                    </div>

                    <button type="submit" class="btn btn-primary">Cập nhật</button>
                    <a href="{{ route('admin.comments.index') }}" class="btn btn-secondary">Hủy</a>
                </form>
            </div>
        </div>
    </div>
@endsection