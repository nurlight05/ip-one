@extends('layout')

@section('title', $stock->title)

@section('content')
<section class="container-fluid content">
    <div class="row">
        <div class="col-md-2 py-5 left-side border-right">
            <h3>Акции</h3>
            <div class="month {{request()->input('month', 0) == 1 ? 'active' : ''}}"><a href="{{route('stocks.index', ['month' => 1])}}">Январь 2019</a></div>
            <div class="month {{request()->input('month', 0) == 2 ? 'active' : ''}}"><a href="{{route('stocks.index', ['month' => 2])}}">Февраль 2019</div>
            <div class="month {{request()->input('month', 0) == 3 ? 'active' : ''}}"><a href="{{route('stocks.index', ['month' => 3])}}">Март 2019</a></div>
            <div class="month {{request()->input('month', 0) == 4 ? 'active' : ''}}"><a href="{{route('stocks.index', ['month' => 4])}}">Апрель 2019</a></div>
            <div class="month {{request()->input('month', 0) == 5 ? 'active' : ''}}"><a href="{{route('stocks.index', ['month' => 5])}}">Май 2019</a></div>
            <div class="month {{request()->input('month', 0) == 6 ? 'active' : ''}}"><a href="{{route('stocks.index', ['month' => 6])}}">Июнь 2019</a></div>
            <div class="month {{request()->input('month', 0) == 7 ? 'active' : ''}}"><a href="{{route('stocks.index', ['month' => 7])}}">Июль 2019</a></div>
            <div class="month {{request()->input('month', 0) == 8 ? 'active' : ''}}"><a href="{{route('stocks.index', ['month' => 8])}}">Август 2019</a></div>
            <div class="month {{request()->input('month', 0) == 9 ? 'active' : ''}}"><a href="{{route('stocks.index', ['month' => 9])}}">Сентябрь 2019</a></div>
            <div class="month {{request()->input('month', 0) == 10 ? 'active' : ''}}"><a href="{{route('stocks.index', ['month' => 10])}}">Октябрь 2019</a></div>
            <div class="month {{request()->input('month', 0) == 11 ? 'active' : ''}}"><a href="{{route('stocks.index', ['month' => 11])}}">Ноябрь 2019</a></div>
            <div class="month {{request()->input('month', 0) == 12 ? 'active' : ''}}"><a href="{{route('stocks.index', ['month' => 12])}}">Декабрь 2019</a></div>
        </div>
        <div class="col-md-10 p-4 right-side">
            <div class="news-image mb-4" style="background-image: url('{{Voyager::image($stock->img)}}')"></div>

            <div class="news-content">
                <h3 class="mb-3" style="text-align: center;">{{$stock->title}}</h3>
                {!!$stock->text!!}
            </div>

        </div>
    </div>

</section>

@endsection