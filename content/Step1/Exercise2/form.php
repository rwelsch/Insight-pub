<p><?php echo($data['introduction2']);?></p>

<form name="step1ex2" action="index.php?target=step1ex2&lang=<?php echo($lang)?>" method="POST">
    <?php 
        echo('<h3>'.$data['like'].'</h3>');
        $req = $db->query("
            SELECT id, $lang, type
            FROM Step1_Ex2_Questions
            WHERE type='like'
            ORDER BY id");
        while ($line = $req->fetch()){
            echo('<input type="checkbox" name="question[]" value="'.$line['id'].'"> '.$line[$lang].' <br />');
        }
    ?>

    <?php 
        echo('<h3>'.$data['good'].'</h3>');
        $req = $db->query("
            SELECT id, $lang, type
            FROM Step1_Ex2_Questions
            WHERE type='good'
            ORDER BY id");
        while ($line = $req->fetch()){
            echo('<input type="checkbox" name="question[]" value="'.$line['id'].'"> '.$line[$lang].' <br />');
        }
    ?>

    <?php 
        echo('<h3>'.$data['value'].'</h3>');
        $req = $db->query("
            SELECT id, $lang, type
            FROM Step1_Ex2_Questions
            WHERE type='value'
            ORDER BY id");
        while ($line = $req->fetch()){
            echo('<input type="checkbox" name="question[]" value="'.$line['id'].'"> '.$line[$lang].' <br />');
        }
    ?>

    <input type="reset" value="<?php echo $translate['reset'];?>" name="reset">
    <input type="submit" value="<?php echo $translate['send'];?>" name="send">
</form>
