@extends('layout')

@section('title', $news->title)

@php
$news = $news->translate();
@endphp

@section('content')
<section class="container-fluid content">
    <div class="row">
        <div class="col-md-2 py-5 left-side">
            <h3>@lang('Новости')</h3>
            @foreach ($months as $key => $item)
                <div class="month {{strpos($news->date, $item[2]) !== false ? 'active' : ''}}"><a href="{{route('news.index', ['year' => $item[0], 'month' => $item[1]])}}">{{$key}}</a></div>
            @endforeach
            <a href="{{route('news.index', ['event' => 1])}}"><h3 class="mt-5">@lang('Мероприятия')</h3></a>
            <a href="#header_menu" class="toUp_btn"></a>
        </div>
        <div class="col-md-10 p-4 right-side">
            <div class="news-content">
                <h3 class="mb-3" style="text-align: center;">{{$news->title}}</h3>
                <img src="{{Voyager::image($news->img)}}" style="float: right;margin-left: 30px;margin-bottom: 30px;width: 600px;"/>
                {!!$news->text!!}
            </div>
            <a href="{{route('news.index')}}" class="btn btn-light shadow-sm btn-invertion rounded-0 ml-5 mb-5" style="font-size: 20px;">@lang('лента новостей')</a>

        </div>
    </div>

</section>

@endsection