@extends('layout')

@section('content')

<div class="hello-slider">
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

<div class="open-imagine-people">
    <div class="container">
        <h2>Открой для себя</h2>
        <h1>Imagine People</h1>
        <div class="row my-5 pb-5">
            <div class="col-4">
                <img src="{{asset('img/open-ip-one-1.png')}}" />
            </div>
            <div class="col-4">
                <img src="{{asset('img/open-ip-one-2.png')}}" />
            </div>
            <div class="col-4">
                <img src="{{asset('img/open-ip-one-3.png')}}" />
            </div>
        </div>
        <p>Став партнером компании, Вы приобретаете высокоэффективный бизнес, а так же<br>систему для развития Вашего бизнеса, где бы Вы не находились!</p>
    </div>
</div>

<div class="container-fluid products py-5 mb-5">
    <div class="row selects mb-5">
        <div class="col-6 text-right" style="text-transform: uppercase;"><a data-toggle="pill" href="#products">Наши продукты</a></div>
        <div class="col-6 text-left" style="text-transform: uppercase;"><a data-toggle="pill" href="#new-products">Новинки</a></div>
    </div>
    <div class="tab-content" id="pills-tabContent">
      <div class="tab-pane fade show active" id="products" role="tabpanel">
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
                                <button type="button" class="btn btn-light shadow-sm" style="position: absolute;background-color: #fff; margin-top: 20px; font-weight: 600; color: #1d45a1; {{$loop->iteration%2 ? 'left: 0;margin-left: 40px;' : 'right: 0;margin-right: 40px;'}}">подробнее</button>
                            </div>
                        </div>
                    </div>
                </div>
            @endforeach
        </div>
        <div class="row my-5">
            <a href="{{route('products.index')}}" class="btn btn-light shadow-sm" style="background-color: #fff;font-weight: 600; color: #1d45a1;display: block;font-size: 1.5rem;margin: auto;">смотреть ещё</a>
        </div>
      </div>
      <div class="tab-pane fade" id="new-products" role="tabpanel">
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
                                <button type="button" class="btn btn-light shadow-sm" style="position: absolute;background-color: #fff; margin-top: 20px; font-weight: 600; color: #1d45a1; {{$loop->iteration%2 ? 'left: 0;margin-left: 40px;' : 'right: 0;margin-right: 40px;'}}">подробнее</button>
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
    helper.$('.hello-slider').slick({arrows: false, dots: true});
</script>
@endpush