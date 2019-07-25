@extends('mobile.layout')

@section('content')

<div class="container-fluid">
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
</div>

<div class="container-fluid">
    <div class="row" style="margin-bottom: -5px;">
        <div class="col-6" style="padding-left: 0; padding-right: 2.5px;">
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
        <div class="col-6" style="padding-left: 0; padding-right: 0;">
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
</div>

<div class="open-imagine-people">
    <div class="container">
        {!!App\Content::where('name', 'ОТКРОЙ ДЛЯ СЕБЯ IMAGINE PEOPLE')->first()->translate()->content_mobile!!}
    </div>
</div>

<footer>
    <div class="container">
        <div class="row">
            <div class="col-5">
                <div class="row">
                    <div class="col-12">
                        <div class="with-icon" style="background-image: url('{{asset('img/phone-icon.png')}}')">
                            <p>+7 (727) 364 53 30<br>
                                +7 (776) 757 57 57</p>
                        </div>
                    </div>
                    <div class="col-12">
                        <div class="with-icon" style="background-image: url('{{asset('img/email-icon.png')}}')">
                            <p>info@ip-one.net</p>
                        </div>
                    </div>
                    <div class="col-12">
                        <div class="with-icon" style="background-image: url('{{asset('img/skype-icon.png')}}')">
                            <p>live:info_868489</p>
                        </div>
                    </div>
                    <div class="col-12">
                        <div class="mt-4">
                            <p>&#169; 2015-2019</p>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-7 p-0">
                {!!App\Content::where('name', 'Футер')->first()->translate()->content_mobile!!}
            </div>
        </div>
    </div>
</footer>
@endsection

@push('scripts')
<script>
    helper.$('.main_slider').slick({arrows: true, dots: true,autoplay: false,autoplaySpeed: 3000});
    helper.$('.news_slider').slick({arrows: false, dots: false});
</script>
@endpush