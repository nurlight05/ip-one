@extends('layout')

@section('title', 'Новости')

@section('content')
<section class="container-fluid content news">
    <div class="row">
        <div class="col-md-2 py-5 left-side border-right">
            <h3>Новости</h3>
            <div class="month {{request()->input('month', 0) == 1 ? 'active' : ''}}"><a href="{{route('news.index', ['month' => 1])}}">Январь 2019</a></div>
            <div class="month {{request()->input('month', 0) == 2 ? 'active' : ''}}"><a href="{{route('news.index', ['month' => 2])}}">Февраль 2019</div>
            <div class="month {{request()->input('month', 0) == 3 ? 'active' : ''}}"><a href="{{route('news.index', ['month' => 3])}}">Март 2019</a></div>
            <div class="month {{request()->input('month', 0) == 4 ? 'active' : ''}}"><a href="{{route('news.index', ['month' => 4])}}">Апрель 2019</a></div>
            <div class="month {{request()->input('month', 0) == 5 ? 'active' : ''}}"><a href="{{route('news.index', ['month' => 5])}}">Май 2019</a></div>
            <div class="month {{request()->input('month', 0) == 6 ? 'active' : ''}}"><a href="{{route('news.index', ['month' => 6])}}">Июнь 2019</a></div>
            <div class="month {{request()->input('month', 0) == 7 ? 'active' : ''}}"><a href="{{route('news.index', ['month' => 7])}}">Июль 2019</a></div>
            <div class="month {{request()->input('month', 0) == 8 ? 'active' : ''}}"><a href="{{route('news.index', ['month' => 8])}}">Август 2019</a></div>
            <div class="month {{request()->input('month', 0) == 9 ? 'active' : ''}}"><a href="{{route('news.index', ['month' => 9])}}">Сентябрь 2019</a></div>
            <div class="month {{request()->input('month', 0) == 10 ? 'active' : ''}}"><a href="{{route('news.index', ['month' => 10])}}">Октябрь 2019</a></div>
            <div class="month {{request()->input('month', 0) == 11 ? 'active' : ''}}"><a href="{{route('news.index', ['month' => 11])}}">Ноябрь 2019</a></div>
            <div class="month {{request()->input('month', 0) == 12 ? 'active' : ''}}"><a href="{{route('news.index', ['month' => 12])}}">Декабрь 2019</a></div>
        </div>
        <div class="col-md-10 py-5 px-5 right-side news">
            @foreach ($news as $item)
                <div class="row item">
                    <div class="col-md-8 info">
                        <h2>{{$item->title}}</h2>
                        <p>{{$item->mini_description}}</p>
                        <p>
                            {{$item->date}}
                            <a href="{{route('news.show', $item)}}" class="btn btn-light shadow-sm" style="background-color: #fff;font-weight: 600; color: #1d45a1;float:right;">читать далее</a>
                        </p>
                    </div>
                    <div class="col-md-4 img" style="background-image: url('{{Voyager::image($item->img)}}')"></div>
                </div>
            @endforeach
            @if(!$news->count())
            <h3 style="text-align: center">Нет новостей за указанный период</h3>
            @endif
            {{ $news->appends(request()->all())->links() }}
        </div>
    </div>

</section>

@endsection