<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <?php
    $title = "Home";
    require("inc/database.php");
    include("inc/functions.php");
    loadHeader($title);
     ?>
    <!-- <meta charset="utf-8">
    <title></title> -->
  </head>
  <body>
    <?php
    include("inc/nav.php");
     ?>
     <div class="container text-center my-4">
       <div class="row">
         <div class="col">
           <h1>Slader</h1>
           <h2>Get step by step expert solutions for all your problems</h2>
         </div>
       </div>
     </div>
     <!-- Search bar -->
     <form class="" action="search.php" method="GET" role="search">
      <div class="search_bar container text-center">
        <div class="input-group mb-3">
         <input type="text" class="form-control" placeholder="Search by ISBN..." aria-describedby="button-addon2" name="isbn">
         <button class="btn btn-outline-secondary" type="submit" id="">Search</button>
       </div>
    </form>
      </div>
    </div>
    <!-- TEXTBooks -->
    <div class="container">
      <div class="row ml-2">
        <h4>Featured Books:</h4>
      </div>
      <?php //get textbook information
      $sql = "SELECT id, img_name, title, edition, author FROM textbook;";
      $result = $mysqli->query($sql);
      $num_rows =  $result->num_rows;
      $all = mysqli_fetch_all($result, MYSQLI_ASSOC);

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
            <a href="textbook.php?id=<?php echo strval($all[$x]["id"]);?>">
              <!-- <img src="https://placekitten.com/200/300" alt=""> -->
              <img src="/img/<?php echo $all[$x]["img_name"];?>" alt="" width="200" height="300">
              <p><?php echo $all[$x]["title"] ;?> <br>
              <?php echo $all[$x]["edition"];?>th Edition<br>
              <?php echo $all[$x]["author"] ;?></p>
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
    <?php include("inc/scripts.php");?>
  </body>
</html>
