@extends('layout')

@section('title', 'Продукты')

@section('content')
<section class="container-fluid content">
    <div class="row">
        <div class="col-md-2 py-5 left-side border-right">
            <h3>Интернет магазин</h3>
            <h4>Наши продукты</h4>
            @foreach ($products as $item)
                <div class="month pl-4"><a href="#">{{$item->name}}</a></div>
            @endforeach
            <a href="#header_menu" class="toUp_btn"></a>
        </div>
        <div class="col-md-10 p-0 right-side">
            
            <div class="hello-slider">
            @foreach ($slides as $item)
                <div class="item" style="background-image: url('{{Voyager::image($item->image)}}')">
                    <div class="container d-flex justify-content-center flex-column" style="height: 55vh;">
                        <h1 class="title">{{$item->title}}</h1>
                        <div class="description">{!!$item->description!!}</div>
                        <div class="link"><a href="{{$item->url}}">узнать больше</a></div>
                    </div>
                </div>
            @endforeach
            </div>
            <div class="products p-5">
                <h2 style="text-align: center; color: #31479d; text-transform: uppercase; font-weight: 400;">Наши продукты</h2>
                <div class="row line d-flex justify-content-center my-5" style="background-image: url('{{asset('img/rectangle.png')}}')">
                    @foreach ($products as $item)
                        <div class="item">
                            <a href="{{route('products.show', $item)}}">
                                <div class="img" style="background-image: url('{{Voyager::image($item->img)}}')">
                                    <div class="buy">Купить</div>
                                </div>
                                <div class="name">{{$item->name}}</div>
                                <div class="price">{{$item->price}} у.е.</div>
                            </a>
                        </div>
                        @if($loop->iteration%3 == 0)
                            </div>
                            <div class="row line d-flex justify-content-center my-5" style="background-image: url('{{asset('img/rectangle.png')}}')">
                        @endif
                    @endforeach
                </div>
            </div>
            <div class="gift_block">
                @if ($presents->count())
                <h5>ПОДАРОЧНЫЕ НАБОРЫ</h5>
                @foreach ($presents as $item)
                <div class="gift_unit">
                    <div class="gift_unit-img">
                        <img src="{{Voyager::image($item->img)}}" alt="">
                    </div>
                    <div class="gift_unit-info">
                        <h6>{{$item->name}}</h6>
                        {!!$item->description!!}
                        <p class="price">цена: {{$item->price}} у.е <a href="{{route('products.show', $item)}}"><button class="unit_buy">купить</button></a></p>
                    </div>
                </div>
                @endforeach
                @endif
            </div>
        </div>
    </div>

</section>

@endsection

@push('scripts')
<script>
    helper.$('.hello-slider').slick({arrows: false, dots: true});
</script>
@endpush