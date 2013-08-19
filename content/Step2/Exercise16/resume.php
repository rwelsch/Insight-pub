<?php
    echo('<p class="answer">'.$translate['done'].' '.$translate['answer'].'</p>');
?>
<?php
    $req = $db->query("
        SELECT Step2_Ex16_Things.$lang AS thing, Step2_Ex16_Explanations.$lang AS explanation,Step2_Ex16_Users.rank, type
        FROM Step2_Ex16_Users
          INNER JOIN Step2_Ex16_Things ON Step2_Ex16_Users.thing_id = Step2_Ex16_Things.id
          INNER JOIN Step2_Ex16_Explanations ON Step2_Ex16_Explanations.thing_id = Step2_Ex16_Things.id
        WHERE Step2_Ex16_Users.user_id=".$_SESSION['userID']."
        ORDER BY Step2_Ex16_Users.rank");
    while($line = $req->fetch()){
        echo('<p><span style="font-weight:bold">'.$data['choice']." ".$line['rank']." - ");
        echo($line['thing']."</span><br />");
        if($line['type']==1){
            echo('<span style="color:green">');
        } else {
            echo('<span style="color:red">');            
        }
        echo($line['explanation']);
        echo('</span></p>');
 }
?>



<br />
<h3  style="text-align: center;">
    <a href="index.php?lang=<?php echo $lang;?>&target=step2ex16&init=true">< <?php echo($translate['redo']); ?> <</a>
    <a href="index.php?lang=<?php echo $lang;?>&target=step2ex17" style="margin-left:5em;">> <?php echo($translate['next']); ?> ></a>
</h3>