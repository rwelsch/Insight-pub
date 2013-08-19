<h2><?php echo($data['partB']);?></h2>

<?php echo($data['introduction_2']);?>

<br />
<br />


<form name="step1ex13_formB" action="index.php?target=step1ex13&lang=<?php echo($lang)?>" method="POST">

    <?php
    
        $req = $db->query("SELECT id, rank, achievement FROM Step1_Ex13_Users_Achievements WHERE user_id=".$_SESSION['userID']." ORDER BY rank");
    
        echo '<select name="step1_ex13_b_choice">';
        while($line = $req->fetch()){
            echo '<option value="'.$line['id'].'">'.$data['achievement'].' '.$line['rank'].' - '.$line['achievement'].'</option>';
        }
        echo('<br />');

        echo('<textarea name="details" cols=80 rows=3> --- </textarea>');

        $req->closeCursor();

    ?>

    <br />
    <div style="text-align:center">
        <input type="reset" value="<?php echo $translate['reset'];?>" name="reset" />
        <input type="submit" value="<?php echo $translate['send'];?>" name="sendB" />
    </div>

</form>

