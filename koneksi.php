<?php

session_start();

$host = "localhost"; /* Host name */
$user = "root"; /* User */
$password = ""; /* Password */
$database = "restoran"; /* Database name */

$conn = mysqli_connect($host, $user, $password,$database);
// Check connection
if (!$conn) {
 die("Connection failed: " . mysqli_connect_error());
}
?>
