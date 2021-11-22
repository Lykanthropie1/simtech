<?php
//Подключаемся к БД
require '../config/connect.php';
//Получаем данные из массива $_POST
$user_name = $_POST['user_name'];
$email = $_POST['email'];
$subject = $_POST['subject'];
$message = $_POST['message'];
$gender = $_POST['gender'];
$getMessages = $_POST['getMessages'];
//Получаем изображение и сохраняем на сервер
$upload_image = $_FILES['profile_pic'] ['name'];
$folder = '../temp/';
move_uploaded_file($_FILES['profile_pic'] ['tmp_name'], $folder. $upload_image);
//Записываем данные о пользователе и изображении в таблицу БД
mysqli_query($connect, "INSERT INTO `mails` (`id`, `username`, `email`, `subject`, `message`, `gender`, `getmessages`, `image_name`, `folder`) VALUES (NULL, '$user_name', '$email', '$subject', '$message', '$gender', '$getMessages', '$upload_image', '$folder')");
//Перенаправляем на главную страницу
header('Location: ../index.php');
