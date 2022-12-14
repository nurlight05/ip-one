@extends('layout')

@section('title', __('Документы'))

@section('content')
<section class="container-fluid content inner_pages">
    <div class="row">
        <div class="col-md-2 left-side">
            <h3 class="left_title">@lang('Документы')</h3>
            <a href="#header_menu" class="toUp_btn"></a>
        </div>
        <div class="col-md-10 documents p-5">
            {!!$info->content!!}
            {!!$content->content!!}
        </div>
    </div>
</section>

@endsection

