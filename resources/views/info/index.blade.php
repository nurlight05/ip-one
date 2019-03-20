@extends('layout')

@section('title', 'Инфо')

@section('content')
<section class="container-fluid content">
    <div class="row">
        <div class="col-md-2 left-side pb-5">
            <h3 class="left_title">Инфо</h3>
            <img src="{{asset('img/faq.png')}}" alt="" class="faq_img">
            <a href="#header_menu" class="toUp_btn"></a>
        </div>
        <div class="col-md-10 p-5">
            {!!$content->content!!}
        </div>
    </div>
</section>

@endsection

