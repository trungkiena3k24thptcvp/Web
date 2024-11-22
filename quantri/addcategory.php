<?php
    require('../db/conn.php');
    // lấy dữ liệu từ form
    $name = $_POST['name'];
    $slug = strtolower(trim(preg_replace('/[^A-Za-z0-9-]+/', '-', $name)));
    

    //câu lệnh thêm vào bảng
    $sql_str = "INSERT INTO `categories` (`name`, `slug`, `status`) VALUES ('$name', '$slug','Active');";
    mysqli_query($conn, $sql_str);
    header("location: listcats.php");
?>