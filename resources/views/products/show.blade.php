@extends('layout')

@section('title', $product->name)

@section('content')

<section class="container-fluid content inner_pages">
		<div class="row">
			<div class="col-md-2 border-right left-side">
				<h3 class="left_title">ПРОДУКТЫ</h3>
			</div>
			<div class="col-md-10 prod_unit">
				<div class="prod_unit-name clearfix">
					<div class="float-left">
						<div class="prod_unit-img">
                        <img src="{{Voyager::image($product->img)}}" alt="">
						</div>
					</div>
					<div class="float-left text_center">
						<div class="prod_name-text">
							<h4>{{$product->name}}</h4>
							<p>{{$product->mini_description}}</p>
						</div>
						<div class="prod_name-price">
							<p>стоимость: 65 у.е</p>
							<p>структура: 25 баллов</p>
						</div>
					</div>
				</div>
				<div class="prod_unit-info">
					<ul class="nav nav-pills mb-3" id="pills-tab" role="tablist">
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
					</div>
				</div>
			</div>
		</div>
	</section>

@endsection