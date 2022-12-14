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

        <script src="https://cdn.jsdelivr.net/npm/js-cookie@2/src/js.cookie.min.js"></script>
        <script src="{{asset('js/google-translate.js')}}"></script>
        <script src="//translate.google.com/translate_a/element.js?cb=TranslateInit"></script>
    </head>
    <body>

    <nav class="mobile-hidden-onload" style="display: none;" id="menu">
        <div class="title">@lang('????????') <span class="close-button" style="float: right;padding-right: 10px;"><i class="fas fa-times"></i></span></div>
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
                                    <a href="{{$item->children->count() ? '#' : url($item->link())}}" style="color: #fff;text-transform: capitalize;"@if($item->children->count()) onclick="return false;" @endif>{{$item->title}}</a> @if($item->children->count()) <i class="fas fa-angle-down"></i> @endif
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
                                    <a href="{{url($child->link())}}" style="color: #fff;text-transform: capitalize;font-size: 20px;">{{$child->title}}</a>
                                </div>
                                @endforeach
                            </div>
                        </div>
                        @endif
                    </div>
                    @endforeach
                </div>
                <div class="row">
                    <div class="col-12 d-flex justify-content-center" style="padding: 10px;font-size: 2rem;color: #fdfdfd;">
                        <a href="https://www.youtube.com/channel/UC2Y_5U3kt6BinPyJa8_nl4A"><i class="fab fa-youtube mx-3" style="color: #fdfdfd;"></i></a>
                        <a href="https://www.instagram.com/imagine_people_official/"><i class="fab fa-instagram mx-3" style="color: #fdfdfd;"></i></a>
                        <a href="https://t.me/imagine_people_official"><i class="fab fa-telegram-plane mx-3" style="color: #fdfdfd;"></i></a>
                    </div>
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
                            <div class="col-3 item" style="position: inherit;">
                                <span class="search"><i class="fas fa-search"></i></span>
                                
                                <form action="{{url('/search')}}" class="search_form" style="display: none;position: absolute;left: 0;width: 100%;z-index: 999;background-color: #264796;box-shadow: 0px 14px 14px 0px #00000036;">
                                    <input type="text" name="search" style="width: 100%;">
                                    <a href="#" class="search_btn"></a>
                                </form>
                            </div>
                            <div class="col-3 item">
                                <!-- <span class="lang-change">{{strtoupper(app()->getLocale())}}</span> -->
                                <span data-google-current-lang="" class="lang-change notranslate"></span>
                                <ul class="lang" style="display: none;position: absolute;padding: 0 5px;background-color: #264796;z-index: 999;">
                                    <li><a href="#" data-google-lang="ru" class="notranslate">RU</a></li>
                                    <li><a href="#" data-google-lang="en" class="notranslate">EN</a></li>
                                    <li><a href="#" data-google-lang="zh-CN" class="notranslate">??????</a></li>
                                    <li><a href="#" data-google-lang="ar" class="notranslate">AR</a></li>
                                    <li><a href="#" data-google-lang="az" class="notranslate">AZ</a></li>
                                    <li><a href="#" data-google-lang="cs" class="notranslate">CS</a></li>
                                    <li><a href="#" data-google-lang="de" class="notranslate">DE</a></li>
                                    <li><a href="#" data-google-lang="el" class="notranslate">EL</a></li>
                                    <li><a href="#" data-google-lang="es" class="notranslate">ES</a></li>
                                    <li><a href="#" data-google-lang="et" class="notranslate">ET</a></li>
                                    <li><a href="#" data-google-lang="fi" class="notranslate">FI</a></li>
                                    <li><a href="#" data-google-lang="fr" class="notranslate">FR</a></li>
                                    <li><a href="#" data-google-lang="he" class="notranslate">HE</a></li>
                                    <li><a href="#" data-google-lang="hi" class="notranslate">HI</a></li>
                                    <li><a href="#" data-google-lang="hu" class="notranslate">HU</a></li>
                                    <li><a href="#" data-google-lang="hy" class="notranslate">HY</a></li>
                                    <li><a href="#" data-google-lang="it" class="notranslate">IT</a></li>
                                    <li><a href="#" data-google-lang="ka" class="notranslate">KA</a></li>
                                    <li><a href="#" data-google-lang="kk" class="notranslate">KK</a></li>
                                    <li><a href="#" data-google-lang="ky" class="notranslate">KY</a></li>
                                    <li><a href="#" data-google-lang="la" class="notranslate">LA</a></li>
                                    <li><a href="#" data-google-lang="lt" class="notranslate">LT</a></li>
                                    <li><a href="#" data-google-lang="pl" class="notranslate">PL</a></li>
                                    <li><a href="#" data-google-lang="ro" class="notranslate">RO</a></li>
                                    <li><a href="#" data-google-lang="tg" class="notranslate">TG</a></li>
                                    <li><a href="#" data-google-lang="uk" class="notranslate">UK</a></li>
                                    <li><a href="#" data-google-lang="uz" class="notranslate">UZ</a></li>
                                    <!-- <li><a href="{{url('/lang/ru')}}">RU</a></li>
                                    <li><a href="{{url('/lang/en')}}">EN</a></li>
                                    <li><a href="{{url('/lang/cn')}}">??????</a></li> -->
                                </ul>
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
                                    <p>&#169; 2015-{{date("Y")}}</p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-7 p-0">
                        {!!App\Content::where('name', '??????????')->first()->translate()->content_mobile!!}
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
            'padding': 300,
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

$( ".lang-change" ).click(function () {
    if ( $( ".lang" ).is( ":hidden" ) ) {
        $( ".lang" ).slideDown( "fast" );
    } else {
        $( ".lang" ).slideUp("fast");
    }
});

$( ".search" ).click(function () {
    if ( $( ".search_form" ).is( ":hidden" ) ) {
        $( ".search_form" ).slideDown( "fast" );
    } else {
        $( ".search_form" ).slideUp("fast");
    }
});
    </script>
    @stack('styles')
    @stack('scripts')
    </body>
</html>
