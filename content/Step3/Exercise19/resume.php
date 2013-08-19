<?php
    echo('<p class="answer">'.$translate['done'].' '.$translate['answer'].'</p>');
?>


<?php
    $req = $db->query("
        SELECT id, $lang, rank
        FROM Step3_Ex19_Questions
        ORDER BY rank");
    
    while($question = $req->fetch()){
        $req2 = $db->query("
        SELECT $lang, rank, type, answer_id
            FROM (SELECT id, $lang, rank, type FROM Step3_Ex19_Answers WHERE question_id = ".$question['id'].") T1
                INNER JOIN (SELECT answer_id FROM Step3_Ex19_Users WHERE user_id = ".$_SESSION['userID']." AND question_id = ".$question['id'].") T2
                  ON T1.id = T2.answer_id
            ORDER BY rank");
        
        if($req2->rowCount()==0){
            echo('<table><tr>
                <td><img src="images/red-cross.jpg" width="40px"></td>
                <td><span style="font-weight:bold;">'.$data['question'].' '.$question['rank'].' - '.$question[$lang].'</span></td>
                </tr></table>');
            
            echo($data['miss'].' '.$data['correct']);
                $req3 =  $db->query("
                    SELECT $lang, type
                    FROM Step3_Ex19_Answers 
                    WHERE question_id = ".$question['id']."
                      AND type=1");
                $correct = $req3->fetch();
                echo('<p style="font-style:italic">'.$correct[$lang].'</p>');
            
        } else {
            $answer = $req2->fetch();
            if($answer['type']==1){
                echo('<table><tr>
                    <td><img src="images/check-box.jpg" width="40px"></td>
                    <td><span style="font-weight:bold;">'.$data['question'].' '.$question['rank'].' - '.$question[$lang].'</span></td>
                    </tr></table>');
                echo($data['check_correct']);
                echo('<p style="color:green;">'.$answer[$lang].'</p>');
            } else {
                echo('<table><tr>
                    <td><img src="images/red-cross.jpg" width="40px"></td>
                    <td><span style="font-weight:bold;">'.$data['question'].' '.$question['rank'].' - '.$question[$lang].'</span></td>
                    </tr></table>');
                echo($data['check_wrong']);
                echo('<p style="color:red;">'.$answer[$lang].'</p>');
                echo($data['correct']);
                $req3 =  $db->query("
                    SELECT $lang, type
                    FROM Step3_Ex19_Answers 
                    WHERE question_id = ".$question['id']."
                      AND type=1");
                $correct = $req3->fetch();
                echo('<p style="font-style:italic">'.$correct[$lang].'</p>');
                
            }
        }
        
    }

?>





<?php
    echo('<p class="answer">'.$data['result'].'</p>');
    echo('<ul class="answer">');
    $req = $db->query("
        SELECT $lang, rank
        FROM Step3_Ex19_Frequently
        ORDER BY rank");
    while($question = $req->fetch()){
        echo('<li>'.$question[$lang].'</li>');
    }
    echo('</ul>');
?>

<br />

<h3  style="text-align: center;">
    <a href="index.php?lang=<?php echo $lang;?>&target=step3ex19&init=true">< <?php echo($translate['redo']); ?> <</a>
    <a href="index.php?lang=<?php echo $lang;?>&target=step4ex20" style="margin-left:5em;">> <?php echo($translate['next']); ?> ></a>
</h3>