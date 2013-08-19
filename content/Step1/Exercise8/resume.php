<?php
    echo('<p class="answer">'.$translate['done'].' '.$translate['answer'].'</p>');
?>

<p><?php echo('<p class="answer">'.$data['result'].'</p>');?></p>

<?php
    $req = $db->query("
        SELECT rank, $lang, user_id, answer
        FROM Step1_Ex8_Questions
            LEFT OUTER JOIN (SELECT * FROM Step1_Ex8_Users WHERE user_id=".$_SESSION['userID'].") T
              ON Step1_Ex8_Questions.id = T.question_id
        ORDER BY rank");
    
    while ($line = $req->fetch()){
	echo('<span style="font-weight:bold;">'.$line['rank'].'. '.$line[$lang].'</span> <br />');
	echo('<span style="font-style:italic;">'.$line['answer'].'</span> <br /> <br />');
    }
    $req->closeCursor();
?>

<br />

<h3  style="text-align: center;">
    <a href="index.php?lang=<?php echo $lang;?>&target=step1ex8&init=true">< <?php echo($translate['redo']); ?> <</a>
    <a href="index.php?lang=<?php echo $lang;?>&target=step1ex9" style="margin-left:5em;">> <?php echo($translate['next']); ?> ></a>
</h3>