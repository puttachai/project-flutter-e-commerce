<?php
// $db_name = "flutter_login";
// $db_user = "root";
// $db_pass = "123";
// $db_host = "192.168.0.104";
// $db_port = "3310"; // พอร์ตที่ถูกต้อง

// $con = new mysqli($db_host, $db_user, $db_pass, $db_name,$db_port);

// if ($con->connect_error) {
//     die("Connection failed: " . $con->connect_error);
// }
// echo 'Connected successfully';

$hostname = 'localhost'; // หรือ hostname ของฐานข้อมูล
$username = 'root'; // ชื่อผู้ใช้ฐานข้อมูล
$password = '123'; // รหัสผ่านฐานข้อมูล
$database = 'flutter_login'; // ชื่อฐานข้อมูลที่ต้องการเชื่อมต่อ
$port = '3310';

// เชื่อมต่อกับฐานข้อมูล
$con = new mysqli($hostname, $username, $password, $database,$port);

// ตรวจสอบการเชื่อมต่อ
if ($con->connect_error) {
    die('Connection failed: ' . $con->connect_error);
}echo 'Connected successfully';

?>