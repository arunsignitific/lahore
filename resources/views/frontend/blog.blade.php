@extends('frontend/common/webmaster')
@section('title'," | $seo->meta_title")

@section('linkfile')
<meta name="keywords" content="{{ $seo->meta_keyword }}" />
<meta name="description" content="{{ $seo->meta_description }}">
@endsection

@section('content')
<main class="main">
    <nav aria-label="breadcrumb" class="breadcrumb-nav">
        <div class="container">
            <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href="{{ route('index') }}">Home</a></li>
                <li class="breadcrumb-item active" aria-current="page">Blog</li>
            </ol>
        </div><!-- End .container -->
    </nav>

    <div class="page-header">
        <div class="container">
            <h1>Blog</h1>
        </div><!-- End .container -->
    </div><!-- End .page-header -->

    <div class="container">
        <div class="row">
            <div class="col-lg-9">
                @foreach ($blogs as $item)
                <article class="entry">
                    <div class="entry-media">
                        <a href="{{ route('blogView', ['slug'=>$item->slug]) }}">
                            <img src="{{ asset('storage/app/blog_image/'.$item->header_img) }}" alt="Post">
                        </a>
                    </div><!-- End .entry-media -->

                    <div class="entry-body">
                        <div class="entry-date">
                            <span class="day">{{ date('d', strtotime($item->created_at)) }}</span>
                            <span class="month">{{ date('M', strtotime($item->created_at)) }}</span>
                        </div><!-- End .entry-date -->

                        <h2 class="entry-title">
                            <a href="{{ route('blogView', ['slug'=>$item->slug]) }}">{{ $item->title }}</a>
                        </h2>

                        <div class="entry-content">
                            <p>{{ $item->sort_info }}</p>

                            <a href="{{ route('blogView', ['slug'=>$item->slug]) }}" class="read-more">Read More <i class="icon-angle-double-right"></i></a>
                        </div><!-- End .entry-content -->

                        <div class="entry-meta">
                            <span><i class="icon-calendar"></i>{{ date('M d, y', strtotime($item->created_at)) }}</span>
                            <span><i class="icon-user"></i>By <a href="#">Admin</a></span>
                        </div><!-- End .entry-meta -->
                    </div><!-- End .entry-body -->
                </article><!-- End .entry -->
                @endforeach
                
            @if ($blogs->lastPage() > 1)
                <nav class="toolbox toolbox-pagination">
                    <ul class="pagination">
                        <li class="page-item {{ ($blogs->currentPage() == 1) ? ' disabled' : '' }}">
                            <a class="page-link page-link-btn" href="{{ $blogs->url(1) }}"><i class="icon-angle-left"></i></a>
                        </li>
                        @for ($i = 1; $i <= $blogs->lastPage(); $i++)
                        <li class="page-item {{ ($blogs->currentPage() == $i) ? ' active' : '' }}">
                            <a class="page-link" href="{{ $blogs->url($i) }}">{{ $i }}</a>
                        </li>
                        @endfor
                        <li class="page-item {{ ($blogs->currentPage() == $blogs->lastPage()) ? ' disabled' : '' }}">
                            <a class="page-link page-link-btn" href="{{ $blogs->url($blogs->currentPage()+1) }}"><i class="icon-angle-right"></i></a>
                        </li>
                    </ul>
                </nav>
            @endif
            </div><!-- End .col-lg-9 -->

            <aside class="sidebar col-lg-3">
                <div class="sidebar-wrapper">
                    <div class="widget">
                        <h4 class="widget-title">Recent Posts</h4>

                        <ul class="simple-entry-list">
                            @foreach ($latests as $item)
                            <li>
                                <div class="entry-media">
                                    <a href="{{ route('blogView', ['slug'=>$item->slug]) }}">
                                        <img src="{{ asset('storage/app/blog_image/'.$item->header_img) }}" alt="Post">
                                    </a>
                                </div><!-- End .entry-media -->
                                <div class="entry-info">
                                    <a href="{{ route('blogView', ['slug'=>$item->slug]) }}">{{ $item->title }}</a>
                                    <div class="entry-meta">
                                        {{ date('M d, y', strtotime($item->created_at)) }}
                                    </div><!-- End .entry-meta -->
                                </div><!-- End .entry-info -->
                            </li>
                            @endforeach
                        </ul>
                    </div><!-- End .widget -->
                </div><!-- End .sidebar-wrapper -->
            </aside><!-- End .col-lg-3 -->
        </div><!-- End .row -->
    </div><!-- End .container -->

    <div class="mb-6"></div><!-- margin -->
</main><!-- End .main -->
@endsection

@section('extrascript')
@endsection
