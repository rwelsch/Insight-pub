<?php
    echo('<p class="answer">'.$translate['done'].' '.$translate['answer'].'</p>');
?>    

<?php
    $req = $db->query("
        SELECT rank, $lang, type, user_id
        FROM Step1_Ex7_Questions
            LEFT OUTER JOIN (SELECT * FROM Step1_Ex7_Users WHERE Step1_Ex7_Users.user_id=".$_SESSION['userID'].") T
            ON Step1_Ex7_Questions.id = T.question_id
        WHERE user_id is not NULL
          AND type = 1
        ORDER BY rank");    

    if($req->rowCount()>0){
        echo('<h2>'.$data['important'].'</h2>');
        while ($line = $req->fetch()){
            echo('<input type="checkbox" checked="checked" disabled="disabled" /><span style="color:green;">');
            echo(' '.$line[$lang].'</span><br />');
        }
    }
    $req->closeCursor();
    
    
    
    
    $req = $db->query("
        SELECT rank, $lang, type, user_id
        FROM Step1_Ex7_Questions
            LEFT OUTER JOIN (SELECT * FROM Step1_Ex7_Users WHERE Step1_Ex7_Users.user_id=".$_SESSION['userID'].") T
            ON Step1_Ex7_Questions.id = T.question_id
        WHERE user_id is NULL
          AND type = 1
        ORDER BY rank");    
    if($req->rowCount()>0){
        echo('<h2>'.$data['miss'].'</h2>');
        while ($line = $req->fetch()){
            echo('<input type="checkbox" disabled="disabled" /><span style="color:orange;">');
            echo(' '.$line[$lang].'</span><br />');
       }
    }
    $req->closeCursor();

    
    
    
    $req = $db->query("
        SELECT rank, $lang, type, user_id
        FROM Step1_Ex7_Questions
            LEFT OUTER JOIN (SELECT * FROM Step1_Ex7_Users WHERE Step1_Ex7_Users.user_id=".$_SESSION['userID'].") T
            ON Step1_Ex7_Questions.id = T.question_id
        WHERE user_id is not NULL
          AND type = 0
        ORDER BY rank");
    if($req->rowCount()>0){
        echo('<h2>'.$data['not_important'].'</h2>');
        while ($line = $req->fetch()){
            echo('<input type="checkbox" checked="checked" disabled="disabled" /><span style="color:red;">');
            echo(' '.$line[$lang].'</span><br />');
        }
    }
    $req->closeCursor();

?>

<p><?php echo('<p class="answer">'.$data['result'].'<br \></p>');?></p>

<br />

<h3  style="text-align: center;">
    <a href="index.php?lang=<?php echo $lang;?>&target=step1ex7&init=true">< <?php echo($translate['redo']); ?> <</a>
	<a href="index.php?lang=<?php echo $lang;?>&target=step1ex8" style="margin-left:5em;">> <?php echo($translate['next']); ?> ></a>
</h3>