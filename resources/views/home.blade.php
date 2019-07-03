@extends('layout')

@section('content')

<div class="hello-slider main_slider" style="display: none;">
    @foreach ($slides as $item)
        @php
            $item = $item->translate();
        @endphp
        <div class="item" style="background-image: url('{{Voyager::image($item->image)}}')">
            <div class="container d-flex justify-content-center flex-column">
                <h1 class="title">{{$item->title}}</h1>
                <div class="description">{!!$item->description!!}</div>
                @if(strlen($item->link))<div class="link"><a href="{{$item->url}}">@lang('узнать больше')</a></div>@endif
            </div>
        </div>
    @endforeach
</div>

<div class="container my-3">
    <div class="row">
        <div class="col-6">
            <div style="text-align: center; font-size: 3rem;">
                АКЦИИ
            </div>
            <div class="news-slider" style="display: none;">
                @foreach ($stocks as $item)
                    @php
                        $item = $item->translate();
                    @endphp
                    <div>
                        <a class="ref" href="{{route('stocks.show', $item->id)}}">
                            <div class="item row mx-0 my-3" style="height: 130px;">
                                <div class="col-md-5 img" style="background-image: url('{{Voyager::image($item->img)}}');background-size: cover;background-position: 50% 50%;height: 130px;"></div>
                                <div class="col-md-7 info d-flex flex-column">
                                    <h2 style="line-height: 0.7;font-size: 1.4rem;">{{$item->title}}</h2>
                                    <p>{{$item->mini_description}}</p>
                                </div>
                            </div>
                        </a>
                        <div class="item row mx-0 mb-3">
                            <div class="col-md-12">
                                <p class="mt-auto">
                                    {{$item->date}}
                                    <a href="{{route('stocks.index')}}" class="btn btn-light shadow-sm btn-invertion rounded-0" style="float:right;">@lang('все акции')</a>
                                </p>
                            </div>
                        </div>
                    </div>
                @endforeach
            </div>
        </div>
        <div class="col-6">
            <div style="text-align: center; font-size: 3rem;">
                НОВОСТИ
            </div>
            <div class="news-slider" style="display: none;">
                @foreach ($news as $item)
                    @php
                        $item = $item->translate();
                    @endphp
                    <div>
                        <a class="ref" href="{{route('news.show', $item->id)}}">
                            <div class="item row mx-0 my-3" style="height: 130px;">
                                <div class="col-md-4 img" style="background-image: url('{{Voyager::image($item->img)}}');background-size: cover;background-position: 50% 50%;height: 130px;"></div>
                                <div class="col-md-8 info d-flex flex-column">
                                    <h2 style="line-height: 0.7;">{{$item->title}}</h2>
                                    <p>{{$item->mini_description}}</p>
                                </div>
                            </div>
                        </a>
                        <div class="item row mx-0 mb-3">
                            <div class="col-md-12">
                                <p class="mt-auto">
                                    {{$item->date}}
                                    <a href="{{route('news.index')}}" class="btn btn-light shadow-sm btn-invertion rounded-0" style="float:right;">@lang('все новости')</a>
                                </p>
                            </div>
                        </div>
                    </div>
                @endforeach
            </div>
        </div>
    </div>
</div>

<style>
.ref:hover {
    text-decoration: none;
}
</style>

<!-- 
<div class="my-4 d-flex justify-content-center align-items-center">
    <img src="{{asset('img/line.png')}}" style="width: 40%"/>
</div> -->

<div class="open-imagine-people">
    <div class="container">
        {!!App\Content::where('name', 'ОТКРОЙ ДЛЯ СЕБЯ IMAGINE PEOPLE')->first()->translate()->content!!}
    </div>
</div>

<div class="container-fluid products py-5 mb-5">
    <div class="row selects mb-5 nav align-items-center" id="nav-tab" role="tablist">
        <a class="ml-auto active mr-5" id="products-tab" data-toggle="tab" href="#products" role="tab" aria-controls="products" aria-selected="true" style="color: #264796;">@lang('Наши продукты')</a>
        <a class="mr-auto ml-5" id="new-products-tab" data-toggle="tab" href="#new-products" role="tab" aria-controls="new-products" aria-selected="false" style="color: #264796;">@lang('Новинки')</a>
    </div>
    <div class="tab-content" id="pills-tabContent">
      <div class="tab-pane fade show active" id="products" role="tabpanel" aria-labelledby="products">
        <div class="row">
            @foreach ($products as $product)
                <div class="col-12">
                    <div class="row product-{{$loop->iteration%2 ? 'left' : 'right'}}">
                        <div class="col-md-5 order-{{$loop->iteration%2 ? '0' : '1'}} pr-0" style="z-index: 2;">
                            <div class="img" style="background-image: url('{{Voyager::image($product->img)}}')"></div>
                        </div>
                        <div class="col-md-7 order-{{$loop->iteration%2 ? '1' : '0'}} p-0 d-flex flex-column justify-content-center">
                            <div class="description py-5">
                                <h2>{{$product->name}}</h2>
                            </div>
                            <div class="button">
                                <a href="{{route('products.show', $product)}}"><button type="button" class="btn btn-light btn-invertion shadow-sm rounded-0" style="position: absolute; margin-top: 20px;  {{$loop->iteration%2 ? 'left: 0;margin-left: 40px;' : 'right: 0;margin-right: 40px;'}}">@lang('подробнее')</button></a>
                            </div>
                        </div>
                    </div>
                </div>
            @endforeach
        </div>
        <div class="row my-5">
            <a href="{{route('products.index')}}" class="btn btn-light btn-invertion shadow-sm rounded-0" style="display: block;font-size: 1.5rem;margin: auto;">@lang('смотреть ещё')</a>
        </div>
      </div>
      <div class="tab-pane fade" id="new-products" role="tabpanel" aria-labelledby="new-products">
        <div class="row">
            @foreach ($last_products as $product)
                <div class="col-12">
                    <div class="row product-{{$loop->iteration%2 ? 'left' : 'right'}}">
                        <div class="col-md-5 order-{{$loop->iteration%2 ? '0' : '1'}} pr-0" style="z-index: 2;">
                            <div class="img" style="background-image: url('{{Voyager::image($product->img)}}')"></div>
                        </div>
                        <div class="col-md-7 order-{{$loop->iteration%2 ? '1' : '0'}} p-0 d-flex flex-column justify-content-center">
                            <div class="description py-5">
                                <h2>{{$product->name}}</h2>
                            </div>
                            <div class="button">
                                <a href="{{route('products.show', $product)}}"><button type="button" class="btn btn-light btn-invertion shadow-sm rounded-0" style="position: absolute; margin-top: 20px;  {{$loop->iteration%2 ? 'left: 0;margin-left: 40px;' : 'right: 0;margin-right: 40px;'}}">@lang('подробнее')</button></a>
                            </div>
                        </div>
                    </div>
                </div>
            @endforeach
        </div>
      </div>
    </div>
</div>
@endsection

@push('scripts')
<script>
    helper.$('.hello-slider').slick({arrows: true, dots: true,autoplay: true,autoplaySpeed: 3000});
    helper.$('.news-slider').slick({arrows: true, dots: false});
</script>
@endpush