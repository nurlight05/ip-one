<!doctype html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <title>@yield('title', 'IP ONE')</title>

        <link href="{{asset('css/style.css')}}?q={{rand()}}" rel="stylesheet" type="text/css">
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.2/css/all.css" integrity="sha384-fnmOCqbTlWIlj8LyTjo7mOUStjsKC4pOpQbqyi7RrhN7udi9RwhKkMHpvLbHG9Sr" crossorigin="anonymous">
    </head>
    <body>

    @include('menu')

    @yield('content')

    <footer class="py-5" style="box-shadow: 0 0px 1rem rgba(0, 0, 0, 0.15) !important;">
        <div class="container">
            <div class="row">
                <div class="col-md-6 info" style="display: flex;flex-direction: column;justify-content: center;">
                        <div class="with-icon" style="background-image: url('{{asset('img/phone-icon.png')}}')">
                            <p>+7 (707) 777 77 77<br>+7 (707) 777 77 77</p>
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
                    <img class="mb-4" src="{{asset('img/logo.png')}}" style="display: block;margin: auto;width: 250px;padding: 10px 0;"/>
                    <p class="mb-4 text-center" style="line-height: 1.5rem;">IMAGINE PEOPLE - это международная<br>интернет-компания,<br>которая дает возможность приобретать<br>продукт и вести<br>бизнес по всему миру!</p>
                    <p class="mb-4 text-center" style="line-height: 1.5rem;position: relative;"><i class="fas fa-map-marker-alt" style="position: absolute;left: -1.5rem;top: 0.5rem;font-size: 2rem;"></i> Республика Казахстан, 050000, город Алматы,<br>Бухар Жырау 33, Бизнес центр "Jenis", офис 4</p>
                </div>
            </div>
        </div>
    </footer>

    <script src="{{asset('js/script.js')}}?q={{rand()}}"></script>

    @stack('styles')
    @stack('scripts')
    </body>
</html>
