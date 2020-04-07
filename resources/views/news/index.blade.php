@extends('layout')

@section('title', __('Новости'))

@section('content')
<section class="container-fluid content news">
    <div class="row">
        <div class="col-md-2 py-5 left-side">
            <a href="{{route('news.index')}}"><h3>@lang('Новости')</h3></a>
            @foreach ($months as $key => $item)
                <div class="month {{request()->input('year', 0) == $item[0] && request()->input('month', 0) == $item[1] ? 'active' : ''}}"><a href="{{route('news.index', ['year' => $item[0], 'month' => $item[1]])}}">{{$key}}</a></div>
            @endforeach
            <a href="{{route('news.index', ['event' => 1])}}"><h3 class="mt-5">@lang('Мероприятия')</h3></a>
            <a href="#header_menu" class="toUp_btn"></a>
        </div>
        <div class="col-md-10 py-5 px-5 right-side news">
            @foreach ($news as $item)
                @php
                    $item = $item->translate();
                @endphp
                <div class="row item">
                    <div class="col-md-8 info d-flex flex-column">
                        <h2>{{$item->title}}</h2>
                        <p>{{$item->mini_description}}</p>
                        <p class="mt-auto">
                            {{$item->date}}
                            <a href="{{route('news.show', $item->id)}}" class="btn btn-light shadow-sm btn-invertion rounded-0" style="font-weight: 600; float:right;">@lang('читать далее')</a>
                        </p>
                    </div>
                    <div class="col-md-4 img" style="background-image: url('{{Voyager::image($item->img)}}')"></div>
                </div>
            @endforeach
            @if(!$news->count())
            <h3 style="text-align: center">@lang('Нет новостей за указанный период')</h3>
            @endif
            {{ $news->appends(request()->all())->links() }}
        </div>
    </div>

</section>

@endsection