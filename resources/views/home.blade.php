@extends('layout')

@section('content')

<div class="hello-slider main_slider">
    @foreach ($slides as $item)
        <div class="item" style="background-image: url('{{Voyager::image($item->image)}}')">
            <div class="container d-flex justify-content-center flex-column">
                <h1 class="title">{{$item->title}}</h1>
                <div class="description">{!!$item->description!!}</div>
                <div class="link"><a href="{{$item->url}}">узнать больше</a></div>
            </div>
        </div>
    @endforeach
</div>

<div class="my-4 d-flex justify-content-center align-items-center">
    <img src="{{asset('img/line.png')}}" style="width: 40%"/>
</div>

<div class="open-imagine-people">
    <div class="container">
        <h2>Открой для себя</h2>
        <h1>Imagine People</h1>
        <div class="row my-5 pb-5">
            <div class="col-12">
                <img src="{{asset('img/open-ip-one.png')}}" />
            </div>
        </div>
        <p>Став партнером компании, Вы приобретаете высокоэффективный бизнес, а так же<br>систему для развития Вашего бизнеса, где бы Вы не находились!</p>
    </div>
</div>

<div class="container-fluid products py-5 mb-5">
    <div class="row selects mb-5 nav align-items-center" id="nav-tab" role="tablist">
        <a class="ml-auto active mr-5" id="products-tab" data-toggle="tab" href="#products" role="tab" aria-controls="products" aria-selected="true">Наши продукты</a>
        <a class="mr-auto ml-5" id="new-products-tab" data-toggle="tab" href="#new-products" role="tab" aria-controls="new-products" aria-selected="false">Новинки</a>
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
                                <a href="{{route('products.show', $product)}}"><button type="button" class="btn btn-light btn-invertion shadow-sm rounded-0" style="position: absolute; margin-top: 20px;  {{$loop->iteration%2 ? 'left: 0;margin-left: 40px;' : 'right: 0;margin-right: 40px;'}}">подробнее</button></a>
                            </div>
                        </div>
                    </div>
                </div>
            @endforeach
        </div>
        <div class="row my-5">
            <a href="{{route('products.index')}}" class="btn btn-light btn-invertion shadow-sm rounded-0" style="display: block;font-size: 1.5rem;margin: auto;">смотреть ещё</a>
        </div>
      </div>
      <div class="tab-pane fade" id="new-products" role="tabpanel" aria-labelledby="new-products">
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
                                <a href="{{route('products.show', $product)}}"><button type="button" class="btn btn-light btn-invertion shadow-sm rounded-0" style="position: absolute; margin-top: 20px;  {{$loop->iteration%2 ? 'left: 0;margin-left: 40px;' : 'right: 0;margin-right: 40px;'}}">подробнее</button></a>
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
</script>
@endpush