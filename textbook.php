<?php
require("inc/database.php");
$id = $_GET['id'];
$sql = "SELECT * FROM textbook WHERE id=$id;";
$result = $mysqli->query($sql);
// var_dump($result->fetch_assoc());
$textbook_info = $result->fetch_assoc();

//chapter info
// $chapter_info =
$sql = "SELECT * FROM `chapter` WHERE textbook_id = $id ORDER BY chapter_num";
$result = $mysqli->query($sql);
$num_chapters =  $result->num_rows;
// var_dump($num_chapters);
// echo "TEST";
$chapter_info = mysqli_fetch_all($result, MYSQLI_ASSOC);
// var_dump($chapter_info);
// echo "\n";
// echo $chapter_info[0];
// var_dump($chapter_info[0]);
// echo "<br>";
// echo sizeof($chapter_info, 0);
// echo "<br>";

// echo $chapter_info[0]['num_problems'];

// var
if (isset($_GET['ch_id'])) {
  $selected_chapter_id = $_GET['ch_id'];
}else {
  $selected_chapter_id = $chapter_info[0]['id'];
}
 ?>

<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <?php
    $title = $textbook_info["title"];
    include("inc/functions.php");
    loadHeader($title);
     ?>
  </head>
  <body>
    <?php
    include("inc/nav.php");
     ?>
     <!-- <h1>TEXTBOOK PAGE</h1> -->
     <div class="container">
       <div class="row">
         <div class="card text-center mt-3 w-75">
          <div class="row g-0">
            <div class="col-md-4">
              <img src="/img/<?php echo $textbook_info["img_name"];?>" class="img-fluid rounded-start" alt="..." width="200" height="350">
            </div>
            <div class="col-md-8">
              <div class="card-body align-middle justify-content-center align-items-center">
                <h5 class="card-title" style="opacity: 0;">Transulcent </h5>
                <h5 class="card-title" style="opacity: 0;">Transulcent </h5>

                <h5 class="card-title"><?php echo $textbook_info['title'];?></h5>
                <h5 class="card-title"><?php echo $textbook_info['edition'];?>th Edition</h5>
                <h5 class="card-title"><?php echo $textbook_info['author'];?></h5>
                <h5 class="card-title">ISBN: <?php echo $textbook_info['isbn'];?></h5>

                <!-- <p class="card-text"><small class="text-muted">Last updated 3 mins ago</small></p> -->
              </div>
            </div>
          </div>
        </div>

       </div>

     </div>

     <div class="container my-4" id="ch selection">

       <!-- Chapter Selection -->
       <div class="row">
         <div class="col col-3">
           <form>
             <input type="hidden" name="id" value="<?php echo $_GET['id'];?>">
             <select name="ch_id" onchange="this.form.submit()" class="form-select" aria-label="Default select example">
               <?php
               for ($i=0; $i < sizeof($chapter_info, 0); $i++) {
                 if ($chapter_info[$i]['id']==$selected_chapter_id) {
                   ?>
                   <option selected value="<?php echo $chapter_info[$i]["id"];?>">Chapter
                     <?php echo $chapter_info[$i]["chapter_num"];?>
                   </option>
                   <?php

                 }else {
                   ?>
                   <option value="<?php echo $chapter_info[$i]["id"];?>">Chapter
                     <?php echo $chapter_info[$i]["chapter_num"];?>
                   </option>
                   <?php
                 }
               }
              ?>
             </select>

           </form>

         </div>
       </div>
       <!-- Answer to solutions -->
       <?php
       $sql = "SELECT p.id as prob_id, p.question_number, s.solution, s.id as sol_id FROM problem p, solution s WHERE p.id = s.problem_id AND p.chapter_id=$selected_chapter_id AND s.solution_type=1 ORDER BY length(question_number), question_number ASC ";
       $result = $mysqli->query($sql);
       $solutions_info = mysqli_fetch_all($result, MYSQLI_ASSOC);
       // var_dump($solutions_info);

        ?>
       <div class="row mt-3">
         <div class="col">
           <ul class="list-group">
             <?php
             for ($i=0; $i < sizeof($solutions_info, 0); $i++) {
               ?>
               <li class="list-group-item d-flex justify-content-between align-items-start">
                 <!-- <a href="#"> -->
                 <div class="fw-bold">
                   <?php echo $solutions_info[$i]['question_number'];?>
                 </div>
                 <!-- </a> -->

                 <?php
                 if(strlen($solutions_info[$i]['solution']) <= 75){
                   echo $solutions_info[$i]['solution'];
                 }else{
                   echo "See explanation";
                 }?>

                 <span class=""><a href="solution.php?prob_id=<?php echo strval($solutions_info[$i]["prob_id"]);
                 ?>&sol_id=<?php echo strval($solutions_info[$i]["sol_id"]);?>&text_id=<?php echo strval($id);?>&ch_id=<?php echo strval($selected_chapter_id);?>">1 solution</a></span>
               </li>
               <?php
             }
            ?>

          </ul>

         </div>
       </div>
     </div>



    <?php include("inc/scripts.php");?>
  </body>
</html>
