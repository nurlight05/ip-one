@extends('layout')

@section('title', 'Отзывы')

@section('content')
@php
    $content = $content->translate();
@endphp
<section class="container-fluid content inner_pages">
    <div class="row">
        <div class="col-md-2 left-side">
            <h3 class="left_title">@lang('ОТЗЫВЫ')</h3>
            <img src="img/faq.png" alt="" class="idea_icon">
            <a href="#header_menu" class="toUp_btn"></a>
        </div>
        <div class="col-md-10 p-5 comments">
            {!!$content->content!!}
        </div>
    </div>
</section>

@endsection

