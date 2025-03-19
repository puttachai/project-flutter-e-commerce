<?php
$hostname = '192.168.0.104'; // หรือ hostname ของฐานข้อมูล
$username = 'root'; // ชื่อผู้ใช้ฐานข้อมูล
$password = '123'; // รหัสผ่านฐานข้อมูล
$database = 'flutter_login'; // ชื่อฐานข้อมูลที่ต้องการเชื่อมต่อ
$port = '3310';

// เชื่อมต่อกับฐานข้อมูล
$mysqli = new mysqli($hostname, $username, $password, $database,$port);

// ตรวจสอบการเชื่อมต่อ
if ($mysqli->connect_error) {
    die('Connection failed: ' . $mysqli->connect_error);
}
echo 'Connected successfully';

// ปิดการเชื่อมต่อ
$mysqli->close();
?>
