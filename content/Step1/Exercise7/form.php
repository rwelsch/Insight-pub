
<p><?php echo($data['introduction']); ?></p>

		
<form name="step1ex7_form" action="index.php?target=step1ex7&lang=<?php echo($lang)?>" method="POST">
        <?php
            $req = $db->query("SELECT id, rank, $lang FROM Step1_Ex7_Questions ORDER BY rank");
            while ($line = $req->fetch()){
                echo('<p><label><input type="checkbox" name="choice_'.$line['id'].'" value="'.$line['id'].'" /> '.$line[$lang].' </label></p>');
        }
        $req->closeCursor();
    ?>

    <br />
    <div style="text-align:center">
        <input type="reset" value="<?php echo $translate['reset'];?>" name="reset">
        <input type="submit" value="<?php echo $translate['send'];?>" name="send">
    </div>

    
</form>