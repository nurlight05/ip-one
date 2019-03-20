@extends('layout')

@section('title', 'Show Rooms')

@section('content')

<section class="container-fluid content inner_pages">
    <div class="row">
        <div class="col-md-2 left-side show_choice">
            <h3 class="left_title">SHOW <br>ROOMS</h3>
            <form action="{{url('showrooms')}}" class="search_room mb-4" style="padding-right: 30px">
                <input type="text" name="city" placeholder="введите город">
            </form>
            <ul class="country_list">
                @foreach ($places as $key => $item)
                <li class="{{in_array($_city, $item) ? 'active' : ''}}">
                    <p>{{$key}}</p>
                    <ul class="city_list">
                        @foreach ($item as $city)
                        <li class="m-0 mb-2 {{$_city == $city ? 'active' : ''}}"><a href="{{url('/showrooms')}}?country={{$key}}&city={{$city}}" style="color: #31479d">{{$city}}</a></li>
                        @endforeach
                    </ul>
                </li>
                @endforeach
            </ul>
            <a href="#header_menu" class="toUp_btn"></a>
        </div>
        <div class="col-md-10 show_room p-5">
            <table class="showTable">
                <tr>
                    <td>
                        <img src="img/city-icon.png" alt="">
                        <span>город</span>
                    </td>
                    <td>
                        <img src="img/adress-icon.png" alt="">
                        <span>адрес</span>
                    </td>
                    <td>
                        <img src="img/telephone-icon.png" alt="">
                        <span>телефоны</span>
                    </td>
                    <td>
                        <img src="img/avatar-icon.png" alt="">
                        <span>ФИО руководителя</span>
                    </td>
                </tr>
                @foreach ($showrooms as $item)
                <tr data-href="{{url('/showrooms', ['showroom' => $item['ID']])}}">
                    <td>{{$item['CITY']}} ({{$item['ID']}})</td>
                    <td class="no_align">{!!$item['ADDRESS']!!}</td>
                    <td>
                        {!!$item['PHONE']!!}
                    </td>
                    <td class="no_align">{!!$item['DIR_NAME']!!}</td>
                </tr>
                @endforeach
            </table>
        </div>
    </div>
</section>

@endsection

