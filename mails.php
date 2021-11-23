<?php
//Подключаемся к БД
require_once 'config/connect.php';
$title = 'Ваши сообщения';
//Вставляем шапку
require_once 'block/header.php';
?>
<?php
//  Получаем кол-во страниц
$limit = 5; //Количество элементов на странице
//  Получаем объект базы данных через запрос к ней
$allMails = mysqli_query($connect, "SELECT * FROM `mails`");
//  С помощью встроенной функции переводим объект в обычный массив
$allMails = mysqli_fetch_all($allMails);
$pageCount = ceil(count($allMails) / $limit); //Округляем количество страниц в большую сторону
//  Получаем объект базы данных через запрос к ней с лимитом писем и проверкой номера страницы
//  Получаем номер страницы
$getPage = isset($_GET['page']) ? $_GET['page'] : 1;
//  Задаем сдвиг по количеству элементов для отображения следующих элементов таблицы
$offset = $limit * ($getPage - 1);
$mails = mysqli_query($connect, "SELECT * FROM `mails` LIMIT $limit OFFSET $offset");
$mails = mysqli_fetch_all($mails, MYSQLI_ASSOC);
//    Проходим циклом по массиву и выводим индексы массива в контейнеры
foreach ($mails as $mail){
?>
    <div class="row mt-3">
        <div class="col-lg-3 border rounded bg-secondary text-center" style="--bs-bg-opacity: .1;">
<!--Выводим аватарку пользователя из директории temp если он ее загрузил-->
            <?php
            if (empty($mail['image_name']) == false ) {
            ?>
            <div class="col mt-3">
                <img src="<?=$mail['folder'].$mail['image_name']?>" class="img-thumbnail" width="40%" height="auto">
            </div>
                <?php
            }
//  Выводим альтернативное изображение если пользователь не загрузил аватарку
            else {
                ?>
                <div class="col mt-3">
                    <img src="../temp/alt/alt.jpg" class="img-thumbnail" width="40%" height="auto">
                </div>
                    <?php
                    }
                    ?>
<!--Выводим основной контент-->
            <div class="col my-3">
                <?=$mail['username']?><br>
                <?=$mail['email']?>
            </div>
        </div>
        <div class="col-lg-9 border rounded bg-secondary" style="--bs-bg-opacity: .1;">
            <div>
                <div class="col border-bottom text-center mx-auto mt-3">
                    <h3><?=$mail['subject']?></h3>
                </div>
                <div class="col mt-3 mx-auto" width = "100%">
                    <p><?=$mail['message']?></p>
                </div>
            </div>
        </div>
    </div>
<?php
}
?>
<!--Постраничная навигация-->
<div class="d-flex justify-content-center mt-5">
<nav aria-label="Page navigation example">
    <ul class="pagination">
<!--Убираем кнопку в начало если количество страниц равно нулю-->
        <?php
        if ($pageCount!= 0){
            ?>
        <li class="page-item"><a class="page-link" href="?page=1">В начало</a></li>
            <?php
        }
        ?>
<!--Задаем условия для кнопки "Назад" чтобы избежать ошибки на первой странице и убираем ее если количество страниц равно нулю-->
        <?php
        if ($getPage!= 1){
        ?>
        <li class="page-item"><a class="page-link" href="?page=<?=$getPage-1?>"><<</a></li>
        <?php
        }
        else if ($pageCount != 0) {  ?>
                <li class="page-item"><a class="page-link" href="?page=<?=$getPage?>"><<</a></li>
        <?php
        }
        ?>
    <?php
// Проходим циклом и выводим страницы с условием для отображения активной страницы
    for ($p=1; $p <= $pageCount; $p++) {
        if ($p == $getPage) {?>
        <li class="page-item active"><a class="page-link" href="?page=<?=$p?>"><?=$p?></a></li>
        <?php
    } else { ?>
        <li class="page-item"><a class="page-link" href="?page=<?=$p?>"><?=$p?></a></li>
        <?php
        }
    }
    ?>
<!--Задаем условия для кнопки "Вперед" чтобы избежать ошибки на последней странице и ограничиваем кнопку если страница только одна, и убираем ее если количество страниц равно нулю-->
        <?php
        if ($getPage != $pageCount && $pageCount != 0){
            ?>
            <li class="page-item"><a class="page-link" href="?page=<?=$getPage+1?>">>></a></li>
            <?php
        }
        else if ($pageCount != 0){  ?>
            <li class="page-item"><a class="page-link" href="?page=<?=$getPage?>">>></a></li>
            <?php
        }
        ?>
<!--Убираем кнопку "в конец" если количество страниц равно нулю-->
        <?php
        if ($pageCount!= 0){
            ?>
        <li class="page-item"><a class="page-link" href="?page=<?=$pageCount?>">В конец</a></li>
            <?php
        }
        ?>
    </ul>
</nav>
</div>
<?php
//Вставляем футер
include_once 'block/footer.php'
?>