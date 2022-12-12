<?php
require("inc/database.php");

$isbn = $_GET['isbn'];

$sql = "SELECT * FROM textbook WHERE isbn=$isbn;";
$result = $mysqli->query($sql);
$textbook_info = mysqli_fetch_all($result, MYSQLI_ASSOC);
$num_rows =  $result->num_rows;
// $all = mysqli_fetch_all($result, MYSQLI_ASSOC);


 ?>

 <!DOCTYPE html>
 <html lang="en" dir="ltr">
   <head>
     <?php
     $title = "Search";
     // require("inc/database.php");
     include("inc/functions.php");
     loadHeader($title);
      ?>
   </head>
   <body>
     <?php
     include("inc/nav.php");
      ?>

      <?php
      if ($num_rows == 0 ) {
        ?>
        <div class="d-flex flex-column flex-shrink-4 mb-3 justify-content-center align-items-center vh-100">
          <h2>No Results Found</h2>
          <form class="" action="search.php" method="GET" role="search">
           <div class="search_bar container text-center">
             <div class="input-group mb-3">
              <input type="text" class="form-control" placeholder="Search by ISBN..." aria-describedby="button-addon2" name="isbn">
              <button class="btn btn-outline-secondary" type="submit" id="">Search</button>
             </div>
            </div>
          </form>
        </div>

        <?php
      }else{
        ?>
        <!-- TEXTBooks -->
        <div class="row ms-2 mt-4 mb-2">
          <h4>Search Results:</h4>
        </div>
        <div class="container">

          <?php //get textbook information


          for ($x = 0; $x < $num_rows; $x) {
          ?>
          <div class="row mx-3">
            <!-- <p>TEST</p> -->
          <?php
            // echo "<br>";
            for ($y = 0; $y <4; $y++) {
              if($x == $num_rows){
                break;
              }
              ?>
              <div class="col col-3">
                <a href="textbook.php?id=<?php echo strval($textbook_info[$x]["id"]);?>">
                  <!-- <img src="https://placekitten.com/200/300" alt=""> -->
                  <img src="/img/<?php echo $textbook_info[$x]["img_name"];?>" alt="" width="200" height="300">
                  <p><?php echo $textbook_info[$x]["title"] ;?> <br>
                  <?php echo $textbook_info[$x]["edition"];?>th Edition<br>
                  <?php echo $textbook_info[$x]["author"] ;?></p>
                </a>
              </div>

              <?php
              // echo " $x ";
              $x++;
            }
            ?>
            </div>
            <?php
          }

           ?>

        </div>




        <?php

      }
       ?>


     <?php include("inc/scripts.php");?>
   </body>
 </html>
