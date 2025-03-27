@extends('layouts.app')

@section('content')
    <h2 class="text-2xl font-bold mb-4">Kết quả tìm kiếm cho: "{{ $query }}"</h2>

    @if($posts->count())
        <div class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-4">
            @foreach($posts as $post)
                <div class="bg-white p-4 shadow rounded">
                    <a href="{{ route('post.detail', $post->id) }}">
                        <img src="{{ asset('image/' . $post->image) }}" alt="{{ $post->title }}" class="w-full h-48 object-cover mb-3 rounded">
                    </a>
                    <h3 class="font-semibold text-lg mb-2">{{ $post->title }}</h3>
                    <p>{{ Str::limit($post->description, 100) }}</p>
                    <a href="{{ route('post.detail', $post->id) }}" class="text-blue-600">Xem chi tiết</a>
                </div>
            @endforeach
        </div>
    @else
        <p>Không tìm thấy kết quả nào cho từ khoá "{{ $query }}".</p>
    @endif
@endsection
