@extends('layout')

@section('title', 'О нас')

@section('content')
<section class="container-fluid content inner_pages">
    <div class="row">
        <div class="col-md-2 left-side">
            <h3 class="left_title">О НАС</h3>
            <a href="#header_menu" class="toUp_btn"></a>
        </div>
        <div class="col-md-10 about p-5">
            {!!$content->content!!}
        </div>
    </div>
</section>
@endsection

