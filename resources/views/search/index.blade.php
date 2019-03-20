@extends('layout')

@section('title', 'Поиск')

@section('content')
<section class="container-fluid content inner_pages py-5">
    <div class="container">
        <div class="show_search">
            <p>Показать результаты для:</p>
            <span>"{{request()->search}}"</span>
        </div>
        <div class="search_page">
            <ul class="nav nav-pills mb-3" id="pills-tab" role="tablist">
                <li class="nav-item active">
                    <a class="nav-link active" id="pills-home-tab" data-toggle="pill" href="#click_description" role="tab" aria-controls="pills-home" aria-selected="true">ПРОДУКТЫ</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" id="pills-profile-tab" data-toggle="pill" href="#click_usage" role="tab" aria-controls="pills-profile" aria-selected="false">АКЦИИ</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" id="pills-contact-tab" data-toggle="pill" href="#click_theory" role="tab" aria-controls="pills-contact" aria-selected="false">НОВОСТИ</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" id="pills-profile-tab" data-toggle="pill" href="#click_composition" role="tab" aria-controls="pills-profile" aria-selected="false">СТРАНИЦЫ</a>
                </li>
            </ul>
            <div class="tab-content" id="pills-tabContent">
                <div class="tab-pane fade show active" id="click_description" role="tabpanel" aria-labelledby="pills-home-tab">
                    @foreach($products as $product)
                    <a href="{{route('products.show', $product)}}">
                        <div class="search_box">
                            <div class="search_box-img">
                                <img src="{{Voyager::image($product->img)}}" alt="">
                            </div>
                            <div class="search_content">
                                <h6>{{$product->name}}</h6>
                                <p>{{$product->mini_description}}</p>
                            </div>
                        </div>
                    </a>
                    @endforeach
                </div>
                <div class="tab-pane fade" id="click_usage" role="tabpanel" aria-labelledby="pills-profile-tab">
                    @foreach($stocks as $stock)
                    <a href="{{route('stocks.show', $stock)}}">
                        <div class="search_box">
                            <div class="search_box-img">
                                <img src="{{Voyager::image($stock->img)}}" alt="">
                            </div>
                            <div class="search_content">
                                <h6>{{$stock->title}}</h6>
                                <p>{{$stock->mini_description}}</p>
                            </div>
                        </div>
                    </a>
                    @endforeach
                </div>
                <div class="tab-pane fade" id="click_theory" role="tabpanel" aria-labelledby="pills-contact-tab">
                    @foreach($news as $new)
                    <a href="{{route('news.show', $new)}}">
                        <div class="search_box">
                            <div class="search_box-img">
                                <img src="{{Voyager::image($new->img)}}" alt="">
                            </div>
                            <div class="search_content">
                                <h6>{{$new->title}}</h6>
                                <p>{{$new->mini_description}}</p>
                            </div>
                        </div>
                    </a>
                    @endforeach
                </div>
                <div class="tab-pane fade" id="click_composition" role="tabpanel" aria-labelledby="pills-contact-tab">
                        @foreach($contents as $content)
                        <a href="{{url($content->slug)}}">
                            <div class="search_box">
                                <div class="search_content full_content">
                                    <h6>{{$content->name}}</h6>
                                    <p></p>
                                </div>
                            </div>
                        </a>
                        @endforeach
                </div>
            </div>
        </div>
    </div>
</section>
@endsection

