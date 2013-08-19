
<p><?php echo($data['introduction']); ?></p>

<form name="step1ex11_form" action="index.php?target=step1ex11&lang=<?php echo($lang)?>" method="POST">

    <table>
        <tr>
            <th><hr /></th>
            <th><?php echo($data['yes']) ?><hr /></th>
            <th><?php echo($data['no']) ?><hr /></th>
        </tr>
        
        <?php // STEP 1?>
        <tr>
            <td class="separate" colspan="3"><?php echo($data['step_1']) ?></td>
        </tr>

        <?php
            $req = $db->query("SELECT id, rank, $lang FROM Step1_Ex11_Statements WHERE rank<11 ORDER BY rank");
            $color=0;
            while($line = $req->fetch()){
                if($color==0){
                    echo('<tr style="background:#EEEEEE">');
                    $color=1;
                } else {
                    echo('<tr style="background:#CCCCCC">');
                    $color=0;
                }
                echo('
                    
                        <td >'.$line[$lang].'</td>
                        <td style="text-align:center"><input type="radio" name="step1_ex11_form_'.$line['id'].'" value="1" /></td>
                        <td style="text-align:center"><input type="radio" name="step1_ex11_form_'.$line['id'].'" value="0" checked="checked"/></td>
                    </tr>');
            }
            $req->closeCursor();
        ?>

        <?php // STEP 2?>
        <tr>
            <td class="separate" colspan="3"><?php echo($data['step_2']) ?></td>
        </tr>

        <?php
            $req = $db->query("SELECT id, rank, $lang FROM Step1_Ex11_Statements WHERE rank>10 AND rank<16 ORDER BY rank");
            while($line = $req->fetch()){
                if($color==0){
                    echo('<tr style="background:#EEEEEE">');
                    $color=1;
                } else {
                    echo('<tr style="background:#CCCCCC">');
                    $color=0;
                }
                
                echo('
                        <td >'.$line[$lang].'</td>
                        <td style="text-align:center"><input type="radio" name="step1_ex11_form_'.$line['id'].'" value="1" /></td>
                        <td style="text-align:center"><input type="radio" name="step1_ex11_form_'.$line['id'].'" value="0" checked="checked"/></td>
                    </tr>');
            }
            $req->closeCursor();
        ?>
        <?php // STEP 3?>
        <tr>
            <td class="separate" colspan="3"><?php echo($data['step_3']) ?></td>
        </tr>

        <?php
            $req = $db->query("SELECT id, rank, $lang FROM Step1_Ex11_Statements WHERE rank>15 ORDER BY rank");
            while($line = $req->fetch()){
                if($color==0){
                    echo('<tr style="background:#EEEEEE">');
                    $color=1;
                } else {
                    echo('<tr style="background:#CCCCCC">');
                    $color=0;
                }
                echo('
                        <td >'.$line[$lang].'</td>
                        <td style="text-align:center"><input type="radio" name="step1_ex11_form_'.$line['id'].'" value="1" /></td>
                        <td style="text-align:center"><input type="radio" name="step1_ex11_form_'.$line['id'].'" value="0" checked="checked"/></td>
                    </tr>');
            }
            $req->closeCursor();
        ?>
     </table>
    
    <br />
    <div style="text-align:center">
        <input type="reset" value="<?php echo $translate['reset'];?>" name="reset">
        <input type="submit" value="<?php echo $translate['send'];?>" name="send">
    </div>
</form>

