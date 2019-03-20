@extends('layout')

@section('title', 'Отзывы')

@section('content')
<section class="container-fluid content">
    <div class="row">
        <div class="col-md-2 left-side">
            <h3 class="left_title">FAQ</h3>
            <img src="img/faq.png" alt="" class="faq_img">
            <a href="#header_menu" class="toUp_btn"></a>
        </div>
        <div class="col-md-10 faq p-5">
            {!!$content->content!!}
        </div>
    </div>
</section>

@endsection

