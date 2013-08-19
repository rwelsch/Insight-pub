<?php
    $req = $db->query("SELECT type, $lang FROM Step1");
    while($line = $req->fetch()){
       $data[$line['type']] = $line[$lang] ;
    }
    $req->closeCursor();
    

?>

<h1><?php echo($data['title'])?></h1>


<?php 
    echo("<ul>");
    
    
    $exercises = array('1','2','3','4','5','6','7','8','9','10','11','12','13','14A','14B','15');

    foreach($exercises as $i){
    
        $req = $db->query("SELECT $lang FROM Step1_Ex".$i." WHERE type='title'");
        $line=$req->fetch();
        
        $req2 = $db->query("SELECT ex".$i." FROM Users WHERE id=".$_SESSION['userID']."");
        $line2=$req2->fetch();
        
        if($line2['ex'.$i] == 1){
            echo('<li class="done"><a href="index.php?target=step1ex'.$i.'&lang='.$lang.'">'.$line[$lang].'</a></li>');
        } else {
            echo('<li class="todo"><a href="index.php?target=step1ex'.$i.'&lang='.$lang.'">'.$line[$lang].'</a></li>');
        }
    }
    
    		
    echo("</ul>");
?>

