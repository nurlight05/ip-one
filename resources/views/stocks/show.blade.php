@extends('layout')

@section('title', $stock->title)

@php
$stock = $stock->translate();
@endphp

@section('content')
<section class="container-fluid content">
    <div class="row">
        <div class="col-md-2 py-5 left-side">
            <h3>@lang('Акции')</h3>
            @foreach ($months as $key => $item)
                <div class="month {{strpos($stock->date, $item[2]) !== false ? 'active' : ''}}"><a href="{{route('stocks.index', ['year' => $item[0], 'month' => $item[1]])}}">{{$key}}</a></div>
            @endforeach
            <a href="#header_menu" class="toUp_btn"></a>
        </div>
        <div class="col-md-10 p-4 right-side">

            <div class="news-content">
                <h3 class="mb-3" style="text-align: center;">{{$stock->title}}</h3>
                <img src="{{Voyager::image($stock->img)}}" style="float: right;margin-left: 30px;margin-bottom: 30px;width: 600px;"/>
                {!!$stock->text!!}
            </div>
            <a href="{{route('stocks.index')}}" class="btn btn-light shadow-sm btn-invertion rounded-0 ml-5 mb-5" style="font-size: 20px;">@lang('лента акций')</a>

        </div>
    </div>

</section>

@endsection