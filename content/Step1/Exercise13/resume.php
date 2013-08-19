<?php
    echo('<p class="answer">'.$translate['done'].' '.$translate['answer'].'</p>');
?>

<h2><?php echo($data['partA']);?></h2>

<?php
    $req = $db->query("
        SELECT id, rank, achievement 
        FROM Step1_Ex13_Users_Achievements 
        WHERE user_id=".$_SESSION['userID']." ORDER BY rank");
    
    while($line = $req->fetch()){
        echo($line['rank'].' - <span style="font-style:italic;">'.$line['achievement'].'</span><br />');
    }

?>

<h2><?php echo($data['partB']);?></h2>

<?php
    $req = $db->query("
        SELECT id, rank, achievement, details
        FROM Step1_Ex13_Users_Achievements 
        WHERE user_id=".$_SESSION['userID']." ORDER BY rank");
    
    while($line = $req->fetch()){
        if($line['details']){
            echo($data['achievement'].' '.$line['rank'].' - '.$line['achievement'].'<br />');
            echo('<span style="font-style:italic;">'.$line['details'].'</span>');
        }
    }

?>

<h2><?php echo($data['partC']);?></h2>

<?php
    $req = $db->query("
        SELECT id, rank, future
        FROM Step1_Ex13_Users_Futures
        WHERE user_id=".$_SESSION['userID']." ORDER BY rank");
    
    while($line = $req->fetch()){
        echo($line['rank'].' - <span style="font-style:italic;">'.$line['future'].'</span><br />');
    }
?>


<br />
<h3  style="text-align: center;">
    <a href="index.php?lang=<?php echo $lang;?>&target=step1ex13&init=true">< <?php echo($translate['redo']); ?> <</a>
    <a href="index.php?lang=<?php echo $lang;?>&target=step1ex14A" style="margin-left:5em;">> <?php echo($translate['next']); ?> ></a>
</h3>
