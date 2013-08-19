<?php
    echo('<p class="answer">'.$translate['done'].' '.$translate['answer'].'</p>');
    echo('<p class="answer">'.$translate['result'].'</p>');
?>

<?php
    $req = $db->query("
        SELECT Step2_Ex17_Things.id AS id, Step2_Ex17_Things.$lang AS thing, Step2_Ex17_Explanations.$lang AS explanation,Step2_Ex17_Users.rank, type
        FROM Step2_Ex17_Users
          INNER JOIN Step2_Ex17_Things ON Step2_Ex17_Users.thing_id = Step2_Ex17_Things.id
          INNER JOIN Step2_Ex17_Explanations ON Step2_Ex17_Explanations.thing_id = Step2_Ex17_Things.id
        WHERE Step2_Ex17_Users.user_id=".$_SESSION['userID']."
        ORDER BY Step2_Ex17_Users.rank");
    while($line = $req->fetch()){
        //echo('<p><span style="font-weight:bold">'.$data['choice']." ".$line['rank']." - ");
        //echo($line['thing']."</span><br />");
        
        echo('<table><tr>
            <td><img src="images/ex17/'.$line['id'].'.jpg" width="80px" height=80px/></td>
            <td><span style="font-weight:bold">'.$data['choice'].' '.$line['rank'].' - '.$line['thing'].'</span><br />');
        if($line['type']==1){
            echo('<span style="color:green">');
        } else {
            echo('<span style="color:red">');            
        }
        echo($line['explanation']);
        echo('</span></td>
            </tr>
            <tr><td><br/></td><td></td></tr></table>');
        
        
    }
?>



<br />
<h3  style="text-align: center;">
    <a href="index.php?lang=<?php echo $lang;?>&target=step2ex17&init=true">< <?php echo($translate['redo']); ?> <</a>
    <a href="index.php?lang=<?php echo $lang;?>&target=step2ex18" style="margin-left:5em;">> <?php echo($translate['next']); ?> ></a>
</h3>