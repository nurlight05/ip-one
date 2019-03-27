@extends('layout')

@section('title', 'Акции')

@section('content')
<section class="container-fluid content news">
    <div class="row">
        <div class="col-md-2 py-5 left-side">
            <h3>@lang('Акции')</h3>
            @foreach ($months as $key => $item)
                <div class="month {{request()->input('year', 0) == $item[0] && request()->input('month', 0) == $item[1] ? 'active' : ''}}"><a href="{{route('stocks.index', ['year' => $item[0], 'month' => $item[1]])}}">{{$key}}</a></div>
            @endforeach
            <a href="#header_menu" class="toUp_btn"></a>
        </div>
        <div class="col-md-10 py-5 px-5 right-side news">
            @foreach ($stocks as $item)
                @php
                    $item = $item->translate();
                @endphp
                <div class="row item">
                    <div class="col-md-8 info d-flex flex-column">
                        <h2>{{$item->title}}</h2>
                        <p>{{$item->mini_description}}</p>
                        <p class="mt-auto">
                            {{$item->date}}
                            <a href="{{route('stocks.show', $item->id)}}" class="btn btn-light shadow-sm btn-invertion rounded-0" style="float:right;">@lang('читать далее')</a>
                        </p>
                    </div>
                    <div class="col-md-4 img" style="background-image: url('{{Voyager::image($item->img)}}')"></div>
                </div>
            @endforeach
            @if(!$stocks->count())
            <h3 style="text-align: center">@lang('Нет акций за указанный период')</h3>
            @endif
            {{ $stocks->appends(request()->all())->links() }}
        </div>
    </div>

</section>

@endsection