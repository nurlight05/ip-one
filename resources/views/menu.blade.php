@php
    $left_menu = collect(menu('site', '_json'));
    $right_menu = $left_menu->splice(4);
@endphp


<div style="position: fixed;width: 100%;z-index: 10;opacity: 0.9;" id="main_header_menu">
<nav class="navbar navbar-expand-lg navbar-light p-0 shadow-sm main_nav" style="z-index: 90; background-color: #fff; height: 120px;">
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#header_menu" aria-controls="header_menu" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>
    
    <div class="collapse navbar-collapse col-md-5 header_menu" id="header_menu" style="padding: 20px">
        <ul class="navbar-nav mr-auto">
            @foreach ($left_menu as $item)
                @php
                    $item = $item->translate();
                @endphp
                <li class="nav-item">
                    <a href="{{$item->children->count() ? '#' : url($item->link())}}" class="nav-link drop_second_menu" id="drop_second_menu_{{$item->id}}" style="cursor: pointer;">{{$item->title}} @if($item->children->count()) @endif</a>
                </li>
            @endforeach
        </ul>
    </div>

    <div class="col-md-2">
        <a href="{{url('/')}}"><img class="logo" src="{{asset('img/logo.png')}}" style="display: block;margin: auto;height: 100px;padding: 10px 0;"/></a>
    </div>

    <div class="collapse navbar-collapse col-md-5">
        <div class="d-block right-menu ml-auto text-right header_menu" style="padding: 20px 45px 0 0;">
            <ul class="navbar-nav ml-auto">
                @foreach ($right_menu as $item)
                    @php
                        $item = $item->translate();
                    @endphp
                    <li class="nav-item">
                        <span href="{{$item->children->count() ? '#' : url($item->link())}}" class="nav-link" id="drop_second_menu_{{$item->id}}" style="cursor: pointer;">{{$item->title}} @if($item->children->count()) @endif</span>
                    </li>
                @endforeach
                <li class="nav-item" style="padding: 8px 0;">
                    <form action="{{url('/search')}}" class="search_form">
                        <input type="text" name="search">
                        <a href="#" class="search_btn"></a>
                    </form>
                </li>
                <!-- <li class="nav-item" style="padding: 8px 0;">
                    <a href="//shop.ip-one.net"><i class="fas fa-shopping-bag"></i></a>
                </li> -->
                <li class="nav-item" style="padding: 8px 0;">
                    <a href="//lk.ip-one.net"><i class="fas fa-user"></i></a>
                </li>
                <li class="nav-item" style="padding: 8px 0;">
                    <ul class="lang" style="top: 28px;">
                        {{-- <li style="color: rgba(0, 0, 0, 0.5);">{{strtoupper(app()->getLocale())}}</li> --}}
                        {{-- <li><a href="{{url('/lang/ru')}}">RU</a></li>
                        <li><a href="{{url('/lang/en')}}">EN</a></li>
                        <li><a href="{{url('/lang/cn')}}">中文</a></li> --}}
                        <li style="color: rgba(0, 0, 0, 0.5);" data-google-current-lang="" class="notranslate"></li>
                        <li><a href="#" data-google-lang="ru" class="notranslate">RU</a></li>
                        <li><a href="#" data-google-lang="en" class="notranslate">EN</a></li>
                        <li><a href="#" data-google-lang="zh-CN" class="notranslate">中文</a></li>
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
                    </ul>
                </li>
            </ul>
        </div>
    </div>
</nav>

<div class="container-fluid p-0 navbar navbar-expand-lg main_menu" style="opacity: 1;">
    @foreach (menu('site', '_json') as $item)
    @if($item->children->count())
        <div class="p-0 second_menu second_menu_{{$item->id}} d-flex justify-content-center">
            <ul class="navbar-nav shadow-sm p-0" style="display: inline-flex;width: 100%;">
                @foreach($item->children as $child)
                @php
                    $child = $child->translate();
                @endphp
                <li class="nav-item" style="margin: 0 10px;">
                    <a href="{{url($child->link())}}" class="nav-link" href="#" style="text-align: center; cursor: pointer;">
                    {{$child->title}}</a>
                </li>
                @endforeach
            </ul>
        </div>
    @endif
    @endforeach
</div>

</div>

<div style="margin:0; padding:0; width:100%;height:120px;" id="after_menu_plain"></div>

@push('scripts')
<style>
    .second_menu > ul > li > .nav-link {
        color: rgba(0, 0, 0, 0.5) !important;
    }
    .second_menu > ul > li:hover > .nav-link {
        color: #264796 !important;
    }
    .navbar-light .navbar-nav .nav-link:hover {
        color: #264796;
    }
    .navbar-light .navbar-nav .active > .nav-link {
        color: #264796;
    }
    .search_form {
        width: 40px;
    }
    .search_form.search_expand {
        width: 200px;
    }
    .right-menu a {
        color: rgba(0, 0, 0, 0.5);
    }
    .right-menu a:hover {
        color: #264796;
    }
    .search_form .search_btn:before {
        color: rgba(0, 0, 0, 0.5);
    }
    .search_form.search_expand .search_btn:before {
        color: #264796;
    }
    .main_nav {
        transition: height 0.3s;
    }
    .main_nav img.logo {
        transition: height 0.3s;
    }
    .expand_menu {
        height: 85px !important;
    }
    .expand_menu img.logo {
        height: 85px !important;
    }
    .lang::after {
        color: rgba(0, 0, 0, 0.5);
    }
</style>
<script>
helper.init(function() {
    // helper.initExpandMenu('#drop_main_menu', '.main_menu');
    
    @foreach (menu('site', '_json') as $item)
        helper.initExpandMenu('#drop_second_menu_{{$item->id}}', '.second_menu_{{$item->id}}');
    @endforeach



    helper.$("img.svg").each(function () {
        var $img = helper.$(this);
        var attributes = $img.prop("attributes");
        var imgURL = $img.attr("src");
        helper.$.get(imgURL, function (data) {
            var $svg = helper.$(data).find('svg');
            $svg = $svg.removeAttr('xmlns:a');
            helper.$.each(attributes, function() {
                $svg.attr(this.name, this.value);
            });
            $img.replaceWith($svg);
            $svg.toggleClass("svg_icon");
        });
    });

    $('#after_menu_plain').css('height', $('#main_header_menu').outerHeight()+'px');


    window.onscroll = function() {scrollFunction()};
    scrollFunction();

    function scrollFunction() {
        if (document.body.scrollTop > 80 || document.documentElement.scrollTop > 80) {
            $( ".main_nav" ).addClass('expand_menu');
        } else {
            $( ".main_nav" ).removeClass('expand_menu');
        }
    }
});
</script>
@endpush
