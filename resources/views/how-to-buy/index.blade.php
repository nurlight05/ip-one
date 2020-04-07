@extends('layout')

@section('title', __('КАК КУПИТЬ?'))

@section('content')
@php
    $content = $content->translate();
@endphp
<section class="container-fluid content inner_pages">
    <div class="row">
        <div class="col-md-2 left-side">
            <h3 class="left_title">@lang('КАК КУПИТЬ?')</h3>
            <img src="{{asset('img/basket-icon.png')}}" alt="" class="basket_icon">
            <a href="#header_menu" class="toUp_btn"></a>
        </div>
        <div class="col-md-10 how_buy p-5">
            {!!$content->content!!}
        </div>
    </div>
</section>

@endsection

