<?php
    echo('<p class="answer">'.$translate['done'].' '.$translate['answer'].'</p>');
?>

<h2><?php echo($data['partA']); ?></h2>
    <table width="100%" style="border-collapse:collapse">

    <?php
        $req = $db->query("
            SELECT rank, $lang AS value, user_id
            FROM Step1_Ex4_Values
                LEFT OUTER JOIN (SELECT * FROM Step1_Ex4_Users_Personnal_Values WHERE Step1_Ex4_Users_Personnal_Values.user_id=".$_SESSION['userID'].") T
                ON Step1_Ex4_Values.id = T.value_id
            ORDER BY rank");
        while ($line = $req->fetch()){
            if($row%4 == 0){
                echo('<tr>');
            }
            if($line['user_id'] == NULL){ // réponse non cochée
                echo('<td style="text-align:center;width:25%;border:1px solid black;valign:middle;">'.$line['value'].'</td>');
            } else { // réponse cochée
                echo('<td style="text-align:center;width:25%;border:1px solid black;valign:middle;font-weight:bold;color:green;"><img src="images/check-box-small.jpg" /><br />'.$line['value'].'</td>');
            }
            
            if($row%4 == 3){
                echo('</tr>');
            }
            $row++;
            
            
        }
        $req->closeCursor();
    ?>
    </table>


<h2><?php echo($data['partB']); ?></h2>

    <ol>
    <?php
        $req = $db->query("
            SELECT Step1_Ex4_Users_Rank_Values.rank, Step1_Ex4_Values.$lang, user_id, Step1_Ex4_Values_Description.$lang AS description
            FROM Step1_Ex4_Values
                INNER JOIN Step1_Ex4_Users_Rank_Values ON Step1_Ex4_Values.id = Step1_Ex4_Users_Rank_Values.value_id
                INNER JOIN Step1_Ex4_Values_Description ON Step1_Ex4_Values_Description.value_id = Step1_Ex4_Values.id
            WHERE Step1_Ex4_Users_Rank_Values.user_id=".$_SESSION['userID']."
            ORDER BY rank");
        while ($line = $req->fetch()){
            echo('<li><p>'.$line[$lang].' - '.$line['description'].'</p></li>');
        }
        $req->closeCursor();
    ?>
    </ol>

<p><?php echo('<p class="answer">'.$data['result'].'</p>');?></p>


<br />

<h3  style="text-align: center;">
    <a href="index.php?lang=<?php echo $lang;?>&target=step1ex4&init=true">< <?php echo($translate['redo']); ?> <</a>
    <a href="index.php?lang=<?php echo $lang;?>&target=step1ex5" style="margin-left:5em;">> <?php echo($translate['next']); ?> ></a>
</h3>