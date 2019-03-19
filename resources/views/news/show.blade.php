@extends('layout')

@section('title', $news->title)

@section('content')
<section class="container-fluid content">
    <div class="row">
        <div class="col-md-2 py-5 left-side">
            <h3>Новости</h3>
            @foreach ($months as $key => $item)
                <div class="month {{request()->input('year', 0) == $item[0] && request()->input('month', 0) == $item[1] ? 'active' : ''}}"><a href="{{route('news.index', ['year' => $item[0], 'month' => $item[1]])}}">{{$key}}</a></div>
            @endforeach
            <a href="#header_menu" class="toUp_btn"></a>
        </div>
        <div class="col-md-10 p-4 right-side">
            <div class="news-content">
                <h3 class="mb-3" style="text-align: center;">{{$news->title}}</h3>
                <img src="{{Voyager::image($news->img)}}" style="float: right;margin-left: 30px;margin-bottom: 30px;width: 600px;"/>
                {!!$news->text!!}
            </div>

        </div>
    </div>

</section>

@endsection