<?php
    echo('<p class="answer">'.$translate['done'].' '.$translate['answer'].'</p>');

?>

<?php


    $req = $db->query("
        SELECT rank, $lang, user_id, type
        FROM Step4_Ex23_Laws
            LEFT OUTER JOIN (SELECT * FROM Step4_Ex23_Users WHERE user_id=".$_SESSION['userID'].") T
              ON Step4_Ex23_Laws.id = T.law_id
        WHERE user_id is not NULL
          AND type = 1
        ORDER BY rank");    

    if($req->rowCount()>0){
        echo('<h2>'.$data['good'].'</h2>');
        while ($line = $req->fetch()){
            echo('<input type="checkbox" checked="checked" disabled="disabled" /><span style="color:green;">');
            echo(' '.$line[$lang].'</span><br />');
        }
    }
    $req->closeCursor();
    
    
    
    
    $req = $db->query("
          SELECT rank, $lang, user_id, type
        FROM Step4_Ex23_Laws
            LEFT OUTER JOIN (SELECT * FROM Step4_Ex23_Users WHERE user_id=".$_SESSION['userID'].") T
              ON Step4_Ex23_Laws.id = T.law_id
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

   

?>

<p><?php echo('<p class="answer">'.$data['result'].'</p>');?></p>



<br />

<h3  style="text-align: center;">
    <a href="index.php?lang=<?php echo $lang;?>&target=step4ex23&init=true">< <?php echo($translate['redo']); ?> <</a>
</h3>