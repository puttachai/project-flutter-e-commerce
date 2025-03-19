<?php
require "connect.php";
$img_db = $con->query("SELECT * FROM img By id DESC");
$lisr = array();

while($rowdata = $img_db->fetch_assoc()){
    $list[] = $rowdata;
}
echo json_encode($list);



?>