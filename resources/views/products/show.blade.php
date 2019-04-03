@extends('layout')

@section('title', $product->name)

@php
$product = $product->translate();
@endphp

@section('content')

<section class="container-fluid content inner_pages">
		<div class="row">
			<div class="col-md-2 left-side py-5">
				<h3>@lang('Продукты')</h3>
				<h4>@lang('Наши продукты')</h4>
				@foreach ($products as $item)
					<div class="month pl-4"><a href="{{route('products.show', $item)}}">{{$item->name}}</a></div>
				@endforeach
				<div class="converter" id="converter">
					<h6>@lang('конвертер валют')</h6>
					<form action="">
						<div class="convert_box">
							<p class="part">@lang('у.е.')</p>
							<input type="text" value="1" id="num_of_bill">
						</div>
						<div class="convert_box">
							<div class="select_box">
								<select name="" id="ex_rate">
									<option value="300">KZT</option>
									<option value="55">RUB</option>
									<option value="1">USD</option>
									<option value="25">UAH</option>
									<option value="0.7">EUR</option>
								</select>
							</div>
							<input type="text" id="sum_of_bill" value="300">
						</div>
					</form>
					<p>1 y.e. = 300 KZT (@lang('тенге'))</p>
					<p>1 y.e. = 55 RUB (@lang('рублей'))</p>
					<p>1 y.e. = 1 USD (@lang('долларов'))</p>
					<p>1 y.e. = 25 UAH (@lang('гривен'))</p>
					<p>1 y.e. = 0.7 EUR (@lang('евро'))</p>	
				</div>
				<a href="#header_menu" class="toUp_btn"></a>
			</div>
			<div class="col-md-10 prod_unit">
				<div class="product">
					<div class="img">
                        <img src="{{Voyager::image($product->img)}}" alt="">
					</div>
					<div class="description">
                        <h4>{{$product->name}}</h4>
                        <p>{{$product->mini_description}}</p>
					</div>
				</div>
                <div class="product_buy">
                    <p>@lang('стоимость'): {{$product->price}} @lang('у.е.')</p>
                    <p>@lang('структура'): {{$product->points}} @lang('баллов')</p>
                    <a href="//shop.ip-one.net"><button class="unit_buy btn-invertion m-0 mt-4" style="font-weight: 400">@lang('купить')</button></a>
                </div>
				<div class="prod_unit-info p-5">
					{!!$product->description!!}
					{{-- <ul class="nav nav-pills mb-3" id="pills-tab" role="tablist">
						<li class="nav-item active">
							<a class="nav-link active" id="pills-home-tab" data-toggle="pill" href="#click_description" role="tab" aria-controls="pills-home" aria-selected="true">подробное описание</a>
						</li>
						<li class="nav-item">
							<a class="nav-link" id="pills-profile-tab" data-toggle="pill" href="#click_usage" role="tab" aria-controls="pills-profile" aria-selected="false">применение</a>
						</li>
						<li class="nav-item">
							<a class="nav-link" id="pills-contact-tab" data-toggle="pill" href="#click_theory" role="tab" aria-controls="pills-contact" aria-selected="false">теория и экспериментальная база</a>
						</li>
						<li class="nav-item">
							<a class="nav-link" id="pills-profile-tab" data-toggle="pill" href="#click_composition" role="tab" aria-controls="pills-profile" aria-selected="false">состав</a>
						</li>
						<li class="nav-item">
							<a class="nav-link" id="pills-contact-tab" data-toggle="pill" href="#click_comments" role="tab" aria-controls="pills-contact" aria-selected="false">отзывы</a>
						</li>
					</ul>
					<div class="tab-content" id="pills-tabContent">
						<div class="tab-pane fade show active" id="click_description" role="tabpanel" aria-labelledby="pills-home-tab">ABC</div>
						<div class="tab-pane fade" id="click_usage" role="tabpanel" aria-labelledby="pills-profile-tab">IPSUM</div>
						<div class="tab-pane fade" id="click_theory" role="tabpanel" aria-labelledby="pills-contact-tab">LORAN</div>
						<div class="tab-pane fade" id="click_composition" role="tabpanel" aria-labelledby="pills-contact-tab">HELLO</div>
						<div class="tab-pane fade" id="click_comments" role="tabpanel" aria-labelledby="pills-contact-tab">WORLD</div>
					</div> --}}
				</div>
			</div>
		</div>
	</section>

@endsection