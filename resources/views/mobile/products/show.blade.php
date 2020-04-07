@extends('mobile.layout')

@section('title', __('Продукты'))

@section('content')

<section class="container-fluid">
    <div class="row">
        <div class="col-12 p-0 product">
			<img src="{{Voyager::image($product->img)}}" style="width: 100%;">
			<div class="page_title">
				{{$product->name}}
			</div>
			<div class="price mb-4">
				<div>@lang('стоимость'): {{$product->price}} @lang('у.е.')</div>
				<div>@lang('структура'): {{$product->points}} @lang('баллов')</div>
			</div>
			<div class="desc">
				{!!$product->description!!}
			</div>
        </div>
    </div>
</section>

<a href="//shop.ip-one.net">
	<div class="product_buy">
		КУПИТЬ
	</div>
</a>
@endsection

{{-- 
<div class="col-md-10 prod_unit" oncontextmenu="return false;" >
		<div class="product">
			<div class="img">
			</div>
			<div class="description">
				<h4></h4>
				<p>{{$product->mini_description}}</p>
			</div>
		</div>
		<div class="product_buy">
			<p>@lang('стоимость'): {{$product->price}} @lang('у.е.')</p>
			<p>@lang('структура'): {{$product->points}} @lang('баллов')</p>
			<a href="//shop.ip-one.net"><button class="unit_buy btn-invertion m-0 mt-4" style="font-weight: 400">@lang('купить')</button></a>
		</div>
		<div class="prod_unit-info p-5">
			{!!$product->description!!} --}}