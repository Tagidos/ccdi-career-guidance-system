<?php
session_start();
include_once './connection.php';

// Get Date and Time
date_default_timezone_set("Asia/Manila");
// $currentDate = date("Y/m/d-h:i:s");
$currentDate = date("Y/m/d");

$id = $_POST['id'];
$username = $_POST['username'];
$password = $_POST['password'];
$lastName = $_POST['lastName'];
$firstName = $_POST['firstName'];
$middleName = $_POST['middleName'];
$address = $_POST['address'];
$phoneNumber = $_POST['phoneNumber'];
$selectedCourse = $_POST['selectedCourse'];
$lastSchoolAttended = $_POST['selectedSchool'];
$status = $_POST['selectedStatus'];
$created_at = $currentDate;

if (isset($_POST['btnRegister'])) {

    $sql = "SELECT * FROM user WHERE username='$username'";
    $result = mysqli_query($conn, $sql);

    if (mysqli_num_rows($result) > 0) {
        $_SESSION['registerStudent'] = 'Username Already Exist!';
        $url = "./../home.php";
        $url = str_replace(PHP_EOL, '', $url);
        header("Location: $url");
    } else {
        $sql = "INSERT INTO user (
        username, 
        password, 
        lastName, 
        firstName, 
        middleName, 
        address, 
        phoneNumber, 
        lastSchoolAttended,
        course,
        status,
        userLevel,
        created_at
        ) VALUES (
        '$username',
        md5('$password'),
        '$lastName',
        '$firstName',
        '$middleName',
        '$address',
        '$phoneNumber',
        '$lastSchoolAttended',
        '$selectedCourse',
        '$status',
        '3',
        '$created_at'
        )";

        if (mysqli_query($conn, $sql)) {
            $_SESSION['registerStudent'] = 'Registered Successfully!';
            $url = "./../home.php?id=$id";
            $url = str_replace(PHP_EOL, '', $url);
            header("Location: $url");
        } else {
            echo "Error: " . $sql . "" . mysqli_error($conn);
        }
        $conn->close();
    }
}
