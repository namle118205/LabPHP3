@extends('layouts.admin')

@section('admin_content')
    <div class="container-fluid">
        <h1 class="text-2xl font-bold mb-4">Bảng điều khiển</h1>
        <p class="mb-4">Chào mừng đến với khu vực quản trị!</p>

        <!-- Tổng quan -->
        <div class="row mb-4">
            <div class="col-md-3">
                <div class="card shadow-sm">
                    <div class="card-body">
                        <h5 class="card-title">Tổng số người dùng</h5>
                        <p class="card-text text-2xl font-bold">{{ $totalUsers }}</p>
                    </div>
                </div>
            </div>
            <div class="col-md-3">
                <div class="card shadow-sm">
                    <div class="card-body">
                        <h5 class="card-title">Tổng số bài viết</h5>
                        <p class="card-text text-2xl font-bold">{{ $totalPosts }}</p>
                    </div>
                </div>
            </div>
            <div class="col-md-3">
                <div class="card shadow-sm">
                    <div class="card-body">
                        <h5 class="card-title">Tổng số bình luận</h5>
                        <p class="card-text text-2xl font-bold">{{ $totalComments }}</p>
                    </div>
                </div>
            </div>
            <div class="col-md-3">
                <div class="card shadow-sm">
                    <div class="card-body">
                        <h5 class="card-title">Tổng số loại tin</h5>
                        <p class="card-text text-2xl font-bold">{{ $totalCategories }}</p>
                    </div>
                </div>
            </div>
        </div>

        <!-- Bài viết xem nhiều -->
        <div class="card shadow mb-4">
            <div class="card-header py-3">
                <h6 class="m-0 font-weight-bold text-primary">Bài viết xem nhiều</h6>
            </div>
            <div class="card-body">
                <div class="table-responsive">
                    <table class="table table-bordered">
                        <thead>
                            <tr>
                                <th>ID</th>
                                <th>Tiêu đề</th>
                                <th>Lượt xem</th>
                                <th>Ngày tạo</th>
                            </tr>
                        </thead>
                        <tbody>
                            @forelse ($topPosts as $post)
                                <tr>
                                    <td>{{ $post->id }}</td>
                                    <td>{{ $post->title }}</td>
                                    <td>{{ $post->views }}</td>
                                    <td>{{ $post->created_at->format('d/m/Y H:i') }}</td>
                                </tr>
                            @empty
                                <tr>
                                    <td colspan="4" class="text-center">Không có bài viết nào.</td>
                                </tr>
                            @endforelse
                        </tbody>
                    </table>
                </div>
            </div>
        </div>

        <!-- Bình luận gần đây -->
        <div class="card shadow mb-4">
            <div class="card-header py-3">
                <h6 class="m-0 font-weight-bold text-primary">Bình luận gần đây</h6>
            </div>
            <div class="card-body">
                <div class="table-responsive">
                    <table class="table table-bordered">
                        <thead>
                            <tr>
                                <th>ID</th>
                                <th>Nội dung</th>
                                <th>Người dùng</th>
                                <th>Bài viết</th>
                                <th>Ngày tạo</th>
                            </tr>
                        </thead>
                        <tbody>
                            @forelse ($recentComments as $comment)
                                <tr>
                                    <td>{{ $comment->id }}</td>
                                    <td>{{ $comment->content }}</td>
                                    <td>{{ $comment->user->name ?? 'Người dùng không tồn tại' }}</td>
                                    <td>{{ $comment->post->title ?? 'Bài viết không tồn tại' }}</td>
                                    <td>{{ $comment->created_at->format('d/m/Y H:i') }}</td>
                                </tr>
                            @empty
                                <tr>
                                    <td colspan="5" class="text-center">Không có bình luận nào.</td>
                                </tr>
                            @endforelse
                        </tbody>
                    </table>
                </div>
            </div>
        </div>

        <!-- Loại tin phổ biến -->
        <div class="card shadow mb-4">
            <div class="card-header py-3">
                <h6 class="m-0 font-weight-bold text-primary">Loại tin phổ biến</h6>
            </div>
            <div class="card-body">
                <div class="table-responsive">
                    <table class="table table-bordered">
                        <thead>
                            <tr>
                                <th>ID</th>
                                <th>Tên loại tin</th>
                                <th>Số bài viết</th>
                            </tr>
                        </thead>
                        <tbody>
                            @forelse ($popularCategories as $category)
                                <tr>
                                    <td>{{ $category->id }}</td>
                                    <td>{{ $category->name }}</td>
                                    <td>{{ $category->post_count }}</td>
                                </tr>
                            @empty
                                <tr>
                                    <td colspan="3" class="text-center">Không có loại tin nào.</td>
                                </tr>
                            @endforelse
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
@endsection