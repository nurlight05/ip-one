@extends('layout')

@section('title', __('Видео'))

@section('content')
<section class="container-fluid content inner_pages">
    <div class="row">
        <div class="col-md-2 left-side">
            <h3 class="left_title">@lang('Видео')</h3>
            <a href="#header_menu" class="toUp_btn"></a>
        </div>
        <div class="col-md-10 py-5">
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

@push('scripts')


@endpush
