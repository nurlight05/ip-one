@extends('layout')

@section('title', __('Продукты'))

@section('content')
<section class="container-fluid content">
    <div class="row">
        <div class="col-md-2 py-5 left-side">
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
                        @foreach ($products[$item->id] as $product)
                            @php
                                $product = $product->translate();
                            @endphp
                            <li class="m-0 mb-2 month pl-2"><a href="{{route('products.show', $product->id)}}" style="color: #31479d">{{$product->name}}</a></li>
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
                                <option value="0.82">EUR</option>
                            </select>
                        </div>
                        <input type="text" id="sum_of_bill" value="390">
                    </div>
                </form>
                <p>1 y.e. = 390 KZT (@lang('тенге'))</p>
                <p>1 y.e. = 65 RUB (@lang('рублей'))</p>
                <p>1 y.e. = 1 USD (@lang('долларов'))</p>
                <p>1 y.e. = 29.54 UAH (@lang('гривен'))</p>
                <p>1 y.e. = 0.82 EUR (@lang('евро'))</p>	
            </div>
            <a href="#header_menu" class="toUp_btn"></a>
        </div>
        <div class="col-md-10 p-0 right-side">
            
            <div class="hello-slider" style="display: none;">
            @foreach ($slides as $item)
                @php
                    $item = $item->translate();
                @endphp
                <div class="item" style="background-image: url('{{Voyager::image($item->image)}}');">
                    <div class="container d-flex justify-content-center flex-column">
                        <h1 class="title">{{$item->title}}</h1>
                        <div class="description">{!!$item->description!!}</div>
                        @if(!empty($item->link))<div class="link"><a href="{{$item->url}}">@lang('узнать больше')</a></div>@endif
                    </div>
                </div>
            @endforeach
            </div>
            <div class="products p-5">
                @foreach($categories as $item)
                    @php
                        $item = $item->translate();
                    @endphp
                    <h2 style="text-align: center; color: #31479d; text-transform: uppercase; font-weight: 400;">{{$item->name}}</h2>
                    @if(isset($products[$item->id]))
                    <div class="row line d-flex justify-content-center my-5" style="background-image: url('{{asset('img/rectangle.png')}}');margin-bottom: 10rem !important;">
                        @foreach ($products[$item->id] as $product)
                            @php
                                $product = $product->translate();
                            @endphp
                            <div class="item">
                                <a href="{{route('products.show', $product->id)}}" style="display: block; position: relative;">
                                    <div class="img" style="background-image: url('{{Voyager::image($product->img)}}')">
                                        <div class="buy">@lang('Подробнее')</div>
                                    </div>
                                    <div style="position: absolute; width: 100%;">
                                        <div class="name">{!!nl2br($product->name)!!}</div>
                                        <div class="price">{{$product->price}} @lang('у.е.')</div>
                                    </div>
                                </a>
                            </div>
                            @if($loop->iteration%3 == 0)
                                </div>
                                <div class="row line d-flex justify-content-center my-5" style="background-image: url('{{asset('img/rectangle.png')}}');margin-bottom: 10rem !important;">
                            @endif
                        @endforeach
                    </div>
                    @endif
                @endforeach
            </div>
            <div class="gift_block">
                @if ($presents->count())
                <h5>@lang('ПОДАРОЧНЫЕ НАБОРЫ')</h5>
                @foreach ($presents as $item)
                @php
                    $item = $item->translate();
                @endphp
                <div class="gift_unit">
                    <div class="gift_unit-img">
                        <img src="{{Voyager::image($item->img)}}" alt="">
                    </div>
                    <div class="gift_unit-info">
                        <h6>{{$item->name}}</h6>
                        {!!$item->description!!}
                        <p class="price">@lang('цена'): {{$item->price}} @lang('у.е.') <a href="{{route('products.show', $item)}}"><button class="unit_buy">@lang('купить')</button></a></p>
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