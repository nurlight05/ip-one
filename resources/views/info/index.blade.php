@extends('layout')

@section('title', 'Инфо')

@section('content')
<section class="container-fluid content">
    <div class="row">
        <div class="col-md-2 border-right left-side pb-5">
            <h3 class="left_title">Инфо</h3>
            <img src="{{asset('img/faq.png')}}" alt="" class="faq_img">
            <a href="#header_menu" class="toUp_btn"></a>
        </div>
        <div class="col-md-10 p-5">
            <h3>Научное обоснование применения гидроплазмы в процессе тренировок</h3>
            <p style="font-size: 22px;"><a href="{{asset('files/Yi902BW77Zr3jMMGs0Cfetn0U9NPSWYrjv41RZYK.pdf')}}">Биофизическая реабилитация спортсменов с применением гидроплазмы в процессе тренировок.pdf</a></p>
            <p style="font-size: 22px;"><a href="{{asset('files/LUQKoxJtSPWV6nkozmah534jCK77NMTjjszmi02d.docx')}}">Этический кодекс партнеров Компании IMAGINE PEOPLE.docx</a></p>
        </div>
    </div>
</section>

@endsection

