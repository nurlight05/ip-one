@extends('layout')

@section('title', 'Show Rooms')

@section('content')
<section class="container-fluid content">
    <div class="row">
        <div class="col-md-2 py-5 left-side border-right showrooms-left">
            <h3>Show Rooms</h3>
            <div class="accordion" id="countries"></div>
        </div>
        <div class="col-md-10 p-4 right-side">
            
            <div id="showrooms_map" style="width: 100%; height: 500px; margin-bottom: 50px;"></div>
            <table class="table table-hover" style="width: 100%;">
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
                    @foreach($showrooms as $showroom)
                        <tr class="showroom">
                            <th scope="row">{{$loop->iteration}}</th>
                            <th>{!!$showroom['CITY']!!}</th>
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
        </div>
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
