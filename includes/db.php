<?php

require "rb.php";

R::setup( 'mysql:host=localhost;dbname=users',
        'root', '' );
session_start();

$connection=mysqli_connect(
	$config['db']['server'],
	$config['db']['username'],
	$config['db']['password'],
	$config['db']['name']
);

if($connection==false)
{
	echo 'Не удалось подключться к базе данных!<br>';
	echo mysqli_connect_error();
	exit();
}