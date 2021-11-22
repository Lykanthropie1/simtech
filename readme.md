Форма была реализована с помощью редактора кода PHPStorm и локального сервера OpenServer. В качестве СУБД была выбрана MySQL и система администрирования phpMyAdmin. Форма умеет проверять данные, введенные пользователем, сохранять эти данные в случае отсутствия ошибок в базу данных и выводить на странице отправленных сообщений с постраничной навигацией, также форма отправляет сообщение администратору, в котором содержиться тема сообщения и текст сообщения. В случае ошибок в веденных пользователем данных о себе форма перенаправляет пользователя на страницу заполнения с заполненными полями и с указанием полей, где была совершена ошибка. После успешной проверки пользователь перенаправляется на страницу заполнения с показом уведомления об успешной отправке, которое убирается после перезагрузки страницы. Так же была реализована кнопка сброса данных из полей. В будущем можно реализовать рассылку, так как в БД сохраняется ответ пользователя о получении рассылки.

//Установка формы на локальный сервер OpenServer

1.Скопировать папку с формой на OpenServer в папку domains

2.В системе администрирования phpMyAdmin создать пустую БД с названием "simtech_bd"

3.Сделать импорт таблиц из папки проекта "export_db" в созданную БД. В папке config, в файле "connect.php" поменять username и password, если они отличаются от установленных в новой БД 

4.В случае успешного подключения к БД Вам откроется форма без ошибки "Warning: mysqli_connect(): (HY000/1045): Access denied for user 'roots'@'localhost' (using password: YES) in C:\OpenServer\domains\simtechform\config\connect.php on line 2
Error connect"
