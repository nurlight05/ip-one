@php
$orders = 0;
$days = 0;
if(in_array('firebird', \PDO::getAvailableDrivers())) {
    $_db	= new PDO('firebird:dbname=148.251.78.134:D:\imagine_new\imagine.fdb;charset=UTF8', 'WWWDATA', 'ololo123'); 
    $days = $_db->query('select end_date from promo_actions where id=2')->fetch(2)['END_DATE'];
    $orders = $_db->query('select count(*) as cnt from promo_orders where promo_id=2')->fetch(2)['CNT'];
    $days = \Illuminate\Support\Carbon::parse($days)->diffInDays(\Illuminate\Support\Carbon::now());
}
@endphp
<div style="position: fixed;top: 0;z-index: 9999;background-color: #f1f1f1;text-transform: uppercase;font-size: 1.5rem;font-weight: 600;display: flex;justify-content: center; padding: 5px 0;">
    <div style="display: inline-block;margin-right: 50px;">До бизнес форума в санкт-петербурге осталось: <span style="background-color: #264796;color: #fff;padding:5px;">{{$days}} дней</span></div>
    <div style="display: inline-block;">Билетов продано: <span style="background-color: #264796;color: #fff;padding:5px;">{{$orders}}</span></div>
</div>
<div style="position: relative;margin-top: 45px;" id="header_menu">
<nav class="navbar navbar-expand-lg navbar-light p-0 shadow-sm" style="z-index: 90; background-color: #fff">
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#header_menu" aria-controls="header_menu" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>
    
    <div class="collapse navbar-collapse col-md-4" id="header_menu" style="padding: 20px">
        <ul class="navbar-nav mr-auto">
            <li class="nav-item">
                <a class="nav-link" href="{{url('/')}}">@lang('Главная')</a>
            </li>
            <li class="nav-item">
                <span class="nav-link" href="#" id="drop_main_menu" style="cursor: pointer;">@lang('Меню') <i class="fas fa-angle-down"></i></span>
            </li>
        </ul>
    </div>

    <div class="col-md-4">
        <img src="{{asset('img/logo.png')}}" style="display: block;margin: auto;width: 250px;padding: 10px 0;"/>
    </div>

    <div class="col-md-4">
        <div class="d-block right-menu ml-auto text-right" style="padding-right: 45px;">
            <form action="{{url('/search')}}" class="search_form" style="margin-bottom: -17px;">
                <input type="text" name="search">
                <a href="#" class="search_btn"></a>
            </form>
            {{-- <a href="//shop.ip-one.net"><i class="fas fa-shopping-bag"></i></a> --}}
            <a href="//lk.ip-one.net"><i class="fas fa-user"></i></a>
            <ul class="lang">
                <li>{{strtoupper(app()->getLocale())}}</li>
                <li><a href="{{url('/lang/ru')}}">RU</a></li>
                {{-- <li><a href="#">KZ</a></li> --}}
                <li><a href="{{url('/lang/en')}}">EN</a></li>
                {{-- <li><a href="#">中文</a></li> --}}
            </ul>
            {{-- <a href="" style="text-transform: uppercase;">{{app()->getLocale()}}</a> --}}
        </div>
    </div>
</nav>

<div class="container-fluid p-0 navbar navbar-expand-lg main_menu">
    <ul class="navbar-nav mr-auto shadow-sm container-fluid">
        @foreach (menu('site', '_json') as $item)
            @php
                $item = $item->translate();
            @endphp
            <li class="nav-item">
                <a href="{{$item->children->count() ? '#' : url($item->link())}}" class="nav-link" id="drop_second_menu_{{$item->id}}" style="cursor: pointer;">{{$item->title}} @if($item->children->count()) <i class="fas fa-angle-down"></i> @endif</a>
            </li>
        @endforeach
    </ul>
    @foreach (menu('site', '_json') as $item)
    @if($item->children->count())
        <div class="p-0 second_menu second_menu_{{$item->id}} d-flex justify-content-center">
            <ul class="navbar-nav shadow-sm p-0" style="display: inline-flex;">
                @foreach($item->children as $child)
                @php
                    $child = $child->translate();
                @endphp
                <li class="nav-item" style="width: 250px;">
                    <a href="{{url($child->link())}}" class="nav-link" href="#" style="text-align: center; cursor: pointer;">
                    <div class="d-flex justify-content-center align-items-center" style="height: 85px;">
                        <img class="svg" src="{{asset('img/'.$child->icon_class)}}" style="max-width: 80px;max-height:85px;"/>
                    </div>
                    {{$child->title}}</a>
                </li>
                @endforeach
            </ul>
        </div>
    @endif
    @endforeach
</div>

</div>

@push('scripts')
<script>
helper.init(function() {
    helper.initExpandMenu('#drop_main_menu', '.main_menu');
    
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
});
</script>
@endpush