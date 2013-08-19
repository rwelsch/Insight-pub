<?php
    echo('<p class="answer">'.$translate['done'].' '.$translate['answer'].'</p>');
?>

<?php

    $req = $db->query("
        SELECT rank, $lang, user_id, type
        FROM Step4_Ex22_Items
            LEFT OUTER JOIN (SELECT * FROM Step4_Ex22_Users WHERE user_id=".$_SESSION['userID'].") T
              ON Step4_Ex22_Items.id = T.item_id
        WHERE user_id is not NULL
          AND type = 1
        ORDER BY rank");    

    if($req->rowCount()>0){
        echo('<h2>'.$data['good'].'</h2>');
        while ($line = $req->fetch()){
            echo('<input type="checkbox" checked="checked" disabled="disabled" /><span style="color:green;">');
            echo(' <span style="font-weight:bold">'.$data['item'].' '.$line['rank'].'</span> / '.$line[$lang].'</span><br />');
        }
    }
    $req->closeCursor();
    
    
    
    
    $req = $db->query("
        SELECT rank, $lang, user_id, type
        FROM Step4_Ex22_Items
            LEFT OUTER JOIN (SELECT * FROM Step4_Ex22_Users WHERE user_id=".$_SESSION['userID'].") T
              ON Step4_Ex22_Items.id = T.item_id
        WHERE user_id is NULL
          AND type = 1
        ORDER BY rank");    
    if($req->rowCount()>0){
        echo('<h2>'.$data['miss'].'</h2>');
        while ($line = $req->fetch()){
            echo('<input type="checkbox" disabled="disabled" /><span style="color:orange;">');
            echo(' <span style="font-weight:bold">'.$data['item'].' '.$line['rank'].'</span> / '.$line[$lang].'</span><br />');
       }
    }
    $req->closeCursor();

    
    
    
    $req = $db->query("
        SELECT rank, $lang, user_id, type
        FROM Step4_Ex22_Items
            LEFT OUTER JOIN (SELECT * FROM Step4_Ex22_Users WHERE user_id=".$_SESSION['userID'].") T
              ON Step4_Ex22_Items.id = T.item_id
        WHERE user_id is not NULL
          AND type = 0
        ORDER BY rank");
    if($req->rowCount()>0){
        echo('<h2>'.$data['bad'].'</h2>');
        while ($line = $req->fetch()){
            echo('<input type="checkbox" checked="checked" disabled="disabled" /><span style="color:red;">');
            echo(' <span style="font-weight:bold">'.$data['item'].' '.$line['rank'].'</span> / '.$line[$lang].'</span><br />');
        }
    }
    $req->closeCursor();

?>

<br />
<?php
    echo('<p class="answer"">'.$data['conclusion'].'</p>');
?>


<br />

<h3  style="text-align: center;">
    <a href="index.php?lang=<?php echo $lang;?>&target=step4ex22&init=true">< <?php echo($translate['redo']); ?> <</a>
    <a href="index.php?lang=<?php echo $lang;?>&target=step4ex23" style="margin-left:5em;">> <?php echo($translate['next']); ?> ></a>
</h3>