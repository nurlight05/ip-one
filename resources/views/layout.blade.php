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

        <link href="{{asset('css/style.css')}}?q={{rand()}}" rel="stylesheet" type="text/css">
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.2/css/all.css" integrity="sha384-fnmOCqbTlWIlj8LyTjo7mOUStjsKC4pOpQbqyi7RrhN7udi9RwhKkMHpvLbHG9Sr" crossorigin="anonymous">
        <link rel="stylesheet" href="{{asset('css/lightgallery.css')}}">
    </head>
    <body>

    @include('menu')

    @yield('content')

    <footer class="py-5" style="box-shadow: 0 0px 1rem rgba(0, 0, 0, 0.15) !important;">
        <div class="container">
            <div class="row">
                <div class="col-md-6 info" style="display: flex;flex-direction: column;justify-content: center;">
                        <div class="with-icon" style="background-image: url('{{asset('img/phone-icon.png')}}')">
                            <p>+7 (727) 364 53 30<br>
                                +7 (776) 757 57 57</p>
                        </div>
                        <div class="with-icon" style="background-image: url('{{asset('img/email-icon.png')}}')">
                            <p>info@ip-one.net</p>
                        </div>
                        <div class="with-icon" style="background-image: url('{{asset('img/skype-icon.png')}}')">
                            <p>live:info_868489</p>
                        </div>
                        <div class="mt-4">
                            <p>&#169; 2015-2019</p>
                        </div>
                </div>
                <div class="col-md-5 ml-auto">
                    {!!App\Content::where('name', 'Футер')->first()->translate()->content!!}
                </div>
            </div>
        </div>
    </footer>

	<div class="social">
      <ul>
         <li><a href="https://www.youtube.com/channel/UC2Y_5U3kt6BinPyJa8_nl4A"><img src="{{asset('img/youtube.png')}}" alt=""></a></li>
         <li><a href="https://instagram.com/imagine_people_official?igshid=1wfrbu5a15fq5"><img src="{{asset('img/instagram.png')}}" alt=""></a></li>
         <li><a href="https://t.me/imagine_people_official"><img src="{{asset('img/telegram.png')}}" alt=""></a></li>
      </ul>
   </div>

    <script src="{{asset('js/script.js')}}?q={{rand()}}"></script>
    <script>
        var $ = helper.$;
    </script>
    <script>
    $('.prod_unit').contextmenu(function() {
        return false;
    });
    </script>
	<script src="{{asset('js/lightgallery.min.js')}}"></script>
    <script src="{{asset('js/lg-video.js')}}"></script>
    <script src="{{asset('js/lg-autoplay.min.js')}}"></script>
    <script src="{{asset('js/main.js')}}?q={{rand()}}"></script>

    @stack('styles')
    @stack('scripts')
    </body>
</html>
