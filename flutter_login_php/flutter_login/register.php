<?php
require "connect.php";
if (!$con) {
    echo "connection error";
}

$name = $_POST['name'];
$password = $_POST['password'];
$email = $_POST['email'];
//เข้ารหัส
$encrypted_pwd = md5($password);
//ตรวจสอบว่า email ซ้ำกับ email ที่อยู่ใน Database หรือไม่
$sql = "SELECT * FROM user WHERE email = '$email'";

$result = mysqli_query($con, $sql);
$count = mysqli_num_rows($result);

if ($count == 1) {
    //ถ้ามีให้ตอบกลับ Error ว่ามี email นี้อยู่แล้ว
    echo json_encode('Error');
} else {
    //ถ้าไม่มีให้เก็บบันทึกข้อมูลลงใน Database
    $insert = "INSERT INTO user(name, password, email) VALUES('$name', '$encrypted_pwd', '$email')";
    $query = mysqli_query($con, $insert);
    if ($query) {
        // ถ้าบันทึกข้อมูลลงใน Database สำเร็จ
        echo json_encode('Success');
    } else {
        // ถ้ามีปัญหาในการบันทึกข้อมูล
        echo json_encode('Error');
    }
}
?>
