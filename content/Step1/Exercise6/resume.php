<?php
    echo('<p class="answer">'.$translate['done'].' '.$translate['answer'].'</p>');
?>

    <?php
        $req = $db->query("
            SELECT Step1_Ex6_Statements.$lang AS statement, Step1_Ex6_Lack.$lang AS lack, Step1_Ex6_DirectTo.$lang AS direct
            FROM Step1_Ex6_Statements
                INNER JOIN Step1_Ex6_Lack
                    ON Step1_Ex6_Lack.statement_id = Step1_Ex6_Statements.id
                INNER JOIN Step1_Ex6_DirectTo
                    ON Step1_Ex6_DirectTo.statement_id = Step1_Ex6_Statements.id
                INNER JOIN Step1_Ex6_Users
                    ON Step1_Ex6_Users.statement_id = Step1_Ex6_Statements.id
            WHERE Step1_Ex6_Users.user_id = ".$_SESSION['userID']);
        
        $line = $req->fetch();
        
        echo("<ul>");
        echo("<li>".$data['statement'].": ".$line['statement']."</li>");
        echo("<li>".$data['lack'].": ".$line['lack']."</li>");
        echo("<li>".$data['solution'].": ".$line['direct']."</li>");
        echo("</ul>");

        $req->closeCursor();
     ?>

<p><?php echo('<p class="answer">'.$data['result'].'</p>');?></p>
    
<br />

<h3  style="text-align: center;">
    <a href="index.php?lang=<?php echo $lang;?>&target=step1ex6&init=true">< <?php echo($translate['redo']); ?> <</a>
    <a href="index.php?lang=<?php echo $lang;?>&target=step1ex7" style="margin-left:5em;">> <?php echo($translate['next']); ?> ></a>
</h3>