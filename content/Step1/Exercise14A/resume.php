<?php
    echo('<p class="answer">'.$translate['done'].' '.$translate['answer'].'</p>');
?>

<?php


    $req = $db->query("
        SELECT rank, $lang, user_id, type
        FROM Step1_Ex14A_Informations
            LEFT OUTER JOIN (SELECT * FROM Step1_Ex14A_Users WHERE user_id=".$_SESSION['userID'].") T
            ON Step1_Ex14A_Informations.id = T.information_id
        WHERE user_id is not NULL
          AND type = 1
        ORDER BY rank");    

    if($req->rowCount()>0){
        echo('<h2>'.$data['correct'].'</h2>');
        while ($line = $req->fetch()){
            echo('<input type="checkbox" checked="checked" disabled="disabled" /><span style="color:green;">');
            echo(' '.$line[$lang].'</span><br />');
        }
    }
    $req->closeCursor();
    
    
    
    
    $req = $db->query("
        SELECT rank, $lang, user_id, type
        FROM Step1_Ex14A_Informations
            LEFT OUTER JOIN (SELECT * FROM Step1_Ex14A_Users WHERE user_id=".$_SESSION['userID'].") T
            ON Step1_Ex14A_Informations.id = T.information_id
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
        SELECT rank, $lang, user_id, type
        FROM Step1_Ex14A_Informations
            LEFT OUTER JOIN (SELECT * FROM Step1_Ex14A_Users WHERE user_id=".$_SESSION['userID'].") T
            ON Step1_Ex14A_Informations.id = T.information_id
        WHERE user_id is not NULL
          AND type = 0
        ORDER BY rank");
    if($req->rowCount()>0){
        echo('<h2>'.$data['wrong'].'</h2>');
        while ($line = $req->fetch()){
            echo('<input type="checkbox" checked="checked" disabled="disabled" /><span style="color:red;">');
            echo(' '.$line[$lang].'</span><br />');
        }
    }
    $req->closeCursor();
    
?>



<br />

<h3  style="text-align: center;">
    <a href="index.php?lang=<?php echo $lang;?>&target=step1ex14A&init=true">< <?php echo($translate['redo']); ?> <</a>
	<a href="index.php?lang=<?php echo $lang;?>&target=step1ex14B" style="margin-left:5em;">> <?php echo($translate['next']); ?> ></a>
</h3>