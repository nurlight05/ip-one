@extends('layout')

@section('title', __('Контакты'))

@section('content')
@php
    $content = $content->translate();
@endphp
<section class="container-fluid content inner_pages">
    <div class="row">
        <div class="col-md-2 left-side">
            <h3 class="left_title">@lang('Контакты')</h3>
            <a href="#header_menu" class="toUp_btn"></a>
        </div>
        <div class="col-md-10 contacts p-5">
            {!!$content->content!!}
        </div>
    </div>
</section>

@endsection

