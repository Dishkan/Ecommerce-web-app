<div id="article">
	<h2>Контакты</h2>
	<p>Мы находимся по адресу г. Москва, ул. такая-то, д. такой-то.</p>
	<p>Мы работаем с 09:00 до 21:00 без перерыва и выходных.</p>
</div>
<div id="map" style="width:400px; height:300px"></div>
<script src="//api-maps.yandex.ru/2.0-stable/?load=package.standard&lang=ru-RU" type="text/javascript"></script>
    <script src="http://yandex.st/jquery/1.6.4/jquery.min.js" type="text/javascript"></script>
<script type="text/javascript">
ymaps.ready(init);

function init () {
    var myMap = new ymaps.Map("map", {
            center: [55.739533,37.624744],
            zoom: 17
        }),
        myPlacemark = new ymaps.Placemark([55.739533,37.624744], {
            // Чтобы балун и хинт открывались на метке, необходимо задать ей определенные свойства.
            balloonContentHeader: "Наш магазин",
            balloonContentBody: "<em>г. Москва, ул. такая-то, д. такой-то</em>",
            balloonContentFooter: "Ждём Вас!",
            hintContent: "Мы здесь!"
        });
	// элемента управления и его параметры.
    myMap.controls
        // Кнопка изменения масштаба.
        .add('zoomControl', { left: 5, top: 5 })
        // Список типов карты
        .add('typeSelector')
        // Кнопка изменения масштаба - компактный вариант.
        // Расположим её справа.
        .add('smallZoomControl', { right: 5, top: 75 })
        // Стандартный набор кнопок
        .add('mapTools', { left: 35, top: 5 });
    myMap.geoObjects.add(myPlacemark);

    // Показываем хинт на карте (без привязки к геообъекту).
    myMap.hint.show(myMap.getCenter(), "Содержимое хинта", {
        // Опция: задержка перед открытием.
        showTimeout: 1500
    });
}
</script>