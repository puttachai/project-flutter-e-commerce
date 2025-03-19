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

// สร้างคำสั่ง SQL เพื่อดึงข้อมูล
$sql = "SELECT * FROM user";
$result = $mysqli->query($sql);

// ตรวจสอบว่ามีข้อมูลที่ดึงได้หรือไม่
if ($result->num_rows > 0) {
    // วนลูปแสดงผลข้อมูลที่ดึงได้
    while ($row = $result->fetch_assoc()) {
        echo "ID: " . $row["id"] . " - Name: " . $row["name"] ." - Password: " . $row["password"] . "<br>";
    }
} else {
    echo "0 results";
}

// ปิดการเชื่อมต่อ
$mysqli->close();
?>
