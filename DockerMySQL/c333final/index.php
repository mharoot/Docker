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
  <!-- Latest compiled and minified CSS -->
</head>
<body class="container">

        <table id='test' class="table table-striped">
<?php

include_once('Database.php');
$db_handler = new Database();
$query = "SELECT * FROM questions";
$db_handler->query($query);
$test = $db_handler->resultset();
$n = sizeof($test);
for ($i = 0; $i < $n; $i++ ) {
    $a = rand(0, $n-1);
    $b = rand(0, $n-1);
    $s1 = $test[$a];
    $s2 = $test[$b];
    $test[$a] = $s2;
    $test[$b] = $s1;
}

for ($i = 0; $i < $n; $i++) {?>
            <tr>
                <td><?php echo $i + 1; ?> </td>
                <td><?php echo $test[$i]['question']; ?></td>
                <td>
                <form>
                    T <input type="radio" name="answer" value="1"><br>
                    F <input type="radio" name="answer" value="0">
                </form>
                </td>
                <td id="answer" style="display:none">
                    <?php echo $test[$i]['answer']; ?>
                </td>
            </tr>
<?php


}?>
        </table>
        <div id="score">
        </div>
        <button class="btn btn-primary" id = "submit_test">Submit</button>
        <script>
            var submit_test = document.getElementById('submit_test');
            var test = document.getElementById('test');
            var rows  = test.getElementsByTagName('tr');
            var correct = 0;

            submit_test.onclick = function() {
                for ( var i = 0; i < rows.length; i++) {
                    var r = rows[i];
                    var input_set = r.getElementsByTagName('input');
                    var tds = r.getElementsByTagName('td');
                    var answer = tds[3].innerHTML;
                    //console.log(answer);
                    //var answer = r.getElementById('answer');

                    if (input_set[0].checked){
                        //console.log(true);
                        if (answer == 1) {
                            r.style.backgroundColor = "green";
                            correct++;
                        }
                        else 
                            r.style.backgroundColor = "red";
                    } else if (input_set[1].checked ) {
                        //console.log(false);
                        if (answer == 0) {
                            r.style.backgroundColor = "green";
                            correct++;
                        }
                        else 
                            r.style.backgroundColor = "red";
                    } else {
                       // console.log('unmarked');
                       r.style.backgroundColor = "red";
                    }
                };
                var score = document.getElementById('score');
                score.innerHTML = '<p>'+correct+'/'+rows.length+'</p>'
            }


        </script>
    </body>
</html>
