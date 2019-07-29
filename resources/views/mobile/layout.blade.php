<!doctype html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <title>@yield('title', 'IP ONE')</title>

        <link rel="apple-touch-icon" sizes="57x57" href="{{asset('img/icons/apple-icon-57x57.png')}}">
        <link rel="apple-touch-icon" sizes="60x60" href="{{asset('img/icons/apple-icon-60x60.png')}}">
        <link rel="apple-touch-icon" sizes="72x72" href="{{asset('img/icons/apple-icon-72x72.png')}}">
        <link rel="apple-touch-icon" sizes="76x76" href="{{asset('img/icons/apple-icon-76x76.png')}}">
        <link rel="apple-touch-icon" sizes="114x114" href="{{asset('img/icons/apple-icon-114x114.png')}}">
        <link rel="apple-touch-icon" sizes="120x120" href="{{asset('img/icons/apple-icon-120x120.png')}}">
        <link rel="apple-touch-icon" sizes="144x144" href="{{asset('img/icons/apple-icon-144x144.png')}}">
        <link rel="apple-touch-icon" sizes="152x152" href="{{asset('img/icons/apple-icon-152x152.png')}}">
        <link rel="apple-touch-icon" sizes="180x180" href="{{asset('img/icons/apple-icon-180x180.png')}}">
        <link rel="icon" type="image/png" sizes="192x192"  href="{{asset('img/icons/android-icon-192x192.png')}}">
        <link rel="icon" type="image/png" sizes="32x32" href="{{asset('img/icons/favicon-32x32.png')}}">
        <link rel="icon" type="image/png" sizes="96x96" href="{{asset('img/icons/favicon-96x96.png')}}">
        <link rel="icon" type="image/png" sizes="16x16" href="{{asset('img/icons/favicon-16x16.png')}}">
        <link rel="manifest" href="{{asset('img/icons/manifest.json')}}">
        <meta name="msapplication-TileColor" content="#ffffff">
        <meta name="msapplication-TileImage" content="{{asset('img/icons/ms-icon-144x144.png')}}">
        <meta name="theme-color" content="#ffffff">

        <link href="{{asset('css/mobile-style.css')}}?q={{rand()}}" rel="stylesheet" type="text/css">
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.2/css/all.css" integrity="sha384-fnmOCqbTlWIlj8LyTjo7mOUStjsKC4pOpQbqyi7RrhN7udi9RwhKkMHpvLbHG9Sr" crossorigin="anonymous">
    </head>
    <body>

    <nav class="mobile-hidden-onload" style="display: none;" id="menu">
        <div class="title">@lang('МЕНЮ') <span class="close-button" style="float: right;padding-right: 10px;"><i class="fas fa-times"></i></span></div>
        <nav class="navbar navbar-expand-lg">
            <div class="collapse navbar-collapse show">
                <div class="accordion" id="accordionExample">
                    @foreach (menu('site', '_json') as $item)
                    @php
                        $item = $item->translate();
                    @endphp
                    <div class="card">
                        <div class="card-header" id="{{\Illuminate\Support\Str::camel($item->title)}}">
                            <h2 class="mb-0">
                                <button class="btn collapsed" type="button" data-toggle="collapse" data-target="#t{{\Illuminate\Support\Str::camel($item->title)}}" aria-expanded="false" aria-controls="t{{\Illuminate\Support\Str::camel($item->title)}}">
                                    <a href="{{$item->children->count() ? '#' : url($item->link())}}" style="color: #fff;"@if($item->children->count()) onclick="return false;" @endif>{{$item->title}}</a> @if($item->children->count()) <i class="fas fa-angle-down"></i> @endif
                                </button>
                            </h2>
                        </div>
                        @if($item->children->count())
                        <div id="t{{\Illuminate\Support\Str::camel($item->title)}}" class="collapse" aria-labelledby="{{\Illuminate\Support\Str::camel($item->title)}}" data-parent="#accordionExample">
                            <div class="card-body">
                                @foreach($item->children as $child)
                                @php
                                    $child = $child->translate();
                                @endphp
                                <div>
                                    <a href="{{url($child->link())}}" style="color: #fff;">{{$child->title}}</a>
                                </div>
                                @endforeach
                            </div>
                        </div>
                        @endif
                    </div>
                    @endforeach
                </div>
            </div>
          </nav>
    </nav>

    <div id="panel">
        <header>
            <div class="container-fluid">
                <div class="row">
                    <div class="col-12 title">
                        <a href="{{url('/')}}">IMAGINE <b>PEOPLE</b></a>
                    </div>
                    <div class="col-12 menu">
                        <div class="row">
                            <div class="col-3 item">
                                <a href="#" onclick="return false;" class="toggle-button"><i class="fas fa-bars"></i></a>
                            </div>
                            <div class="col-3 item">
                                <a href="//lk.ip-one.net"><i class="fas fa-user"></i></a>
                            </div>
                            <div class="col-3 item">
                                <a href="//lk.ip-one.net"><i class="fas fa-search"></i></a>
                            </div>
                            <div class="col-3 item">
                                <a href="//lk.ip-one.net">RU</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </header>
    
        @yield('content')
        
        <footer>
            <div class="container">
                <div class="row">
                    <div class="col-5">
                        <div class="row">
                            <div class="col-12">
                                <div class="with-icon" style="background-image: url('{{asset('img/phone-icon.png')}}')">
                                    <p>+7 (727) 364 53 30<br>
                                        +7 (776) 757 57 57</p>
                                </div>
                            </div>
                            <div class="col-12">
                                <div class="with-icon" style="background-image: url('{{asset('img/email-icon.png')}}')">
                                    <p>info@ip-one.net</p>
                                </div>
                            </div>
                            <div class="col-12">
                                <div class="with-icon" style="background-image: url('{{asset('img/skype-icon.png')}}')">
                                    <p>live:info_868489</p>
                                </div>
                            </div>
                            <div class="col-12">
                                <div class="mt-4">
                                    <p>&#169; 2015-2019</p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-7 p-0">
                        {!!App\Content::where('name', 'Футер')->first()->translate()->content_mobile!!}
                    </div>
                </div>
            </div>
        </footer>
    </div>

    <script src="{{asset('js/mobile-script.js')}}?q={{rand()}}"></script>
	<script src="{{asset('js/lightgallery.min.js')}}"></script>
    <script src="{{asset('js/lg-video.js')}}"></script>
    <script src="{{asset('js/lg-autoplay.min.js')}}"></script>
    <link rel="stylesheet" href="{{asset('css/lightgallery.css')}}">

    <script>
        var $ = helper.$;

        var slideout = new helper.Slideout({
            'panel': document.getElementById('panel'),
            'menu': document.getElementById('menu'),
            'padding': 250,
            'tolerance': 70
        });
        slideout.disableTouch();
        document.querySelector('.toggle-button').addEventListener('click', function() {
            slideout.toggle();
        });
        document.querySelector('.close-button').addEventListener('click', function() {
            slideout.toggle();
        });
        lightGallery(document.getElementById('lightgallery'));
        lightGallery(document.getElementById('video-gallery'));
        $(document).ready(function(){
            $('.mobile-hidden-onload').css('display', 'block');
        });
    </script>
    @stack('styles')
    @stack('scripts')
    </body>
</html>
