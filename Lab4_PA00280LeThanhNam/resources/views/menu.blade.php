<nav class="navbar navbar-expand-lg navbar-light">
    <div class="container-fluid">
        <a class="navbar-brand" href="{{ route('tin.danhsach') }}">Trang chủ</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav">
                <li class="nav-item">
                    <a class="nav-link" href="{{ route('tin.noibat') }}">Tin nổi bật</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="{{ route('tin.loai', ['loai' => 1]) }}">Thể thao</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="{{ route('tin.loai', ['loai' => 2]) }}">Công nghệ</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="{{ route('tin.loai', ['loai' => 3]) }}">Giáo dục</a>
                </li>
            </ul>
        </div>
    </div>
</nav>
