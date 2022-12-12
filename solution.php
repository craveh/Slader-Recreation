<?php
require("inc/database.php");
$prob_id = $_GET['prob_id'];
$sol_id = $_GET['sol_id'];

$sql = "SELECT * FROM problem WHERE id=$prob_id;";
$result = $mysqli->query($sql);
// var_dump($result);
$question_info = mysqli_fetch_all($result, MYSQLI_ASSOC)[0];
// var_dump($question_info);

$sql = "SELECT * FROM solution WHERE id=$sol_id;";
$result = $mysqli->query($sql);
$solution_info = mysqli_fetch_all($result, MYSQLI_ASSOC)[0];

$sql = "SELECT * FROM step WHERE solution_id=$sol_id ORDER BY step_number;";
$result = $mysqli->query($sql);
$num_steps = $result->num_rows;
// echo $num_steps."<br>";
$steps_info = mysqli_fetch_all($result, MYSQLI_ASSOC);

$text_id = $_GET['text_id'];
$sql = "SELECT * FROM textbook WHERE id=$text_id;";
$result = $mysqli->query($sql);
$textbook_info = mysqli_fetch_all($result, MYSQLI_ASSOC)[0];
// var_dump($textbook_info);

$ch_id = $_GET['ch_id'];
$sql = "SELECT * FROM chapter WHERE id=$ch_id;";
$result = $mysqli->query($sql);
$chapter_info = mysqli_fetch_all($result, MYSQLI_ASSOC)[0];
// var_dump($steps_info);
 ?>

<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <?php
    $title = "Home";
    include("inc/functions.php");
    loadHeader($title);
     ?>
  </head>
  <body>
    <?php include("inc/nav.php");?>
    <div class=" row ms-4 mt-3">
      <h4> <a href="textbook.php?id=<?php echo $text_id;?>"><?php echo $textbook_info['title'];?></a> / <a href="textbook.php?id=<?php echo $text_id;?>&ch_id=<?php echo $ch_id;?>">Chapter <?php echo $chapter_info['chapter_num'];?></a> /</h4>
    </div>

     <div class="container">
       <!-- Question -->
       <div class="row mt-2">
         <div class="col">
           <div class="card mb-3">
             <h5 class="card-header">Question <?php echo $question_info['question_number'];?></h5>
             <div class="card-body">
               <p class="card-text"><?php echo $question_info['question'];?></p>
             </div>
           </div>
         </div>
       </div>

       <!-- STEPS -->
       <div class="row">
         <div class="col">
           <?php for ($i=1; $i <=$num_steps; $i++) {
             ?>
             <div class="card mb-3">
              <div class="card-body">
                <h5 class="card-title">Step <?php echo $i;?>:</h5>
                <p class="card-text"><?php echo $steps_info[$i-1]['solution'] ?></p>
              </div>
            </div>

             <?php
           }
            ?>
         </div>
       </div>

       <!-- FINAL ANSWER -->
       <div class="row">
         <div class="col">
           <div class="card mb-2">
             <h5 class="card-header">Final Answer:</h5>
             <div class="card-body">
               <p class="card-text"><?php echo $solution_info['solution'];?></p>
             </div>
           </div>
           <!-- <div class="card">
            <div class="card-body">
              <h5 class="card-title">Final Answer:</h5>
              <p class="card-text">\</p>
            </div>
          </div> -->
         </div>
       </div>
     </div>


    <?php include("inc/scripts.php");?>
  </body>
</html>
