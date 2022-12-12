<?php

function loadHeader($title) {
  include("inc/head.php");
  include("inc/styles.php");
}

function writeTitle($heading = "h1", $title = "", $attributes = "") {
  if(isset($title)) {
  echo "<$heading $attributes>$title</$heading>";
  }
}

?>
