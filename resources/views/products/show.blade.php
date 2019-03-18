@extends('layout')

@section('title', $product->name)

@section('content')

<section class="container-fluid content inner_pages">
		<div class="row">
			<div class="col-md-2 left-side py-5">
				<h3>Интернет магазин</h3>
				<h4>Наши продукты</h4>
				@foreach ($products as $item)
					<div class="month pl-4"><a href="{{route('products.show', $item)}}">{{$item->name}}</a></div>
				@endforeach
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
                    <p>стоимость: {{$product->price}} у.е</p>
                    <p>структура: {{$product->points}} баллов</p>
                    <a href="//shop.ip-one.net"><button class="unit_buy m-0 mt-4">купить</button></a>
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