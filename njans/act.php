<?php
//Данные для подключения к серверу MySQL
$servername = "localhost";
$database = "njans";
$username = "root";
$password = "MySQL";

$conn = mysqli_connect($servername, $username, $password, $database);

//Проверка соединения с БД
if (!$conn) {
die("Подключение не выполнено: " . mysqli_connect_error());
}

$sql = "INSERT INTO clients (Imya,Surname,Birthday,Email,Password,RepPassword,
City,Street,House, Letter, Flat, Mailing) VALUES (
'{$_POST['Imya']}','".$_POST['Surname']."',
'".$_POST['Birthday']."','".$_POST['Email']."',
'".$_POST['Password']."','".$_POST['RepPassword']."',
'".$_POST['City']."','".$_POST['Street']."', 
'".$_POST['House']."','".$_POST['Letter']."',
'".$_POST['Flat']."','".$_POST['Mailing']."')"; 

//Проверка статуса выполнения sql запроса

if (mysqli_query($conn, $sql)) {
echo "Запись успешно добавлена</br>";
echo "<a href='index.html'>На главную</a>";
} else {
echo "Ошибка добавления записи: " . $sql . "<br>" .
mysqli_error($conn);
}

//Строка с текстом sql запроса для таблицы
//Закрытие соединения
mysqli_close($conn);
?>