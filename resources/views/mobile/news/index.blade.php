@extends('mobile.layout')

@section('title', __('Новости'))

@section('content')

<section class="container-fluid">
    <div class="row">
        <div class="col-12">
            <div class="page_title">
                @lang('Новости')
            </div>
        </div>
        <div class="col-12 mb-3">
            @foreach ($news as $item)
                @php
                    $item = $item->translate();
                @endphp
                @if($loop->iteration == 1)
                <a href="{{route('news.show', $item->id)}}" style="color: #264796;">
                    <div class="row" style="border-bottom: 1px solid;">
                        <div class="col-4 mb-2">
                            <div class="image" style="background-image: url('{{Voyager::image($item->img)}}'); width: 100px; height: 100px;background-repeat: no-repeat;background-position: center center;background-size: cover;"></div>
                        </div>
                        <div class="col-8">
                            <div>{{$item->title}}</div>
                            <p class="mb-0" style="color: #ab525d;float: right;position: absolute;right: 10px;bottom: 5px;">
                                {{$item->date}}
                            </p>
                        </div>
                    </div>
                </a>
                @else
                <a href="{{route('news.show', $item->id)}}" style="color: #264796;">
                    <div class="row" style="border-bottom: 1px solid;">
                        <div class="col-12" style="height: 60px;">
                            <div>{{$item->title}}</div>
                            <p class="mb-0" style="color: #ab525d;float: right;position: absolute;right: 10px;bottom: 5px;">
                                {{$item->date}}
                            </p>
                        </div>
                    </div>
                </a>
                @endif
            @endforeach
            @if(!$news->count())
            <h3 style="text-align: center">@lang('Нет новостей за указанный период')</h3>
            @endif
        </div>
        <div class="col-12">
            {{ $news->appends(request()->all())->links() }}
        </div>
    </div>
</section>


@endsection