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
				<ul class="country_list" style="padding-left: 0px;">
					@foreach($categories as $item)
					@php
						$item = $item->translate();
					@endphp
					<li class="">
						<p>{{$item->name}}</p>
						<ul class="city_list">
						@if(isset($products[$item->id]))
							@foreach ($products[$item->id] as $_product)
								@php
									$_product = $_product->translate();
								@endphp
								<li class="m-0 mb-2 month pl-2"><a href="{{route('products.show', $_product->id)}}" style="color: #31479d">{{$_product->name}}</a></li>
							@endforeach
						@endif
						</ul>
					</li>
					@endforeach
				</ul>
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
									<option value="390">KZT</option>
									<option value="65">RUB</option>
									<option value="1">USD</option>
									<option value="29.54">UAH</option>
									<option value="0.7">EUR</option>
									<option value="65">KGS</option>
								</select>
							</div>
							<input type="text" id="sum_of_bill" value="390">
						</div>
					</form>
					<p>1 y.e. = 390 KZT (@lang('тенге'))</p>
					<p>1 y.e. = 65 RUB (@lang('рублей'))</p>
					<p>1 y.e. = 1 USD (@lang('долларов'))</p>
					<p>1 y.e. = 29.54 UAH (@lang('гривен'))</p>
					<p>1 y.e. = 0.7 EUR (@lang('евро'))</p>	
					<p>1 y.e. = 65 KGS (@lang('кир. сомов'))</p>
				</div>
				<a href="#header_menu" class="toUp_btn"></a>
			</div>
			<div class="col-md-10 prod_unit" oncontextmenu="return false;" >
				<div class="product">
					<div class="img">
                        <img src="{{Voyager::image($product->img)}}" alt="" oncontextmenu="return false;" draggable="false">
					</div>
					<div class="description">
                        <h4>{{$product->name}}</h4>
                        <p>{{$product->mini_description}}</p>
					</div>
				</div>
                <div class="product_buy">
                    <p>@lang('стоимость'): {{$product->price}} @lang('у.е.')</p>
                    <p>@lang('структура'): {{$product->points}} @lang('баллов')</p>
                    <button class="unit_buy btn-invertion m-0 mt-4" style="font-weight: 400" data-toggle="modal" data-target="#exampleModal">@lang('купить')</button>
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
<style>
.prod_unit {
  -webkit-user-select: none;  
  -moz-user-select: none;    
  -ms-user-select: none;      
  user-select: none;
}
</style>
<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
		<div class="modal-header">
			<h5 class="modal-title" id="exampleModalLabel">{{$product->name}}</h5>
			<button type="button" class="close" data-dismiss="modal" aria-label="Close">
			<span aria-hidden="true">&times;</span>
			</button>
		</div>
		<div class="modal-body">
			{!!App\Content::where('name', 'Покупка продукта')->first()->translate()->content!!}
		</div>
		<div class="modal-footer">
			<button type="button" class="btn btn-primary" data-dismiss="modal">OK</button>
		</div>
		</div>
	</div>
</div>
@endsection
