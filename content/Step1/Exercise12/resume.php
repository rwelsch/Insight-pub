<?php
    echo('<p class="answer">'.$translate['done'].' '.$translate['answer'].'</p>');


    
    echo('<h2>'.$data['done'].'</h2>');
    $req = $db->query("
        SELECT rank, $lang, user_id
        FROM Step1_Ex12_Actions
            LEFT OUTER JOIN (SELECT * FROM Step1_Ex12_Users WHERE user_id=".$_SESSION['userID'].") T
            ON Step1_Ex12_Actions.id = T.action_id
        ORDER BY rank");
    while ($line = $req->fetch()){
        if($line['user_id'] != NULL){ // réponse non cochée
           // echo('<input type="checkbox" disabled="disabled" /><span> ');
            echo('<input type="checkbox" checked="checked" disabled="disabled" /><span style="font-weight:normal;color:green"> ');
            echo($line[$lang].'</span> <br />');
        }
    }
    $req->closeCursor();

    
    
    echo('<h2>'.$data['not_done'].'</h2>');
    $req = $db->query("
        SELECT rank, $lang, user_id
        FROM Step1_Ex12_Actions
            LEFT OUTER JOIN (SELECT * FROM Step1_Ex12_Users WHERE user_id=".$_SESSION['userID'].") T
            ON Step1_Ex12_Actions.id = T.action_id
        ORDER BY rank");
    while ($line = $req->fetch()){
        if($line['user_id'] == NULL){ // réponse non cochée
            echo('<input type="checkbox" disabled="disabled" /><span> ');
            echo($line[$lang].'</span> <br />');
        }
    }
    $req->closeCursor();
        
    echo('<br />');
    echo('<p class="answer">'.$data['result_1'].'</p>');
    echo('<p class="answer">'.$data['result_2'].'</p>');

?>



<br />

<h3  style="text-align: center;">
    <a href="index.php?lang=<?php echo $lang;?>&target=step1ex12&init=true">< <?php echo($translate['redo']); ?> <</a>
	<a href="index.php?lang=<?php echo $lang;?>&target=step1ex13" style="margin-left:5em;">> <?php echo($translate['next']); ?> ></a>
</h3>