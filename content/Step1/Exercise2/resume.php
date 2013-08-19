<?php
    echo('<p class="answer">'.$translate['done'].' '.$data['answer'].'</p>');
?>


<?php
    $req = $db->query("
        SELECT type_id, Step1_Ex2_Types.$lang as type, count(*) as number
        FROM Step1_Ex2_Users
                INNER JOIN Step1_Ex2_Questions ON Step1_Ex2_Users.question_id = Step1_Ex2_Questions.id
                INNER JOIN Step1_Ex2_Types ON Step1_Ex2_Questions.type_id = Step1_Ex2_Types.id
        WHERE Step1_Ex2_Users.user_id = ".$_SESSION['userID']."
        GROUP BY type_id
        ORDER BY number DESC
        ");
    
    while($line = $req->fetch()){
        echo('<h2>'.$line['type'].'</h2>');
        $req2 = $db->query("
            SELECT $lang
            FROM Step1_Ex2_Questions
            WHERE type_id = ".$line['type_id']."
            AND type = 'description'");
        $line2 = $req2->fetch();
        echo('<span style="font-style:italic;">'.$line2[$lang].'</span>');
        
        $req2 = $db->query("
            SELECT Step1_Ex2_Questions.$lang as question
            FROM Step1_Ex2_Users
                    INNER JOIN Step1_Ex2_Questions ON Step1_Ex2_Users.question_id = Step1_Ex2_Questions.id
            WHERE Step1_Ex2_Users.user_id = ".$_SESSION['userID']."
              AND Step1_Ex2_Questions.type_id = ".$line['type_id']
            );
        echo('<ul>');
        while($line2 = $req2->fetch()){
            echo('<li class="done" style="color:green">'.$line2['question'].'</li>');
        }
        echo('</ul>');
        
        echo('<br /><p style="font-weight:bold">'.$data['typical'].'</p>');
        
        $req2 = $db->query("
            SELECT $lang as job
            FROM Step1_Ex2_Typical_jobs
            WHERE type_id = ".$line['type_id']
            );
        while($line2 = $req2->fetch()){
            echo($line2['job'].' / ');
        }
        echo('<br /><br />');
        
    }
    
    
?>



<h3  style="text-align: center;">
    <a href="index.php?lang=<?php echo $lang;?>&target=step1ex2&init=true">< <?php echo($translate['redo']); ?> <</a>
    <a href="index.php?lang=<?php echo $lang;?>&target=step1ex3" style="margin-left:5em;">> <?php echo($translate['next']); ?> ></a>
</h3>