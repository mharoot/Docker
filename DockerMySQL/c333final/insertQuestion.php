


<!DOCTYPE html>
<html lang="en">
<head>
  <title>Comp 490 Quiz 1</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <?php include_once('navbar.php'); ?>

  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	<style>.cke{visibility:hidden;}</style><script type="text/javascript" src="http://cdn.ckeditor.com/4.5.11/standard/config.js?t=G87E"></script><link rel="stylesheet" type="text/css" href="http://cdn.ckeditor.com/4.5.11/standard/skins/moono/editor.css?t=G87E"><script type="text/javascript" src="http://cdn.ckeditor.com/4.5.11/standard/lang/en.js?t=G87E"></script><script type="text/javascript" src="http://cdn.ckeditor.com/4.5.11/standard/styles.js?t=G87E"></script></head>
	<div class="gr-top-z-index gr-top-zero" tabindex="-1"><div class="_30JeG _2_2SE OkCGU" style="transform: translate(545px, 595px);"><div class="_2A3ER"><div class="_1y1wn _2R8DE undefined"></div><div class="_24Em3"><div class="_21QaI _1L80j" tabindex="-1"></div></div><div class="_2-7o4"></div><div class="_24Em3"><div class="_21QaI _1pbTT _12R0B" data-action="editor" tabindex="-1">1</div></div></div></div></div><div style="visibility: hidden; top: -9999px; position: absolute; opacity: 0;"><div class="_30JeG _2_2SE OkCGU" style="transform: translate(610px, 610px);"><div class="_2A3ER"><div class="_1y1wn _2R8DE undefined"></div><div class="_24Em3"><div class="_21QaI _1L80j" tabindex="-1"></div></div><div class="_2-7o4"></div><div class="_24Em3"><div class="_21QaI _1pbTT _12R0B" data-action="editor" tabindex="-1">1</div></div></div></div></div><div style="visibility: hidden; top: -9999px; position: absolute; opacity: 0;"></div><body data-gr-c-s-loaded="true">

</head>


<body class="container">




<form action="insertQuestion.php" enctype="multipart/form-data" method="post" accept-charset="utf-8">
  <script src="http://cdn.ckeditor.com/4.5.11/standard/ckeditor.js"></script>

  <div class="form-group">
    <label>Question</label>
    <textarea id="editor1" class="form-control" name="question" placeholder="Add Description" ></textarea>
    
  </div>

  <div class="form-group">
    <label>Answer</label>
        T <input type="radio" name="answer" value="1">
        F <input type="radio" name="answer" value="0">
  </div>

  <button type="submit" class="btn btn-default">Submit</button>
</form>
<script>CKEDITOR.replace( 'editor1' );</script>



<?php
    if (isset($_POST['question']) && isset($_POST['answer']))
    {
        $q = filter_var($_POST['question'], FILTER_SANITIZE_MAGIC_QUOTES);
        $a = $_POST['answer'];
        include_once('Database.php');
        $db_handler = new Database();
        $query = "INSERT INTO questions (question, answer) VALUES ('".$q."',".$a.")";
        $db_handler->query($query);
        $db_handler->execute();
        echo "Inserted <br>Question: ".$q."<br>Answer: ".$a;


    }
?>



</body>
</html>