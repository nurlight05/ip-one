@extends('layout')

@section('title', 'Видео')

@section('content')
<section class="container-fluid content inner_pages">
    <div class="row">
        <div class="col-md-2 border-right left-side">
            <h3 class="left_title">ВИДЕО</h3>
        </div>
        <div class="col-md-10 p-5">
            <p><span class="fr-video fr-fvc fr-dvi fr-draggable" contenteditable="false"><iframe src="https://www.youtube.com/embed/S-cOFBMlNE8" allowfullscreen="" class="fr-draggable" width="100%" height="600" frameborder="0"></iframe></span></p>

            <p><span class="fr-video fr-fvc fr-dvi fr-draggable" contenteditable="false"><iframe src="https://www.youtube.com/embed/pvyS5A-NKNo" allowfullscreen="" class="fr-draggable" width="100%" height="600" frameborder="0"></iframe></span></p>
        </div>
    </div>
</section>

@endsection

