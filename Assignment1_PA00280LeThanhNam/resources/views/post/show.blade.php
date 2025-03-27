@extends('layouts.app')

@section('content')
    <h1 class="text-2xl font-bold mb-4">{{ $category->name }}</h1>

    @if($posts->count())
        <div class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-4">
            @foreach($posts as $post)
                <div class="bg-white shadow rounded p-4">
                    <a href="{{ route('post.detail', $post->id) }}" class="block hover:opacity-80">
                        <img src="{{ asset('image/'.$post->image) }}" alt="{{ $post->title }}" class="w-full h-40 object-cover rounded">
                        <h2 class="mt-2 font-semibold text-lg">{{ $post->title }}</h2>
                        <p class="text-sm text-gray-600">{{ \Illuminate\Support\Str::limit($post->description, 100) }}</p>
                    </a>
                    <div class="text-sm text-gray-500 mt-1">{{ \Carbon\Carbon::parse($post->created_at)->format('d/m/Y') }}</div>
                </div>
            @endforeach
        </div>

        <!-- Pagination -->
        <div class="mt-6">
            {{ $posts->links() }}
        </div>
    @else
        <p>Không có bài viết nào trong danh mục này.</p>
    @endif
@endsection
