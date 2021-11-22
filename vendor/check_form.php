<?php
session_start();
// Получаем данные пользователя без HTML-тегов и без пробелов
$user_name = htmlspecialchars(trim($_POST['user_name']));
$email = htmlspecialchars(trim($_POST['email']));
$subject = htmlspecialchars(trim($_POST['subject']));
$message = htmlspecialchars(trim($_POST['message']));
// При отправке формы оставляем все поля заполненными
$_SESSION['userName'] = $user_name;
$_SESSION['email'] = $email;
$_SESSION['subject'] = $subject;
$_SESSION['message'] = $message;
//Реализация кнопки сброса (по нажатии на кнопку сессия убивается и мы перенаправляемся обратно на стартовую стр.)
if (isset($_POST['delete'])){
    session_destroy();
    header('Location:../index.php');
}
// Проверка условий ввода на соответствие
if (mb_strlen($user_name) <= 1)
    $_SESSION['error_username'] = "Введите корректное имя";
else
    $_SESSION['error_username'] = "";
if (strlen($email) <= 5)
    $_SESSION['error_email'] = "Вы ввели некорректный email";
else
    $_SESSION['error_email'] = "";
    if (strlen($message) <= 10)
    $_SESSION['error_message'] = "Сообщение должно содержать не менее 10 символов";
else
    $_SESSION['error_message'] = "";
if (isset($_POST['gender']) == false)
    $_SESSION['error_gender'] = "Укажите ваш пол";
else
    $_SESSION['error_gender'] = "";
//Проверяем на пустоту ошибок и в случае положительного результата выводим в html сообщение об успешной отправке, если ошибок нет то выполняем код отправки данных и очищаем поля
$errorUser = trim($_SESSION['error_username']);
$errorEmail = trim($_SESSION['error_email']);
$errorMessage = trim($_SESSION['error_message']);
$errorGender = trim($_SESSION['error_gender']);
if (empty($errorUser) and empty($errorEmail) and empty($errorMessage) and empty($errorGender) == true) {
//    Отправка сообщения на email админа
    $user_message = $message;
    $to = "admin@example.ru";
    $from = $email;
    $user_subject = "=?utf-8?B?".base64_encode($subject)."?=";
    $headers = "From: $from\r\nReplay-to: $user_subject\r\nContent-type: text/plain; charset=utf-8\r\n";
    mail($to, $user_subject, $message, $headers);
    $_SESSION['form_success'] = "Сообщение отправленно успешно";
    $_SESSION['userName'] = "";
    $_SESSION['email'] = "";
    $_SESSION['subject'] = "";
    $_SESSION['message'] = "";
    require 'create.php';
} else //Иначе перенаправляем для исправления данных
    header('Location:../index.php');
