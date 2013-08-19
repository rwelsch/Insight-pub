<h2><?php echo($data['partB']);?></h2>

<p>
    <?php echo($data['introductionB']);?>    
</p>

<form name="step1ex9_form2" action="index.php?target=step1ex9&lang=<?php echo($lang)?>" method="POST">
    
    <?php
        $req = $db->query("SELECT Step1_Ex9_Ways.id as id, rank, $lang, example
            FROM Step1_Ex9_Ways 
              INNER JOIN Step1_Ex9_Users ON Step1_Ex9_Ways.id = Step1_Ex9_Users.way_id
            WHERE Step1_Ex9_Users.user_id = ".$_SESSION['userID']."
            ORDER BY rank");
        
        
        while ($line = $req->fetch()){
            echo('<br />'.$line[$lang]);
            echo('<br />');
            echo('<textarea name="question_'.$line['id'].'" cols=80 rows=3> --- </textarea>');
            echo('<br />');
        }
        $req->closeCursor();
    ?>
    
    <br />
    <div style="text-align:center">
       <input type="reset" value="<?php echo $translate['reset'];?>" name="reset">
        <input type="submit" value="<?php echo $translate['send'];?>" name="sendB">
    </div>
</form>
