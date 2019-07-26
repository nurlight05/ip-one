@extends('mobile.layout')

@section('title', $news->title)

@php
$news = $news->translate();
@endphp

@section('content')

<section class="container-fluid">
    <div class="row">
        <div class="col-12">
            <div class="page_title">
                @lang('Новости')
            </div>
        </div>
        <div class="col-12">
            <div class="row mb-4">
                <div class="col-4"><img src="{{Voyager::image($news->img)}}" style="width: 100px;height: 100px;"/></div>
                <div class="col-8"><h4 class="mb-3" style="text-align: center;text-align: left;">{{$news->title}}</h4></div>
                <p class="mb-0" style="color: #ab525d;width: 100%;text-align: right;padding-right: 10px;">
                    {{$news->date}}
                </p>
            </div>
            <div class="row">
                <div class="col-12">
                    {!!$news->text!!}
                </div>
            </div>
            <a href="{{route('news.index')}}" class="btn btn-light shadow-sm btn-invertion rounded-0 ml-5 mb-5" style="font-size: 20px;">@lang('лента новостей')</a>
        </div>
    </div>
</section>


@endsection