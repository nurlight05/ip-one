@extends('layout')

@section('title', $content->name)

@section('content')
<section class="container-fluid content">
    <div class="row">
        <div class="col-md-2 py-5 left-side border-right">
            <h3>{{$content->name}}</h3>
        </div>
        <div class="col-md-10 p-5 right-side">{!!$content->content!!}</div>
    </div>

</section>

@endsection

@push('scripts')

{!!$content->scripts!!}

@endpush