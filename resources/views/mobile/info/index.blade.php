@extends('mobile.layout')

@section('title', __('Инфо'))

@section('content')
@php
    $content = $content->translate();
@endphp
<section class="container-fluid">
    <div class="row">
        <div class="col-12">
            <div class="page_title">
                @lang('Инфо')
            </div>
        </div>
        <div class="col-12 mb-3">
            {!!$content->content_mobile!!}
        </div>
    </div>
</section>
@endsection

