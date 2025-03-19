<?php
require "connect.php";

if (!$con) {
    echo "connection error";
}

$email = $_POST['email'];
$password = $_POST['password'];
$encrypted_pwd = md5($password);

$sql = "SELECT * FROM user WHERE email = '" . $email . "' AND password = '" . $encrypted_pwd . "' ";
$result = mysqli_query($con, $sql);
$count = mysqli_num_rows($result);

if ($count == 1) {
    echo json_encode("Success");
} else {
    echo json_encode("Error");
}

// require "connect.php";

// if (!$con) {
//     echo json_encode(array("status" => "error", "message" => "Connection error"));
//     exit;
// }

// if (!isset($_POST['email']) || !isset($_POST['password'])) {
//     echo json_encode(array("status" => "error", "message" => "Email or password not provided"));
//     exit;
// }

// $email = $_POST['email'];
// $password = $_POST['password'];
// $encrypted_pwd = md5($password);

// $sql = "SELECT * FROM user WHERE email = '" . $email . "' AND password = '" . $encrypted_pwd . "'";
// $result = mysqli_query($con, $sql);

// if (!$result) {
//     echo json_encode(array("status" => "error", "message" => "Database query error"));
//     exit;
// }

// $count = mysqli_num_rows($result);

// if ($count == 1) {
//     echo json_encode(array("status" => "success"));
// } else {
//     echo json_encode(array("status" => "error", "message" => "Invalid credentials"));
// }

// mysqli_close($con);



// Check if email and password are provided
// if (!isset($_POST['email']) || !isset($_POST['password'])) {
//     echo json_encode(array("status" => "Error", "message" => "Email or password is not provided."));
//     exit;
// }

// $email = $_POST['email'];
// $password = $_POST['password'];
// $encrypted_pwd = md5($password);

// $sql = "SELECT * FROM user WHERE email = '" . $email . "' AND password = '" . $encrypted_pwd . "' ";
// $result = mysqli_query($con, $sql);
// $count = mysqli_num_rows($result);

// if ($count == 1) {
//     echo json_encode(array("status" => "Success"));
// } else {
//     echo json_encode(array("status" => "Error", "message" => "Invalid credentials."));
// }


// require "connect.php";

// if (!$con) {
//     echo json_encode("Connection error");
//     exit;
// }

// $email = $_POST['email'];
// $password = $_POST['password'];
// $encrypted_pwd = md5($password);

// $sql = "SELECT * FROM user WHERE email = ? AND password = ?";
// $stmt = $con->prepare($sql);
// $stmt->bind_param("ss", $email, $encrypted_pwd);
// $stmt->execute();
// $result = $stmt->get_result();
// $count = $result->num_rows;

// if ($count == 1) {
//     echo json_encode("Success");
// } else {
//     echo json_encode("Error");
// }

// $stmt->close();
// $con->close();


// require "connect.php"; // เรียกใช้ไฟล์ connect.php ที่มีการเชื่อมต่อฐานข้อมูล

// $email = $_POST['email'];
// $password = $_POST['password'];
// $encrypted_pwd = md5($password);
// $sql = "SELECT * FROM user WHERE email = '" . $email . "' AND password = '" . $encrypted_pwd . "' ";
// $result = mysqli_query($con, $sql); // เชื่อมต่อกับฐานข้อมูลโดยใช้ $con ที่ถูกสร้างในไฟล์ connect.php
// $count = mysqli_num_rows($result);

// if ($count == 1) {
//     echo json_encode("Success");
// } else {
//     echo json_encode("Error");
// }
?>
