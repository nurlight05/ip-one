@extends('layout')

@push('styles')
<link rel="stylesheet" type="text/css" href="{{asset('vendor/slick/slick/slick.css')}}">
<link rel="stylesheet" type="text/css" href="{{asset('vendor/slick/slick/slick-theme.css')}}">
@endpush

@push('scripts')
<script src="https://code.jquery.com/jquery-3.3.1.min.js" integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8=" crossorigin="anonymous"></script>
<script src="{{asset('vendor/slick/slick/slick.min.js')}}"></script>
<script>
    $('.hello-slider').slick();
</script>
@endpush

@section('content')

<div class="hello-slider">
    @foreach ($slides as $item)
        <div class="item" style="background-image: url('{{Voyager::image($item->image)}}')">
            <div class="container d-flex justify-content-center flex-column">
                <h1 class="title">{{$item->title}}</h1>
                <div class="description">{!!$item->description!!}</div>
                <div class="link"><a href="{{url($item->link)}}">узнать больше</a></div>
            </div>
        </div>
    @endforeach
</div>

<div class="container-fluid main_page_menu my-2">
    <div class="row">
        <div class="col-12">
            {{menu('main_page_menu', 'home.main_page_menu')}}
        </div>
    </div>
</div>

@endsection