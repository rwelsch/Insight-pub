<?php
    echo('<p class="answer">'.$translate['done'].' '.$translate['answer'].'</p>');
    echo('<h2>'.$data['used'].'</h2>');

    
    $way = 0;
    $req = $db->query("SELECT Step1_Ex9_Ways.id, user_id, rank, example, $lang 
            FROM Step1_Ex9_Ways 
              LEFT OUTER JOIN (SELECT * FROM Step1_Ex9_Users WHERE user_id = ".$_SESSION['userID']." ) T
                ON Step1_Ex9_Ways.id = T.way_id
            ORDER BY rank");
    while ($line = $req->fetch()){
        if($line['user_id'] == NULL) {
            //echo('<input type="checkbox" disabled="disabled" /><span> '.$line[$lang].'</span><br />');
        } else {
            $way++;
            echo('<input type="checkbox" checked="checked" disabled="disabled" /><span style="font-weight:normal;color:green"> '.$line[$lang].'</span><br />');
            echo('<span style="margin-left:2em;font-style:italic;">'.$line['example'].'</span><br />');
        }
    }

    echo('<h2>'.$data['not_used'].'</h2>');
 
    $req = $db->query("SELECT Step1_Ex9_Ways.id, user_id, rank, example, $lang 
            FROM Step1_Ex9_Ways 
              LEFT OUTER JOIN (SELECT * FROM Step1_Ex9_Users WHERE user_id = ".$_SESSION['userID']." ) T
                ON Step1_Ex9_Ways.id = T.way_id
            ORDER BY rank");
    while ($line = $req->fetch()){
        if($line['user_id'] == NULL) {
            echo('<input type="checkbox" disabled="disabled" /><span> '.$line[$lang].'</span><br />');
        }
    }
        
        
        
        
        
        
        
        $req->closeCursor();
    
    echo('<br /><p class="answer">');
    if($way<=5){
        echo('<span style="font-weight:bold">'.$data['satisfactory'].'</span> - ');
        echo($data['satisfactory_text']);
    } else if($way<=10){
        echo('<span style="font-weight:bold">'.$data['verywell'].'</span> - ');
        echo($data['verywell_text']);
        
    } else {
        echo('<span style="font-weight:bold">'.$data['welldone'].'</span> - ');
        echo($data['welldone_text']);        
    }
    echo('</p>');
    echo('<p class="answer">'.$data['conclusion'].'</p>');
?>

<br />
<h3  style="text-align: center;">
    <a href="index.php?lang=<?php echo $lang;?>&target=step1ex9&init=true">< <?php echo($translate['redo']); ?> <</a>
    <a href="index.php?lang=<?php echo $lang;?>&target=step1ex10" style="margin-left:5em;">> <?php echo($translate['next']); ?> ></a>
</h3>