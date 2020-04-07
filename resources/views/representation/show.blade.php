@extends('layout')

@section('title', 'Представительства')

@section('content')

<section class="container-fluid content inner_pages">
    <div class="row">
        <div class="col-md-3 left-side show_choice">
            <!-- <h3 class="left_title">Представительства</h3> -->
            <!-- <form action="{{url('representation')}}" class="search_room mb-4" style="padding-right: 30px">
                <input type="text" name="city" placeholder="введите город">
            </form> -->
            <ul class="country_list" style="margin-top: 20px;">
                @foreach ($places as $key => $item)
                <li class="{{$_country == $key ? 'active' : ''}}">
                    <p>{{$key}}</p>
                    <ul class="city_list">
                        @foreach ($item as $city)
                        <li class="m-0 mb-2 {{$_city == $city ? 'active' : ''}}"><a href="{{url('/representation')}}?country={{$key}}&city={{$city}}" style="color: #31479d">{{$city}}</a></li>
                        @endforeach
                    </ul>
                </li>
                @endforeach
            </ul>
            <a href="#header_menu" class="toUp_btn"></a>
        </div>
        <div class="col-md-9 show_choice p-5">
            <h3 class="left_title" style="margin-top: 0;">Представительства компании</h3>
            @foreach ($representations as $item)
            <div class="mb-5">
                <h2 class="m-0">{{$item['CITY']}}</h2>
                @if(isset($item['NOTIFY']))
                <h2 style="color: red;margin: 0;">{{$item['NOTIFY']}}</h2>
                @endif
                <ul class="contact_info page_list angle">
                    <li>
                        <p>Адрес: </p>
                        <span>{!!$item['ADDRESS']!!}</span>
                    </li>
                    <li>Режим работы: {!!$item['WORK_TIME']!!}</li>
                    <li>Телефоны: {!!$item['PHONE']!!}</li>
                    <li>E-mail: {!!$item['EMAIL']!!}</li>
                    <li class="info_name">Ф.И.О. руководителя: {!!$item['DIR_NAME']!!}</li>
                </ul>
            </div>
            @endforeach
            <div id="representations_map" style="width: 100%; height: 500px; margin-bottom: 50px;"></div>
        </div>
    </div>
    <table class="table table-hover d-none" style="width: 100%;">
        <thead>
            <tr class="success">
            <th>#</th>
            <th>Город</th>
            <th>Адрес</th>
            <th>Телефоны</th>
            <th>Режим работы</th>
            <th>Расписание школ</th>
            <th>E-mail</th>
            <th>ФИО руководителя</th>
        </tr>
    </thead>
        <tbody>
            @foreach($representations as $showroom)
                <tr class="showroom">
                    <th scope="row">{{$loop->iteration}}</th>
                    <th class="city">{!!$showroom['CITY']!!}</th>
                    <th class="address">{!!$showroom['ADDRESS']!!}</th>
                    <th>{!!$showroom['PHONE']!!}</th>
                    <th>{!!$showroom['WORK_TIME']!!}</th>
                    <th>{!!$showroom['SCHOOL_WORK_TIME']!!}</th>
                    <th>{!!$showroom['EMAIL']!!}</th>
                    <th>{!!$showroom['DIR_NAME']!!}</th>
                </tr>
            @endforeach
        </tbody>
    </table>
</section>

@endsection

@push('scripts')

<script src="https://api-maps.yandex.ru/2.1/?lang=ru_RU&apikey=6777a222-4a64-4475-bc52-3f5983ff242a" type="text/javascript"></script>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/underscore.js/1.9.1/underscore-min.js"></script>
<script type="text/javascript">
var addresses = document.getElementsByClassName('showroom');
ymaps.ready(function () {
    var storage = {};

	var myMap = new ymaps.Map('representations_map', {
        center: [55.74954, 37.621587],
         zoom: 2
    });
	Promise.all(_.map(addresses, function(addr) {
        // console.log(addr.getElementsByClassName('address')[0].outerText);
	    var myGeocoder = ymaps.geocode(addr.getElementsByClassName('city')[0].outerText+', '+addr.getElementsByClassName('address')[0].outerText);
	    return myGeocoder.then(
	            function (res) {
                    var obj = res.geoObjects.get(0);
                    if(obj) {
                        var country = obj.getCountry();
                        var city = obj.getLocalities()[0];
                        if(storage[country] == undefined)
                            storage[country] = {};

                        if(storage[country][city] == undefined)
                            storage[country][city] = [];

                        if(city != undefined)
                            storage[country][city].push(addr.getElementsByTagName('th'));
                            
                        var myPlacemark = new ymaps.Placemark(obj.geometry.getCoordinates(), {balloonContentHeader: addr.getElementsByClassName('address')[0].outerText});
                        
                        myMap.geoObjects.add(myPlacemark);
                        myMap.setCenter(obj.geometry.getCoordinates());
                        myMap.setZoom(12);
                    }
	            },
	            function (err) {}
	    );
    }));
});
</script>
@endpush
