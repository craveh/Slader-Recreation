<?php
$mysqli = new mysqli("localhost", "diesel_cxr956", "cxr956db", "diesel_cxr956");

if ($mysqli->connect_errno){
  printf("Connect failed: ", $mysqli->connect_error);
  exit();
}

 ?>
