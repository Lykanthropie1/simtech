<?php
$connect = mysqli_connect('localhost', 'root', 'root', 'simtech_bd');

if (!$connect) {
    echo 'Error connect';
}
