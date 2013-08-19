<script type="text/javascript">
    //initial checkCount of zero
    var checkCount=0
    var nom = '<?=$data['five'];?>';
    //maximum number of allowed checked boxes
    var maxChecks=5

    function setChecks(obj){
        //increment/decrement checkCount
        if(obj.checked){
            checkCount=checkCount+1
        } else {
            checkCount=checkCount-1
        }
        //if they checked a 4th box, uncheck the box, then decrement checkcount and pop alert
        if (checkCount>maxChecks){
            obj.checked=false
            checkCount=checkCount-1
            alert(nom)
        }
    }
</script> 


<h2><?php echo($data['partC']);?></h2>

<p>
    <?php echo($data['description6']);?>    
</p>

<form name="step1ex1_form3" action="index.php?target=step1ex1&lang=<?php echo($lang)?>" method="POST">
    <?php 
        /*
        for($i=1;$i<6;$i++){
            echo "<br />";
            echo($data['choice']." $i: ");
            echo '<select name="step1_ex1_c_choice_'.$i.'">';
            $req = $db->query("SELECT id, $lang FROM Step1_Ex1_SkillType");
            while($line = $req->fetch()){
                echo '<optgroup label="'.$line[$lang].'">';
                $req2 = $db->query("
                    SELECT Step1_Ex1_Skills.id, $lang 
                    FROM Step1_Ex1_Skills
                      INNER JOIN Step1_Ex1_Users
                      ON Step1_Ex1_Skills.id = Step1_Ex1_Users.skill_id 
                    WHERE Step1_Ex1_Users.user_id=".$_SESSION['userID']."
                      AND Step1_Ex1_Users.skill_level<3 
                      AND Step1_Ex1_Users.skill_level>0 
                      AND Step1_Ex1_Skills.skill=".$line['id']."
                    ORDER BY Step1_Ex1_Skills.id");
                while($line2 = $req2->fetch()){
                    echo '<option value="'.$line2['id'].'">'.$line2[$lang].'</option>';
                }
                echo '</optgroup>';
            }
            $req->closeCursor();
            echo '</select>';
        }
        */
    ?>
    
   
    <?php
        $req = $db->query("SELECT id, $lang FROM Step1_Ex1_SkillType");
        while($line = $req->fetch()){
            $req2 = $db->query("
                SELECT Step1_Ex1_Skills.id,$lang,skill_level 
                FROM Step1_Ex1_Skills 
                  INNER JOIN Step1_Ex1_Users
                  ON Step1_Ex1_Users.skill_id = Step1_Ex1_Skills.id
                WHERE Step1_Ex1_Users.user_id=".$_SESSION['userID']." 
                  AND Step1_Ex1_Skills.skill =".$line['id']." 
                  AND Step1_Ex1_Users.skill_level<3 
                  AND Step1_Ex1_Users.skill_level>0 
                ORDER BY Step1_Ex1_Skills.id");
            if($req2->rowCount() > 0){
                echo('<span style="font-weight:bold">'.$line[$lang].'</span><br />');
                while($line2 = $req2->fetch()){
                    echo('<label><input type="checkbox" name="choice[]" value="'.$line2['id'].'" onclick="setChecks(this)"> '.$line2[$lang].'</label><br />');
                }
            }
        }
        $req->closeCursor();
    ?>
    
    
    <br />
    <div style="text-align:center">
        <input type="reset" value="<?php echo $translate['reset'];?>" name="reset">
        <input type="submit" value="<?php echo $translate['send'];?>" name="sendC">
    </div>

</form>