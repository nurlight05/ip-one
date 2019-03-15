@extends('layout')

@section('title', 'Корзина')

@section('content')
<section class="container-fluid content inner_pages">
    <div class="row">
        <div class="col-md-2 border-right left-side">
            <h3 class="left_title">ИНТЕРНЕТ МАГАЗИН</h3>
            <a href="#header_menu" class="toUp_btn"></a>
        </div>
        <div class="col-md-10 basket p-5">
            <div class="issue" style="margin: 0;">
                <h4>Оформление заказа</h4>
                <div class="issue_btn">
                    {{-- <button class="issue_full">показать раскрыто</button> --}}
                    <button class="issue_clear">очистить корзину</button>
                </div>
            </div>
            <h1>Ваша корзина:</h1>
            <div class="basket--table">
                <table>
                    <tr>
                        <th>продукт</th>
                        <th>цена</th>
                        <th>количество</th>
                        <th>сумма</th>
                        <th></th>
                    </tr>
                    <tr>
                        <td><p>G-BIO</p></td>
                        <td><p>40 y.e</p></td>
                        <td class="number">
                            <div class="counter">
                                <span class="minus"><img src="img/angle-down.png" alt=""></span>
                                <input type="text" value="1"/>
                                <span class="plus"><img src="img/angle-down.png" alt=""></span>
                            </div>
                            <p>шт</p>
                        </td>
                        <td><p>80 y.e</p></td>
                        <td>
                            <a href="#" class="del"><img src="img/del.png" alt=""></a>
                        </td>
                    </tr>
                    <tr>
                        <td><p>G-BIO</p></td>
                        <td><p>40 y.e</p></td>
                        <td class="number">
                            <div class="counter">
                                <span class="minus"><img src="img/angle-down.png" alt=""></span>
                                <input type="text" value="1"/>
                                <span class="plus"><img src="img/angle-down.png" alt=""></span>
                            </div>
                            <p>шт</p>
                        </td>
                        <td><p>80 y.e</p></td>
                        <td>
                            <a href="#" class="del"><img src="img/del.png" alt=""></a>
                        </td>
                    </tr>
                    <tr>
                        <td><p>G-BIO</p></td>
                        <td><p>40 y.e</p></td>
                        <td class="number">
                            <div class="counter">
                                <span class="minus"><img src="img/angle-down.png" alt=""></span>
                                <input type="text" value="1"/>
                                <span class="plus"><img src="img/angle-down.png" alt=""></span>
                            </div>
                            <p>шт</p>
                        </td>
                        <td><p>80 y.e</p></td>
                        <td>
                            <a href="#" class="del"><img src="img/del.png" alt=""></a>
                        </td>
                    </tr>
                    <tr class="table--basket__total">
                        <td colspan="5">
                            <p>Итого: <span>240 y.e</span></p>
                        </td>
                    </tr>
                </table>
                <div class="order">
                    {{-- <button class="back_btn">вернуться</button> --}}
                    <button class="order_btn">оформить</button>
                </div>
            </div>
        </div>
    </div>
</section>

@endsection

