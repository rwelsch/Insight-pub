<p> <?php echo($data['description1']); ?></p>

<form name="step1ex8_form" action="index.php?target=step1ex8&lang=<?php echo($lang)?>" method="POST">
    <?php
        $req = $db->query("SELECT id, rank, $lang FROM Step1_Ex8_Questions ORDER BY rank");
        while ($line = $req->fetch()){
            echo('<br />'.$line['rank'].'. '.$line[$lang]);
            echo('<br />');
            echo('<textarea name="question_'.$line['id'].'" cols=80 rows=3> --- </textarea>');
            echo('<br />');
        }
        $req->closeCursor();
    ?>

     <input type="reset" value="<?php echo $translate['reset'];?>" name="reset">
     <input type="submit" value="<?php echo $translate['send'];?>" name="send">

    
</form>
<p> <?php echo($data['description2']); ?></p>