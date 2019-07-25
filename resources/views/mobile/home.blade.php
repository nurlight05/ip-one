@extends('mobile.layout')

@section('content')

<section class="container-fluid">
    <div class="row">
        <div class="col-12">
            <div class="main_slider">
                @foreach ($slides as $item)
                    @php
                        $item = $item->translate();
                    @endphp
                    <div class="item">
                        <div class="image" style="background-image: url('{{Voyager::image($item->image)}}')"></div>
                        <div class="title">{{$item->title}}</div>
                    </div>
                @endforeach
            </div>
        </div>
    </div>
</section>

<section class="container-fluid">
    <div class="row" style="margin-bottom: -5px;">
        <div class="col-6" style="padding-left: 0; padding-right: 1.5px;">
            <div class="news_slider">
                @foreach ($stocks as $item)
                    @php
                        $item = $item->translate();
                    @endphp
                    <a href="{{route('stocks.show', $item->id)}}">
                        <div class="item">
                            <div class="image" style="background-image: url('{{Voyager::image($item->img)}}'); height: 50vw;">
                                <div class="title">{{$item->title}}</div>
                            </div>
                        </div>
                    </a>
                @endforeach
            </div>
        </div>
        <div class="col-6" style="padding-left: 1.5px; padding-right: 0;">
            <div class="news_slider">
                @foreach ($news as $item)
                    @php
                        $item = $item->translate();
                    @endphp
                    <a href="{{route('news.show', $item->id)}}">
                        <div class="item">
                            <div class="image" style="background-image: url('{{Voyager::image($item->img)}}'); height: 50vw;">
                                <div class="title">{{$item->title}}</div>
                            </div>
                        </div>
                    </a>
                @endforeach
            </div>
        </div>
    </div>
</section>

<div class="open-imagine-people">
    <div class="container">
        {!!App\Content::where('name', 'ОТКРОЙ ДЛЯ СЕБЯ IMAGINE PEOPLE')->first()->translate()->content_mobile!!}
    </div>
</div>

@endsection

@push('scripts')
<script>
    helper.$('.main_slider').slick({arrows: true, dots: true,autoplay: false,autoplaySpeed: 3000});
    helper.$('.news_slider').slick({arrows: false, dots: false});
</script>
@endpush