<!-- resources/views/post/detail.blade.php -->

@extends('layouts.app')

@section('content')
    <div class="max-w-4xl mx-auto bg-white p-6 rounded shadow">
        <h1 class="text-3xl font-bold mb-2">{{ $post->title }}</h1>
        <p class="text-gray-600 mb-4">Đăng ngày: {{ \Carbon\Carbon::parse($post->created_at)->format('d/m/Y') }} | Lượt xem:
            {{ $post->views }}</p>
        <div class="mb-6">
            <img src="{{ asset('image/' . $post->image) }}" alt="{{ $post->title }}" class="w-full rounded mb-4">
            <p>{!! nl2br($post->content) !!}</p>
        </div>

        <!-- Phần bình luận -->
        <h2 class="text-xl font-bold mb-4">Bình luận</h2>

        @guest
            <p class="text-red-500">Bạn cần <a href="{{ route('login.form') }}" class="underline text-blue-600">đăng nhập</a> để
                bình luận.</p>
        @else
            <form action="{{ route('comment.store', $post->id) }}" method="POST" class="mb-6">
                @csrf
                <textarea name="content" rows="3" class="w-full border p-2 rounded" placeholder="Nhập bình luận..." required></textarea>
                <button type="submit" class="bg-blue-500 text-white px-4 py-2 mt-2 rounded">Gửi bình luận</button>
            </form>
        @endguest

        <div class="space-y-4">
            @foreach ($comments as $comment)
                <div class="p-3 bg-gray-100 rounded">
                    <strong>{{ $comment->user_name }}</strong>
                    <span
                        class="text-sm text-gray-500">{{ \Carbon\Carbon::parse($comment->created_at)->diffForHumans() }}</span>
                    <p>{{ $comment->content }}</p>
                </div>
            @endforeach

        </div>
    </div>
@endsection
