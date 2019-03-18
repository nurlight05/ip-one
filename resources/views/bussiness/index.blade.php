@extends('layout')

@section('title', 'Бизнес возможности')

@section('content')
<section class="container-fluid content">
    <div class="row">
        <div class="col-md-2 py-5 left-side showrooms-left">
            <h3 class="mb-5">Возможности</h3>
            <img src="img/business.png" alt="" class="idea_icon">
            <a href="#header_menu" class="toUp_btn"></a>
        </div>
        <div class="col-md-10 p-4 right-side bussines">
            <h2 style="text-align: center;">Бизнес возможности</h2>
            <p style="text-align: center;">
                Стать партнером компании очень просто! Необходимо приобрести интернет-офис<br/>
                (стоимость за год обслуживания 20 у.е. для пакетов: «СТАРТ», «ПРОФЕССИОНАЛ», «МЕГА»<br/>
                и 10 у.е. для пакета «ПРОБНЫЙ»)<br/>
                и один из 4-х бизнес-пакетов<br/>
                (в состав пакета входит продукт компании)<br/>
            </p>
            <div class="row justify-content-center mb-5">
                    <div class="packet shadow py-4 d-flex flex-column mx-2">
                        <div class="packet-header">
                            <div class="number">1</div>
                            <div class="name">Пробный</div>
                        </div>
                        <div class="packet-body mb-4">
                            В состав пакета входит:<br/>
                            <span>1 шт Water for life</span><br/>
                            <span>1 шт Каталог продукции</span><br/>
                        </div>
                        <div class="packet-bottom mt-auto">
                            <div class="price">50у.е.</div>
                            <div class="add-price">
                                стоимость пакета - 40у.е.<br/>
                                интернет-офис - 10у.е.
                            </div>
                        </div>
                    </div>
                    <div class="packet shadow py-4 d-flex flex-column mx-2">
                        <div class="packet-header">
                            <div class="number">2</div>
                            <div class="name">Старт</div>
                        </div>
                        <div class="packet-body mb-4">
                            В состав пакета входит:<br/>
                            <span>3 шт Water for life</span><br/>
                            <span>1 шт Absolute Energy</span><br/>
                            <span>1 шт G-BIO</span><br/>
                            <span style="color: red;">+1 шт Alfa в подарок</span>
                        </div>
                        <div class="packet-bottom mt-auto">
                            <div class="price">270у.е.</div>
                            <div class="add-price">
                                стоимость пакета - 250у.е.<br/>
                                интернет-офис - 20у.е.
                            </div>
                        </div>
                    </div>
                    <div class="packet shadow py-4 d-flex flex-column mx-2">
                        <div class="packet-header">
                            <div class="number">3</div>
                            <div class="name">Профессионал</div>
                        </div>
                        <div class="packet-body mb-4">
                            В состав пакета входит:<br/>
                            <span>8 шт Water for life</span><br/>
                            <span>4 шт Absolute Energy</span><br/>
                            <span>4 шт G-BIO</span><br/>
                            <span>1 шт Alfa</span><br/>
                            <span>1 шт Clear Space</span><br/>
                            <span style="color: red;">+3 шт Wfl в подарок</span><br/>
                            <span style="color: red;">+1 шт Alfa в подарок</span>
                        </div>
                        <div class="packet-bottom mt-auto">
                            <div class="price">270у.е.</div>
                            <div class="add-price">
                                стоимость пакета - 250у.е.<br/>
                                интернет-офис - 20у.е.
                            </div>
                        </div>
                    </div>
                    <div class="packet shadow py-4 d-flex flex-column mx-2">
                        <div class="packet-header">
                            <div class="number">4</div>
                            <div class="name">Мега</div>
                        </div>
                        <div class="packet-body mb-4">
                            В состав пакета входит:<br/>
                            <span>16 шт Water for life</span><br/>
                            <span>8 шт Absolute Energy</span><br/>
                            <span>8 шт G-BIO</span><br/>
                            <span>2 шт Alfa</span><br/>
                            <span>2 шт Clear Space</span><br/>
                            <span style="color: red;">+6 шт Wfl в подарок</span><br/>
                            <span style="color: red;">+2 шт Alfa в подарок</span>
                        </div>
                        <div class="packet-bottom mt-auto">
                            <div class="price">2020у.е.</div>
                            <div class="add-price">
                                стоимость пакета - 2000у.е.<br/>
                                интернет-офис - 20у.е.
                            </div>
                        </div>
                    </div>
            </div>
            <p class="mb-5" style="text-align: center;">
                Пакеты отличаются между собой не только стоимостью, объёмом приобретаемой продукции, но и <br/>
                финансовыми возможностями в бизнес-плане! Для того, чтобы повысить свои финансовые возможности, Вы <br/>
                можете перейти на более высокий по статусу пакет, оплатив разницу между ранее приобретенным <br/>
                пакетом, и тем, на который Вы хотите перейти. <br/>
                Срок для перехода (апгрейда) — 3 месяца с момента регистрации в компании.<br/>
            </p>
            <h2 style="text-align: center;">Бизнес-план имеет 5 видов дохода:</h2>
            <span class="center-number mb-4">1</span>
            <h3 style="text-align: center">БОНУС 30% </h3>
            <p class="mb-5" style="text-align: center;">
                от товарооборота Вашей реферальной страницы<br/>
                Вы рекламируете Вашу продающую реферальную страницу. Ваши клиенты приобретают продукт компании <br/>
                через эту рекламную страницу по розничной стоимости, а компания возвращает Вам на счет 30% от <br/>
                розничной стоимости товара.
            </p>
            <span class="center-number mb-4">2</span>
            <h3 style="text-align: center">БОНУС ОНЛАЙН</h3>
            <img src="{{asset('img/bussiness-2.png')}}" style="width: 1200px; max-width: 100%;display: block;margin: auto;"/>
            <p class="mb-5" style="text-align: center;">
                В зависимости от того, на какой пакет подключается Ваш лично рекомендованный партнер, Вы получаете <br/>
                бонус от 10 у.е. до 400 у.е.<br/>
                Ограничений по количеству лично рекомендованных пакетов нет.<br/>
            </p>
            <span class="center-number mb-4">3</span>
            <h3 style="text-align: center">БИНАРНЫЙ СТЕПОВЫЙ БОНУС</h3>
            <p class="mb-5" style="text-align: center;">
                Для создания бизнес-структуры и получения права на все последующие бонусы, <br/>
                Вам необходимо подключить 2-х партнеров на любой из пакетов: один — в левую ветку,<br/>
                второй — в правую ветку.<br/>
                В бинарной структуре участвуют все бизнес пакеты, кроме пакета "ПРОБНЫЙ". <br/>
                Товарооборот рассчитывается в баллах:
            </p>

            <img src="{{asset('img/bussiness-3.png')}}" style="width: 800px; max-width: 100%;display: block;margin: auto;" class="mb-4"/>
            <p class="mb-5" style="text-align: center;">
                Необходимый товарооборот для закрытия степа — 400 баллов: 200 баллов слева и 200 баллов справа.<br/>
                Вам выплачиваются комиссионные в размере: 20 у.е; 30у.е; 40 у.е; 45 у.е; 50 у.е; 55 у.е; 60 у.е.<br/>
                (в зависимости от того на каком квалификационном ранге Вы находитесь). <br/>
                Расчет за каждый закрытый степ происходит онлайн (мгновенно).<br/>
                ВАЖНО: Условие для получения степовых бонусов: <br/>
                Ваша ежемесячная активность минимум на 40 баллов + КВАЛИФИКАЦИЯ:
            </p>

            <img src="{{asset('img/bussiness-figures.png')}}" style="width: 800px; max-width: 100%;display: block;margin: auto;" class="mb-4"/>

            <p class="mb-5" style="text-align: center;">
                <span style="color: red;">Менеджер</span> - 20 у.е. за каждый закрытый степ.<br/>
                Условия: личное подключение 2-х партнеров на любой из пакетов, одного — <br/>
                в левую ветку, второго — в правую ветку.<br/>
                Максимальная выплата в неделю - 500 у.е.<br/>
                
                <span style="color: red;">Директор</span> - 30 у.е. за каждый закрытый степ.<br/>
                Условия: двое из лично приглашенных партнеров имеют ранг МЕНЕДЖЕР: один — <br/>
                в левой ветке, один — в правой ветке.<br/>
                Максимальная выплата в неделю - 1000 у.е.<br/>
                
                <span style="color: red;">Региональный директор</span> - 40 у.е. за каждый закрытый степ.<br/>
                Условия: четверо из лично приглашенных партнеров имеют ранг МЕНЕДЖЕР: двое из них —<br/>
                    в левой ветке, двое — в правой ветке.<br/>
                Максимальная выплата в неделю - 3000 у.е.<br/>
                
                <span style="color: red;">Федеральный директор</span> - 45 у.е. за каждый закрытый степ.<br/>
                Условия: восемь из лично приглашенных партнеров имеют ранг МЕНЕДЖЕР: четверо из них — <br/>
                в левой ветке, четверо в — правой ветке.<br/>
                Плюс закрытых 125 степов за прошлый месяц.<br/>
                Максимальная выплата в неделю - 5000 у.е.<br/>
                
                <span style="color: red;">Международный директор</span> - 50 у.е. за каждый закрытый степ.<br/>
                Условия: десять из  лично приглашенных партнеров имеют ранг МЕНЕДЖЕР: пять из них — <br/>
                в левой ветке, пять в — правой ветке.<br/>
                Плюс закрытых 250 степов за прошлый месяц.<br/>
                Максимальная выплата в неделю - 7000 у.е.<br/>
                
                <span style="color: red;">Советник</span> - 55 у.е. за каждый закрытый степ.<br/>
                Условия: десять из лично приглашенных партнеров имеют ранг МЕНЕДЖЕР: пять из них —<br/>
                    в левой ветке, пять в — правой ветке.<br/>
                Плюс двое из лично приглашенных партнеров имеют ранг МЕЖДУНАРОДНЫЙ ДИРЕКТОР : один из них —<br/>
                    в левой ветке, второй — в правой ветке.<br/>
                Плюс закрытых 500 степов за прошлый месяц.<br/>
                Максимальная выплата в неделю - 10000 у.е.<br/>
                
                <span style="color: red;">Член совета правления</span> - 60 у.е. за каждый закрытый степ.<br/>
                Условия: десять лично приглашенных партнеров имеют ранг МЕНЕДЖЕР: пять из них — <br/>
                в левой ветке, пять в — правой ветке.<br/>
                Плюс двое из лично приглашенных партнеров имеют ранг СОВЕТНИК: один из них — <br/>
                в левой ветке, второй — в правой ветке.<br/>
                Плюс закрытых 1000 степов за прошлый месяц.<br/>
                Максимальная выплата в неделю - без ограничений.<br/>
            </p>

            <img src="{{asset('img/bussiness-4.png')}}" style="width: 1200px; max-width: 100%;display: block;margin: auto;" class="mb-4"/>

            <span class="center-number mb-4">4</span>
            <h3 style="text-align: center">РАНГОВЫЙ БОНУС</h3>

            <img src="{{asset('img/bussiness-5.png')}}" style="width: 1200px; max-width: 100%;display: block;margin: auto;" class="mb-4"/>

            <span class="center-number mb-4">5</span>
            <h3 style="text-align: center">ГЛОБАЛЬНЫЙ БОНУС</h3>

            <p class="mb-5" style="text-align: center;">
                Компания выделяет <span style="font-size: 2rem; color: red;">3%</span> со всего товарооборота и делит их между партнерами в квалификациях:<br/>
                Советник и Член совета правления.<br/>
                Бонус рассчитывается ежемесячно, выплачивается раз в полгода.
            </p>

            <span class="center-number mb-4">!</span>
            <h3 style="text-align: center; color: red;">ОБРАТИТЕ ВНИМАНИЕ</h3>
            
            <p class="mb-5" style="text-align: justify;">
                <span style="color: red;">1.</span>В случае, если в Вашей структуре еще никого нет ни в левой, ни в правой ноге, Ваш 
                первый лично приглашенный встанет в левую ногу! В случае, если в левой ноге уже кто-
                то есть (не важно - лично приглашенный это или нет), а в правой ноге никого нет, то 
                лично приглашенный встанет в правую ногу. В случае, если в обеих ногах на первом 
                уровне уже кто-то есть, то лично приглашенный пойдет в ту ногу, которую Вы указали. 
                Далее Вы регулируете постановку партнеров самостоятельно с помощью перемещения 
                стрелки. Для этого нужно зайти в «Настройки» и изменить местоположение стрелки.<br/><br/>
                    
                <span style="color: red;">2.</span>Предрегистрация ставит Вашего нового партнера в общий накопительный список. В 
                какую «ногу» он встанет - определяется в момент оплаты. Поэтому перед его оплатой 
                внимательно проверьте расположение стрелки в своем кабинете.<br/><br/>
                
                <span style="color: red;">3.</span>Партнеры, попадающие в Вашу структуру "переливом", т.е. от вышестоящих по 
                структуре, всегда попадают в правую ногу.<br/><br/>
                
                <span style="color: red;">4.</span>Квалификация требуется для получения всех видов бонусов, кроме БОНУСА ОНЛАЙН 
                (бонус за личную рекомендацию) и бонуса товарооборота страницы.<br/><br/>
                
                <span style="color: red;">5.</span>Квалификация определяется в начале каждого месяца автоматически и действует весь 
                месяц. Исключение составляют только те партнеры, которые выполняют условия новой 
                квалификации в течение первых 30 дней после вступления в партнеры IMAGINE PEOPLE 
                - у них квалификация присваивается автоматически, как только они выполняют ее 
                условия.
            </p>
            


        </div>
    </div>

</section>

@endsection

