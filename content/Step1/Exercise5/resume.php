<?php
    echo('<p class="answer">'.$translate['done'].' '.$translate['answer'].'</p>');
?>

<p><?php echo('<p class="answer">'.$data['result'].'</p>');?></p>

<h2><?php echo($data['statement_yes']); ?></h2>

<?php 
    $yes = 0;
    $req = $db->query("
        SELECT rank, $lang, answer 
        FROM Step1_Ex5_Statements 
          INNER JOIN Step1_Ex5_Users ON Step1_Ex5_Users.statement_id = Step1_Ex5_Statements.id
        WHERE user_id=".$_SESSION['userID']."
          AND answer=1
        ORDER BY rank");
    echo('<ul>');
    while($line = $req->fetch()){
        $yes++;
        echo('<li> '.$line[$lang].'</li>');
    }
    echo('</ul>');
            
?>

<h2><?php echo($data['statement_no']); ?></h2>

<?php 
    $req = $db->query("
        SELECT rank, $lang, answer 
        FROM Step1_Ex5_Statements 
          INNER JOIN Step1_Ex5_Users ON Step1_Ex5_Users.statement_id = Step1_Ex5_Statements.id
        WHERE user_id=".$_SESSION['userID']."
          AND answer=0
        ORDER BY rank");
    echo('<ul>');
    while($line = $req->fetch()){
        echo('<li>'.$line[$lang].'</li>');
    }
    echo('</ul>');


?>
<br />

<?php 
    if($yes<11){
        echo('<p class="answer">'.$data['result_no_description'].'</p>');
    } else if($yes>16){
        echo('<p class="answer">'.$data['result_yes_description'].'</p>');
    } else{
        echo('<p class="answer">'.$data['result_yes_description'].'</p>');
        echo('<p class="answer">'.$data['result_no_description'].'</p>');
    }
?>



<h3  style="text-align: center;">
    <a href="index.php?lang=<?php echo $lang;?>&target=step1ex5&init=true">< <?php echo($translate['redo']); ?> <</a>
    <a href="index.php?lang=<?php echo $lang;?>&target=step1ex6" style="margin-left:5em;">> <?php echo($translate['next']); ?> ></a>
</h3>