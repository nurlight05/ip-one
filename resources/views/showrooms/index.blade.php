@extends('layout')

@section('title', 'Show Rooms')

@section('content')
<section class="container-fluid content inner_pages">
    <div class="row">
        <div class="col-md-2 border-right left-side show_choice">
            <h3 class="left_title">SHOW <br>ROOMS</h3>
            <ul class="country_list">
                <li>Казахстан</li>
                <li class="active">
                    Россия
                    <ul class="city_list">
                        <li class="active">Москва</li>
                        <li>Санкт-Петербург</li>
                        <li>Екатеринбург</li>
                        <li>Астрахань</li>
                        <li>Оренбург</li>
                    </ul>
                </li>
                <li>Германия</li>
                <li>Израиль</li>
            </ul>
        </div>
        <div class="col-md-10 show_choice">
            <h2>Москва (12)</h2>
            <ul class="contact_info page_list angle">
                <li>
                    <p>Адрес: </p>
                    <span>м. Пролетарская (м. Крестьянская застава), <br>ул. Воронцовская д.35Б, стр.2, офис 36, 4 этаж</span>
                </li>
                <li>Режим работы: понедельник-пятница с 10:00 до 18:00</li>
                <li>Телефоны: +7 985 300 15 20, +7 916 085 53 52</li>
                <li>E-mail: piligrim13566@mail.ru</li>
                <li class="info_name">Ф.И.О. руководителя: Келекешева Михаил Георгиевич</li>
            </ul>
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
	    var myGeocoder = ymaps.geocode(addr.getElementsByClassName('address')[0].outerText);
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
                    }
	            },
	            function (err) {}
	    );
    }));
    // .then(function() {
    //     for (const key in storage) {
    //         helper.$('#countries').append(
    //         '<div class="card">'+
    //         '  <div class="card-header p-0" id="headingOne">'+
    //         '    <h2 class="mb-0">'+
    //         '      <span class="collapsed p-0" data-toggle="collapse" data-target="#'+key+'" aria-expanded="false" aria-controls="'+key+'">'+
    //             key+
    //         '      </span>'+
    //         '    </h2>'+
    //         '  </div>'+
    //         '  <div id="'+key+'" class="collapse" aria-labelledby="headingOne" data-parent="#countries">'+
    //         '    <div class="card-body">'+
    //         _.map(Object.keys(storage[key]), function(name) {
    //             return '<div>'+(name!=undefined ? name : '')+'</div>';
    //         })+
    //         '    </div>'+
    //         '  </div>'+
    //         '</div>'
    //         );
    //     }
    // });
});
</script>
@endpush
