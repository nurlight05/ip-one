<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" type="text/css" href="{{asset('css/style.css')}}?q={{rand()}}">
    @stack('styles')
</head>
<body>
    <header class="shadow">
        <nav class="navbar navbar-expand-lg navbar-light bg-light">
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            
            <div class="collapse navbar-collapse col-md-4 left" id="navbarSupportedContent">
                {{menu('site', 'menu')}}
            </div>
            <div class="col-md-4 center">
                <img class="logo d-block mx-auto" src="{{Voyager::image('images/logo.png')}}"/>
            </div>
            <div class="collapse navbar-collapse col-md-4 right">
                <ul class="navbar-nav ml-auto">
                    <li class="nav-item">
                        <a class="nav-link" href="{{url('/search')}}"><i class="fas fa-search"></i></a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="{{url('https://lk.ip-one.net/')}}"><i class="fas fa-user"></i></a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="{{url('/search')}}">RU</a>
                    </li>
                </ul>
            </div>
        </nav>
    </header>
    
    @yield('content')

    @stack('scripts')
</body>
</html>