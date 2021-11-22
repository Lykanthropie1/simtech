<?php
//Стартуем сессию
session_start();
//Подключаемся к БД
require_once 'config/connect.php';
$title = 'Свяжитесь с нами';
//Вставляем шапку
require_once 'block/header.php';
?>
<!--Уведомление об успешной отправке, при перезагрузки страницы уведомление пропадает-->
<?php
if (isset($_SESSION['form_success'])){
    ?>
    <div class="alert alert-success" role="alert">
        <h4 class="alert-heading"><?=$_SESSION['form_success']?></h4>
    </div>
    <?php
    unset($_SESSION['form_success']);
}
?>
<h1>Свяжитесь с нами</h1>
<div class="mt-5">
<form action="vendor/check_form.php" method="post" enctype="multipart/form-data">
    <input type="text" name="user_name" value="<?=$_SESSION['userName']?>" placeholder="Введите имя" class="form-control">
    <div class = "text-danger"><?=$_SESSION['error_username']?></div><br>
    <input type="email" name="email" value="<?=$_SESSION['email']?>" placeholder="Введите email" class="form-control">
    <div class = "text-danger"><?=$_SESSION['error_email']?></div><br>
    <input type="text" name="subject" value="<?=$_SESSION['subject']?>" placeholder="Введите тему сообщения" class="form-control">
    <div class = "text-danger"><?=$_SESSION['error_subject']?></div><br>
    <textarea name="message" placeholder="Введите ваше сообщение" class="form-control"><?=$_SESSION['message']?></textarea>
    <div class = "text-danger"><?=$_SESSION['error_message']?></div><br>
        <div>
        <p>Укажите свой пол:</p>
    <input type="radio" id="gender1" name="gender" value="male">
    <label for="gender1">Мужской</label><br>
    <input type="radio" id="gender2" name="gender" value="female">
    <label for="gender2">Женский</label><br>
            <div class = "text-danger"><?=$_SESSION['error_gender']?></div>
        </div><br>
    <label for="profile_pic">Прикрепите свою фотографию (необязательно):</label>
    <input type="file" id="profile_pic" name="profile_pic"
           accept=".jpg, .jpeg, .png" class="form-control-file"><br><br>
    <input type="checkbox" id="mail" name="getMessages" value= "yes">
    <label for="mail">Получать рассылку компании о предложениях</label><br><br>
        <div class = "d-flex justify-content-center">
    <button type="submit" class="btn btn-success me-5">Отправить</button>
    <input type="submit" name="delete" value="Сбросить" class="btn btn-secondary">
            </div>
</form>
</div>
<?php
//Вставляем футер
include_once 'block/footer.php'
?>
