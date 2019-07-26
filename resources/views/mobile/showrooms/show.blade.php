@extends('mobile.layout')

@section('title', 'Show Rooms')

@section('content')

<section class="container-fluid">
    <div class="row">
        <div class="col-12">
            <div class="page_title">
                SHOW ROOMS
            </div>
        </div>
        <div class="col-12">
            @foreach ($showrooms as $item)
            <div class="mb-5">
                <h2 class="m-0">{{$item['CITY']}} ({{$item['ID']}})</h2>
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
            {{-- <div id="showrooms_map" style="width: 100%; height: 500px; margin-bottom: 50px;"></div> --}}
            <a href="{{url('/showrooms')}}" class="btn btn-light shadow-sm btn-invertion rounded-0 my-3">Назад</a>
        </div>
    </div>
</section>

@endsection

@push('scripts')

<script src="https://api-maps.yandex.ru/2.1/?lang=ru_RU" type="text/javascript"></script>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/underscore.js/1.9.1/underscore-min.js"></script>
<script type="text/javascript">
var addresses = document.getElementsByClassName('showroom');
ymaps.ready(function () {
    var storage = {};

	var myMap = new ymaps.Map('showrooms_map', {
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
