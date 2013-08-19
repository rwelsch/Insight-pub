<h2><?php echo($data['partA']);?></h2>

<ul>
    <li><?php echo($data['description1']);?></li>
    <li><?php echo($data['description2']);?></li>
    <li><?php echo($data['description3']);?></li>
    <li><?php echo($data['description4']);?></li>
</ul>

<br />
    
<form name="step1ex1_form1" action="index.php?target=step1ex1&lang=<?php echo($lang)?>" method="POST">
    <table>
        <tr>
            <th><?php echo($data['skill']) ?><hr /></th>
            <th><?php echo($data['level1']) ?><hr /></th>
            <th><?php echo($data['level2']) ?><hr /></th>
            <th><?php echo($data['level3']) ?><hr /></th>
            <th><?php echo($data['level0']) ?><hr /></th>
        </tr>

        <?php
            $req = $db->query("SELECT id, $lang FROM Step1_Ex1_SkillType");
            while($line = $req->fetch()){
                echo('<tr ><td colspan="5" class="separate">'.$line[$lang].'</td></tr>');
                $req2 = $db->query("SELECT id, $lang FROM Step1_Ex1_Skills WHERE skill=".$line['id']." ORDER BY id");
                $color =0;
                while($line2 = $req2->fetch()){
                    if($color==0){
                        echo('<tr style="background:#EEEEEE">');
                        $color=1;
                    } else {
                        echo('<tr style="background:#CCCCCC">');
                        $color=0;
                    }
                    echo('
                        
                            <td >'.$line2[$lang].'</td>
                            <td style="text-align:center"><input type="radio" name="step1_ex1_a_form_'.$line2['id'].'" value="1" /></td>
                            <td style="text-align:center"><input type="radio" name="step1_ex1_a_form_'.$line2['id'].'" value="2" /></td>
                            <td style="text-align:center"><input type="radio" name="step1_ex1_a_form_'.$line2['id'].'" value="3" /></td>
                            <td style="text-align:center"><input type="radio" name="step1_ex1_a_form_'.$line2['id'].'" value="0" checked="checked"/></td>
                        </tr>');
                }
                $req2->closeCursor();
            }
            $req->closeCursor();
        ?>
     </table>
    
    <br />
    <div style="text-align:center">
        <input type="reset" value="<?php echo $translate['reset'];?>" name="reset">
        <input type="submit" value="<?php echo $translate['send'];?>" name="sendA">
    </div>
</form>
