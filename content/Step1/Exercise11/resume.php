<?php
    echo('<p class="answer">'.$translate['done'].' '.$translate['answer'].'</p>');
?>


    <table>
        <tr>
            <td class="separate" colspan="2"><?php echo($data['step_1']) ?></td>
        </tr>

        <?php
            $yes = 0;
            $req = $db->query("
                SELECT rank, $lang, answer 
                FROM Step1_Ex11_Statements 
                  INNER JOIN Step1_Ex11_Users ON Step1_Ex11_Users.statement_id = Step1_Ex11_Statements.id
                WHERE user_id=".$_SESSION['userID']." AND rank<11
                ORDER BY rank");
            while($line = $req->fetch()){
                if($line['answer']==1){
                    $yes++;
                    echo('
                        <tr>
                            <td style="text-align:center"><img src="images/check-box-small.jpg"/></td>
                            <td style="font-weight:bold;color:green">'.$line[$lang].'</td>
                        </tr>');
                }else {
                    echo('
                        <tr>
                            <td style="text-align:center"><img src="images/red-cross-small.png"/> </td>
                            <td style="color:black">'.$line[$lang].'</td>
                        </tr>');
                    
                }
            }
            $req->closeCursor();?>

        
        
        
        <tr>
            <td class="separate" colspan="2"><?php echo($data['step_2']) ?></td>
        </tr>

        <?php
	//STEP 2
	$req = $db->query("
                SELECT rank, $lang, answer 
                FROM Step1_Ex11_Statements 
                  INNER JOIN Step1_Ex11_Users ON Step1_Ex11_Users.statement_id = Step1_Ex11_Statements.id
                WHERE user_id=".$_SESSION['userID']." AND rank>10 AND rank<16
                ORDER BY rank");
            while($line = $req->fetch()){
                if($line['answer']==1){
                    $yes++;
                    echo('
                        <tr>
                            <td style="text-align:center"><img src="images/check-box-small.jpg"/></td>
                            <td style="font-weight:bold;color:green">'.$line[$lang].'</td>
                        </tr>');
                }else {
                    echo('
                        <tr>
                            <td style="text-align:center"> <img src="images/red-cross-small.png"/> </td>
                            <td style="color:black">'.$line[$lang].'</td>
                        </tr>');
                    
                }
            }
           $req->closeCursor();
			?>
	
        <tr>
            <td class="separate" colspan="2"><?php echo($data['step_2']) ?></td>
        </tr>
        <?php
            //STEP 3
            $req = $db->query("
                SELECT rank, $lang, answer 
                FROM Step1_Ex11_Statements 
                  INNER JOIN Step1_Ex11_Users ON Step1_Ex11_Users.statement_id = Step1_Ex11_Statements.id
                WHERE user_id=".$_SESSION['userID']." AND rank>15 
                ORDER BY rank");
            while($line = $req->fetch()){
                if($line['answer']==1){
                    $yes++;
                    echo('
                        <tr>
                            <td style="text-align:center"><img src="images/check-box-small.jpg"/></td>
                            <td style="font-weight:bold;color:green">'.$line[$lang].'</td>
                        </tr>');
                }else {
                    echo('
                        <tr>
                            <td style="text-align:center"> <img src="images/red-cross-small.png"/> </td>
                            <td style="color:black">'.$line[$lang].'</td>
                        </tr>');
                    
                }
            }
            $req->closeCursor();
        ?>
     </table>


<br />

<?php 
    if($yes<11){
        echo('<p class="answer" style="font-weight:bold;">'.$data['result_no_title'].'</p>');
	echo('<p class="answer">'.$data['result_no_description_1'].'</p>');
	echo('<p class="answer">'.$data['result_no_description_2'].'</p>');
    } else if($yes>10){
        echo('<p class="answer" style="font-weight:bold;">'.$data['result_yes_title'].'</p>');
	echo('<p class="answer">'.$data['result_yes_description'].'</p>');
    } 
		
    
?>



<h3  style="text-align: center;">
    <a href="index.php?lang=<?php echo $lang;?>&target=step1ex11&init=true">< <?php echo($translate['redo']); ?> <</a>
    <a href="index.php?lang=<?php echo $lang;?>&target=step1ex12" style="margin-left:5em;">> <?php echo($translate['next']); ?> ></a>
</h3>