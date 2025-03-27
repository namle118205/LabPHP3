@extends('layouts.app')

@section('content')
<div class="grid grid-cols-1 lg:grid-cols-3 gap-8">
    <!-- Tin mới bên trái -->
    <div class="lg:col-span-2">
        <h2 class="text-2xl font-bold mb-4">TIN MỚI</h2>
        
        <!-- Tin lớn đầu tiên -->
        @if($latest->count() > 0)
            @php $firstPost = $latest->shift(); @endphp
            <div class="mb-6">
                <a href="{{ route('post.detail', $firstPost->id) }}">
                    <img src="{{ asset('image/' . $firstPost->image) }}" alt="{{ $firstPost->title }}" class="w-full h-64 object-cover mb-3 rounded">
                </a>
                <a href="{{ route('post.detail', $firstPost->id) }}" class="block">
                    <h3 class="font-semibold text-xl mb-2 hover:text-blue-600">{{ $firstPost->title }}</h3>
                </a>
                <p>{{ Str::limit($firstPost->description, 150) }}</p>
                <a href="{{ route('post.detail', $firstPost->id) }}" class="text-blue-600 text-sm">Xem chi tiết</a>
            </div>
        @endif

        <!-- Các tin nhỏ -->
        <div class="grid grid-cols-1 md:grid-cols-2 gap-4 mb-8">
            @foreach($latest as $post)
                <div>
                    <a href="{{ route('post.detail', $post->id) }}">
                        <img src="{{ asset('image/' . $post->image) }}" alt="{{ $post->title }}" class="w-full h-32 object-cover mb-3 rounded">
                    </a>
                    <a href="{{ route('post.detail', $post->id) }}" class="block">
                        <h3 class="font-semibold text-md mb-2 hover:text-blue-600">{{ $post->title }}</h3>
                    </a>
                    <p>{{ Str::limit($post->description, 100) }}</p>
                    <a href="{{ route('post.detail', $post->id) }}" class="text-blue-600 text-sm">Xem chi tiết</a>
                </div>
            @endforeach
        </div>

        <!-- Tin nổi bật -->
        <div>
            <h2 class="text-2xl font-bold mb-4">TIN NỔI BẬT</h2>
            <div class="grid grid-cols-1 md:grid-cols-3 gap-4">
                @foreach($highlighted as $post)
                    <div>
                        <a href="{{ route('post.detail', $post->id) }}">
                            <img src="{{ asset('image/' . $post->image) }}" alt="{{ $post->title }}" class="w-full h-28 object-cover mb-2 rounded">
                        </a>
                        <a href="{{ route('post.detail', $post->id) }}">
                            <h4 class="font-semibold text-sm hover:text-blue-600">{{ Str::limit($post->title, 50) }}</h4>
                        </a>
                    </div>
                @endforeach
            </div>
        </div>
    </div>

    <!-- Xem nhiều bên phải -->
    <div>
        <h2 class="text-2xl font-bold mb-4">XEM NHIỀU</h2>
        <ul class="space-y-3 text-sm">
            @foreach($popular as $post)
                <li>
                    <a href="{{ route('post.detail', $post->id) }}" class="hover:text-blue-600">{{ $post->title }}</a>
                </li>
            @endforeach
        </ul>
        
        <!-- Optional: video hoặc banner -->
        <div class="mt-6">
            <iframe width="100%" height="200" src="https://www.youtube.com/embed/dQw4w9WgXcQ" class="rounded shadow"></iframe>
        </div>
    </div>
</div>
@endsection
