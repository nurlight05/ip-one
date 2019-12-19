@extends('layout')

@section('title', __('Возможности'))

@section('content')
@php
    $content = $content->translate();
@endphp
<section class="container-fluid content">
    <div class="row">
        <div class="col-md-2 py-5 left-side showrooms-left">
            <h3 class="mb-5">@lang('Возможности')</h3>
            <img src="img/business.png" alt="" class="idea_icon">
            <div class="converter mt-4" id="converter">
                <h6>@lang('конвертер валют')</h6>
                <form action="">
                    <div class="convert_box">
                        <p class="part">@lang('y.e.')</p>
                        <input type="text" value="1" id="num_of_bill">
                    </div>
                    <div class="convert_box">
                        <div class="select_box">
                            <select name="" id="ex_rate">
                                <option value="330">KZT</option>
                                <option value="55">RUB</option>
                                <option value="1">USD</option>
                                <option value="25">UAH</option>
                                <option value="0.7">EUR</option>
                            </select>
                        </div>
                        <input type="text" id="sum_of_bill" value="300">
                    </div>
                </form>
                <p>1 y.e. = 330 KZT (@lang('тенге'))</p>
                <p>1 y.e. = 55 RUB (@lang('рублей'))</p>
                <p>1 y.e. = 1 USD (@lang('долларов'))</p>
                <p>1 y.e. = 25 UAH (@lang('гривен'))</p>
                <p>1 y.e. = 0.7 EUR (@lang('евро'))</p>	
            </div>
            <a href="#header_menu" class="toUp_btn"></a>
        </div>
        <div class="col-md-10 p-4 right-side bussines">
            {!!$content->content!!}
        </div>
    </div>

</section>

@endsection

