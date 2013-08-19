<?php
    echo('<p class="answer">'.$translate['done'].' '.$translate['answer'].'</p>');
?>

<?php
    $req = $db->query("SELECT choice FROM Step1_Ex15_Users WHERE user_id=".$_SESSION['userID']."");
    if($line=$req->fetch()){
        if($line['choice']==1){ // wrong answer
            echo('<p style="color:red">'.$data['wrong'].'</p>');
            
        } else { // right answer
            echo('<p style="color:green">'.$data['right'].'</p>');
        }
        
    } else {
        echo('<p style="color:red">'.$data['no_answer'].'</p>');
    }
?>



<br />
<h3  style="text-align: center;">
    <a href="index.php?lang=<?php echo $lang;?>&target=step1ex15&init=true">< <?php echo($translate['redo']); ?> <</a>
    <a href="index.php?lang=<?php echo $lang;?>&target=step2ex16" style="margin-left:5em;">> <?php echo($translate['next']); ?> ></a>
</h3>