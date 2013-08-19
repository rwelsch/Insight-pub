
<p><?php echo($data['introduction']); ?></p>

<form name="step1ex5_form" action="index.php?target=step1ex5&lang=<?php echo($lang)?>" method="POST">

    <table >
        <tr>
            <th><?php echo($data['statement']) ?><hr /></th>
            <th><?php echo($data['yes']) ?><hr /></th>
            <th><?php echo($data['no']) ?><hr /></th>
        </tr>

        <?php
            $req = $db->query("SELECT id, rank, $lang FROM Step1_Ex5_Statements ORDER BY rank");
            $color = 0;
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
                        <td style="text-align:center"><input type="radio" name="step1_ex5_form_'.$line['id'].'" value="1" /></td>
                        <td style="text-align:center"><input type="radio" name="step1_ex5_form_'.$line['id'].'" value="0" checked="checked"/></td>
                    </tr>');
            }
            $req->closeCursor();
        ?>
     </table>
     <input type="reset" value="<?php echo $translate['reset'];?>" name="reset">
     <input type="submit" value="<?php echo $translate['send'];?>" name="send">
</form>

