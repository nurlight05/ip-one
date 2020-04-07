@extends('mobile.layout')

@section('title', 'Show Rooms')

@section('content')

<section class="container-fluid">
    <div class="row">
        <div class="col-12">
            <div class="page_title">
                SHOW ROOMS
            </div>
        </div>
        <div class="col-12">
            {!!App\Content::where('name', 'Showroom уведомление')->first()->translate()->content_mobile!!}
        </div>
        <div class="col-12">
            <p style="text-align: center; font-size: 14px;color: #b7b7b7;">@lang('Нажмите на нужный шоу-рум для подробной информации')</p>
        </div>
        <div class="col-5 mb-2">@lang('Выберите город'):</div>
        <div class="col-7 mb-2">
            <select class="form-control form-control-sm" onchange="window.location.replace('?city='+this.item(this.selectedIndex).value);">
                @foreach ($places as $country => $place)
                    @foreach ($place as $city)
                        <option value="{{$city}}" {{$_city == $city ? 'selected' : ''}}>@lang($country), @lang($city)</option>
                    @endforeach
                @endforeach
            </select>
        </div>
        <table class="table table-bordered">
            @foreach ($showrooms as $item)
            <tr>
            <tr data-href="{{url('/showrooms', ['showroom' => $item['ID']])}}">
                <td style="color: #264796">
                    {{$item['CITY']}} ({{$item['ID']}})
                </td>
                <td style="color: #264796;font-size: 10px;width: 65vw;">
                    Тел: {!!$item['PHONE']!!}<br>
                    {!!$item['ADDRESS']!!}
                </td>
            </tr>
            @endforeach
        </table>
    </div>
</section>

@endsection

@push('scripts')
<script>
    $('*[data-href]').on('click', function() {
        window.location = $(this).data("href");
    });
</script>
@endpush
