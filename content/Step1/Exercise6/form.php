
<p><?php echo($data['introduction']); ?></p>

<form name="step1ex6_form" action="index.php?target=step1ex6&lang=<?php echo($lang)?>" method="POST">
    
    <?php
        $req = $db->query("SELECT id, rank, $lang FROM Step1_Ex6_Statements ORDER BY rank");
        while($line = $req->fetch()){
            echo('<p><label><input type="radio" name="step1_ex6_form_statement" value="'.$line['id'].'" /> '.$line[$lang].'</label></p>');
        }
        $req->closeCursor();
    ?>

    <input type="reset" value="<?php echo $translate['reset'];?>" name="reset">
    <input type="submit" value="<?php echo $translate['send'];?>" name="send">
</form>

