
<?php echo("<p>".$data['introduction_1']."</p>");?>
<?php echo("<p>".$data['introduction_2']."</p>");?>
        
<form name="step3ex19_form" action="index.php?target=step3ex19&lang=<?php echo($lang)?>" method="POST">
	
<?php
    $req = $db->query("
        SELECT id, $lang, rank
        FROM Step3_Ex19_Questions
        ORDER BY rank");
    while($question = $req->fetch()){
        echo('<table><tr>
            <td><img src="images/question.jpg" height="40px"></td>
            <td><span style="font-weight:bold;">'.$data['question'].' '.$question['rank'].' - '.$question[$lang].'</span></td>
                </tr></table>');
        
        $req2 = $db->query("
            SELECT id, $lang, rank
            FROM Step3_Ex19_Answers
            WHERE question_id = ".$question['id']."
            ORDER BY rank");
        while($answer = $req2->fetch()){
            echo('<p><label><input type="radio" name="choice_'.$question['id'].'" value="'.$answer['id'].'" /> '.' '.$answer[$lang].'</label></p>');
        }
        $req3 = $db->query("
            SELECT $lang
            FROM Step3_Ex19_Tips
            WHERE question_id = ".$question['id']);
        while($tip = $req3->fetch()){
            echo('<p><span style="font-style:italic">'.$data['tip'].' '.$tip[$lang].'</span></p>');
        }
    }
?>

    <br />
    <div style="text-align:center">
        <input type="reset" value="<?php echo $translate['reset'];?>" name="reset" />
        <input type="submit" value="<?php echo $translate['send'];?>" name="send" />
    </div>
</form>