@extends('frontend/common/webmaster')
@section('title'," | $blog->meta_title")

@section('linkfile')
<meta name="keywords" content="{{ $blog->meta_keyword }}" />
<meta name="description" content="{{ $blog->meta_description }}">
@endsection

@section('content')
<main class="main">
    <nav aria-label="breadcrumb" class="breadcrumb-nav">
        <div class="container">
            <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href="{{ route('index') }}">Home</a></li>
                <li class="breadcrumb-item"><a href="{{ route('blog') }}">Blog</a></li>
                <li class="breadcrumb-item active" aria-current="page">{{ $blog->title }}</li>
            </ol>
        </div><!-- End .container -->
    </nav>

    <div class="container">
        <div class="row">
            <div class="col-lg-9">
                <article class="entry single">
                    <div class="entry-media">
                        <img src="{{ asset('storage/app/blog_image/'.$blog->header_img) }}" alt="Post">
                    </div><!-- End .entry-media -->

                    <div class="entry-body">
                        <div class="entry-date">
                            <span class="day">{{ date('d', strtotime($blog->created_at)) }}</span>
                            <span class="month">{{ date('M', strtotime($blog->created_at)) }}</span>
                        </div><!-- End .entry-date -->

                        <h2 class="entry-title">
                            {{ $blog->title }}
                        </h2>

                        <div class="entry-meta">
                            <span><i class="icon-calendar"></i>{{ date('M d, y', strtotime($blog->created_at)) }}</span>
                            <span><i class="icon-user"></i>By <a href="#">Admin</a></span>
                        </div><!-- End .entry-meta -->

                        <div class="entry-content">
                            {!! $blog->info !!}
                        </div><!-- End .entry-content -->

                        {{-- <div class="entry-share">
                            <h3>
                                <i class="icon-forward"></i>
                                Share this post
                            </h3>

                            <div class="social-icons">
                                <a href="#" class="social-icon social-facebook" target="_blank" title="Facebook">
                                    <i class="icon-facebook"></i>
                                </a>
                                <a href="#" class="social-icon social-twitter" target="_blank" title="Twitter">
                                    <i class="icon-twitter"></i>
                                </a>
                                <a href="#" class="social-icon social-linkedin" target="_blank" title="Linkedin">
                                    <i class="icon-linkedin"></i>
                                </a>
                                <a href="#" class="social-icon social-gplus" target="_blank" title="Google +">
                                    <i class="icon-gplus"></i>
                                </a>
                                <a href="#" class="social-icon social-mail" target="_blank" title="Email">
                                    <i class="icon-mail-alt"></i>
                                </a>
                            </div><!-- End .social-icons -->
                        </div><!-- End .entry-share --> --}}

                        {{-- <div class="entry-author">
                            <h3><i class="icon-user"></i>Author</h3>

                            <figure>
                                <a href="#">
                                    <img src="{{ URL::asset('public/frontend/assets/images/blog/author.jpg') }}" alt="author">
                                </a>
                            </figure>

                            <div class="author-content">
                                <h4><a href="#">John Doe</a></h4>
                                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ab officia culpa corporis, quidem placeat minima unde vel veniam laboriosam et animi, inventore delectus, officiis doloribus ex amet illum ea suscipit!</p>
                            </div><!-- End .author.content -->
                        </div><!-- End .entry-author --> --}}

                        {{-- <div class="comment-respond">
                            <h3>Leave a Reply</h3>
                            <p>Your email address will not be published. Required fields are marked *</p>

                            <form action="#">
                                <div class="form-group required-field">
                                    <label>Comment</label>
                                    <textarea cols="30" rows="1" class="form-control" required></textarea>
                                </div><!-- End .form-group -->

                                <div class="form-group required-field">
                                    <label>Name</label>
                                    <input type="text" class="form-control" required>
                                </div><!-- End .form-group -->

                                <div class="form-group required-field">
                                    <label>Email</label>
                                    <input type="email" class="form-control" required>
                                </div><!-- End .form-group -->

                                <div class="form-group">
                                    <label>Website</label>
                                    <input type="url" class="form-control">
                                </div><!-- End .form-group -->
                                
                                <div class="form-group-custom-control mb-3">
                                    <div class="custom-control custom-checkbox">
                                        <input type="checkbox" class="custom-control-input" id="save-name">
                                        <label class="custom-control-label" for="save-name">Save my name, email, and website in this browser for the next time I comment.</label>
                                    </div><!-- End .custom-checkbox -->
                                </div><!-- End .form-group-custom-control -->

                                <div class="form-footer">
                                    <button type="submit" class="btn btn-primary">Post Comment</button>
                                </div><!-- End .form-footer -->
                            </form>
                        </div><!-- End .comment-respond --> --}}
                    </div><!-- End .entry-body -->
                </article><!-- End .entry -->

                {{-- <div class="related-posts">
                    <h4 class="light-title">Related <strong>Posts</strong></h4>

                    <div class="owl-carousel owl-theme related-posts-carousel">
                        <article class="entry">
                            <div class="entry-media">
                                <a href="{{ route('blogView', ['slug'=>$item->slug]) }}">
                                    <img src="{{ URL::asset('public/frontend/assets/images/blog/related/post-1.jpg') }}" alt="Post">
                                </a>
                            </div><!-- End .entry-media -->

                            <div class="entry-body">
                                <div class="entry-date">
                                    <span class="day">29</span>
                                    <span class="month">Jun</span>
                                </div><!-- End .entry-date -->

                                <h2 class="entry-title">
                                    <a href="{{ route('blogView', ['slug'=>$item->slug]) }}">Post Format - Image</a>
                                </h2>

                                <div class="entry-content">
                                    <p>Euismod atras vulputate iltricies etri elit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per incep tos himens.</p>

                                    <a href="{{ route('blogView', ['slug'=>$item->slug]) }}" class="read-more">Read More <i class="icon-angle-double-right"></i></a>
                                </div><!-- End .entry-content -->
                            </div><!-- End .entry-body -->
                        </article>

                        <article class="entry">
                            <div class="entry-media">
                                <a href="{{ route('blogView', ['slug'=>$item->slug]) }}">
                                    <img src="{{ URL::asset('public/frontend/assets/images/blog/related/post-2.jpg') }}" alt="Post">
                                </a>
                            </div><!-- End .entry-media -->

                            <div class="entry-body">
                                <div class="entry-date">
                                    <span class="day">23</span>
                                    <span class="month">Mar</span>
                                </div><!-- End .entry-date -->

                                <h2 class="entry-title">
                                    <a href="{{ route('blogView', ['slug'=>$item->slug]) }}">Post Format - Image</a>
                                </h2>

                                <div class="entry-content">
                                    <p>Euismod atras vulputate iltricies etri elit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per incep tos himens.</p>

                                    <a href="{{ route('blogView', ['slug'=>$item->slug]) }}" class="read-more">Read More <i class="icon-angle-double-right"></i></a>
                                </div><!-- End .entry-content -->
                            </div><!-- End .entry-body -->
                        </article>

                        <article class="entry">
                            <div class="entry-media">
                                <a href="{{ route('blogView', ['slug'=>$item->slug]) }}">
                                    <img src="{{ URL::asset('public/frontend/assets/images/blog/related/post-3.jpg') }}" alt="Post">
                                </a>
                            </div><!-- End .entry-media -->

                            <div class="entry-body">
                                <div class="entry-date">
                                    <span class="day">14</span>
                                    <span class="month">May</span>
                                </div><!-- End .entry-date -->

                                <h2 class="entry-title">
                                    <a href="{{ route('blogView', ['slug'=>$item->slug]) }}">Post Format - Image</a>
                                </h2>

                                <div class="entry-content">
                                    <p>Euismod atras vulputate iltricies etri elit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per incep tos himens.</p>

                                    <a href="{{ route('blogView', ['slug'=>$item->slug]) }}" class="read-more">Read More <i class="icon-angle-double-right"></i></a>
                                </div><!-- End .entry-content -->
                            </div><!-- End .entry-body -->
                        </article>

                        <article class="entry">
                            <div class="entry-media">
                                <a href="{{ route('blogView', ['slug'=>$item->slug]) }}">
                                    <img src="{{ URL::asset('public/frontend/assets/images/blog/related/post-1.jpg') }}" alt="Post">
                                </a>
                            </div><!-- End .entry-media -->

                            <div class="entry-body">
                                <div class="entry-date">
                                    <span class="day">11</span>
                                    <span class="month">Apr</span>
                                </div><!-- End .entry-date -->

                                <h2 class="entry-title">
                                    <a href="{{ route('blogView', ['slug'=>$item->slug]) }}">Post Format - Image</a>
                                </h2>

                                <div class="entry-content">
                                    <p>Euismod atras vulputate iltricies etri elit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per incep tos himens.</p>

                                    <a href="{{ route('blogView', ['slug'=>$item->slug]) }}" class="read-more">Read More <i class="icon-angle-double-right"></i></a>
                                </div><!-- End .entry-content -->
                            </div><!-- End .entry-body -->
                        </article>
                    </div><!-- End .owl-carousel -->
                </div><!-- End .related-posts --> --}}
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
