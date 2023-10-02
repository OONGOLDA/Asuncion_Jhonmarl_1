

<?php
$hostname = "localhost";
$userAccount = "root";
$password = "";
$dbname = "db_school";

$connection = new mysqli($hostname, $userAccount, $password, $dbname);


if ($connection->connect_error) {
    die("Connection failed: " . $connection->connect_error);
}
echo "Connected successfully";
?>