@extends('layout')

@section('title', 'Идея')

@section('content')
<section class="container-fluid content inner_pages">
    <div class="row">
        <div class="col-md-2 left-side">
            <h3 class="left_title">ИДЕЯ</h3>
            <img src="img/idea-icon.png" alt="" class="idea_icon">
            <a href="#header_menu" class="toUp_btn"></a>
        </div>
        <div class="col-md-10 idea p-5">
            {!!$content->content!!}
        </div>
    </div>
</section>
@endsection

