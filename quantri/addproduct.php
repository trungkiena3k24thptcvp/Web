<?php
    require('../db/conn.php');

    $name = $_POST['name'];
    $slug = strtolower(trim(preg_replace('/[^A-Za-z0-9-]+/', '-', $name)));
    $sumary = $_POST['sumary'];
    $description = $_POST['description'];
    $stock = $_POST['stock'];
    $giagoc = $_POST['giagoc'];
    $giaban = $_POST['giaban'];
    $danhmuc = $_POST['danhmuc'];
    $thuonghieu = $_POST['thuonghieu'];
    $giaban = $_POST['giaban'];
    $sql_str = "INSERT INTO `products` (`id`, `name`, `slug`, `description`, `summary`, `stock`, `price`, `disscounted_price`,
     `images`, `category_id`, `brand_id`, `status`, `created_at`, `updated_at`) VALUES (NULL, '$name',
    '$slug', '$description', '$sumary', $stock, $giagoc, $giaban, 'hinhanh.png', $danhmuc, $thuonghieu, 'Active', NULL, NULL);";
      //echo $sql_str; exit;

    mysqli_query($conn, $sql_str);
    header("location: index.php");
?>