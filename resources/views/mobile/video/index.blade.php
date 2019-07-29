@extends('mobile.layout')

@section('title', __('Видео'))

@section('content')
<section class="container-fluid">
    <div class="row">
        <div class="col-12">
            <div class="page_title">
                @lang('Видео')
            </div>
        </div>
        <div class="col-12 mb-3">
            <ul id="video-gallery" class="row">
                <li class="col-md-3 video" data-src="https://www.youtube.com/embed/S-cOFBMlNE8">
                    <a href="#"><iframe src="https://www.youtube.com/embed/S-cOFBMlNE8" allowfullscreen="" class="fr-draggable" width="100%" height="250" frameborder="0"></iframe></a>
                </li>
                <li class="col-md-3 video" data-src="https://www.youtube.com/embed/pvyS5A-NKNo">
                    <a href="#"><iframe src="https://www.youtube.com/embed/pvyS5A-NKNo" allowfullscreen="" class="fr-draggable" width="100%" height="250" frameborder="0"></iframe></a>
                </li>
            </ul>
        </div>
    </div>
</section>
@endsection

