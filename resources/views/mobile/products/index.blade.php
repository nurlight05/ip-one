@extends('mobile.layout')

@section('title', __('Продукты'))

@section('content')

<section class="container-fluid">
    <div class="row">
        <div class="col-12">
            <div class="page_title">
                @lang('Продукты')
            </div>
        </div>
        <div class="col-12">
            <div class="row products">
                @foreach ($products as $item)
                    @php
                        $item = $item->translate();
                    @endphp
                    <div class="col-6 p-0">
                        <a href="{{route('products.show', $item->id)}}">
                            <div class="item" style="background-image: url('{{Voyager::image($item->img)}}')">
                                <div class="desc">
                                    <div class="name">{{$item->name}}</div>
                                    <div class="price">{{$item->price}} @lang('у.е.')</div>
                                </div>
                            </div>
                        </a>
                    </div>
                @endforeach
            </div>
        </div>
    </div>
</section>

@endsection