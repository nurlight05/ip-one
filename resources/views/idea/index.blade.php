@extends('layout')

@section('title', __('ИДЕЯ'))

@section('content')
@php
    $content = $content->translate();
@endphp
<section class="container-fluid content inner_pages">
    <div class="row">
        <div class="col-md-2 left-side">
            <h3 class="left_title">@lang('ИДЕЯ')</h3>
            <img src="img/idea-icon.png" alt="" class="idea_icon">
            <a href="#header_menu" class="toUp_btn"></a>
        </div>
        <div class="col-md-10 idea p-5">
            {!!$content->content!!}
        </div>
    </div>
</section>
@endsection

