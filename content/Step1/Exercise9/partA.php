<h2><?php echo($data['partA']);?></h2>

    <p><?php echo($data['introductionA']);?></p>



<form name="step1ex9_form1" action="index.php?target=step1ex9&lang=<?php echo($lang)?>" method="POST">
    <?php
        $req = $db->query("SELECT id, rank, $lang FROM Step1_Ex9_Ways ORDER BY rank");
        while ($line = $req->fetch()){
            echo('<p><label><input type="checkbox" name="choice_'.$line['id'].'" value="'.$line['id'].'" /> '.$line[$lang].'</label></p>');
        }
        $req->closeCursor();
    ?>

    <br />
    <div style="text-align:center">
        <input type="reset" value="<?php echo $translate['reset'];?>" name="reset" />
        <input type="submit" value="<?php echo $translate['send'];?>" name="sendA" />
    </div>
</form>

