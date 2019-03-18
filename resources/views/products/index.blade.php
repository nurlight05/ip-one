@extends('layout')

@section('title', 'Продукты')

@section('content')
<section class="container-fluid content">
    <div class="row">
        <div class="col-md-2 py-5 left-side">
            <h3>Интернет магазин</h3>
            <h4>Наши продукты</h4>
            @foreach ($products as $item)
                <div class="month pl-4"><a href="{{route('products.show', $item)}}">{{$item->name}}</a></div>
            @endforeach
            <div class="converter mt-4">
                <h6>конвертер валют</h6>
                <form action="">
                    <div class="convert_box">
                        <p class="part">y.e.</p>
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
                <p>1 y.e. = 300 KZT (тенге)</p>
                <p>1 y.e. = 55 RUB (рублей)</p>
                <p>1 y.e. = 1 USD (долларов)</p>
                <p>1 y.e. = 25 UAH (гривен)</p>
                <p>1 y.e. = 0.7 EUR (евро)</p>	
            </div>
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
    helper.$('.hello-slider').slick({arrows: false, dots: true,autoplay: true,autoplaySpeed: 3000});
</script>
@endpush