<?php
    echo('<p class="answer">'.$translate['done'].' '.$translate['answer'].'</p>');
?>

<h2><?php echo($data['partA']);?></h2>


    <h3><?php echo($data['level']);?> "<?php echo($data['level3']);?>"</h3>

        <ul>
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
                      AND skill_level=3
                    ORDER BY Step1_Ex1_Skills.id");
                if($req2->rowCount() > 0){
                    echo('<li><span style="font-weight:normal">'.$line[$lang].'</span></li>');
                    echo('<ul>');
                    while($line2 = $req2->fetch()){
                        echo('<li><span style="color:green">'.$line2[$lang].'</span></li>');
                    }
                    echo('</ul>');
                }
            }
        ?>
        </ul>
    
    
    <h3><?php echo($data['level']);?> "<?php echo($data['level2']);?>"</h3>

        <ul>
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
                      AND skill_level=2
                    ORDER BY Step1_Ex1_Skills.id");
                if($req2->rowCount() > 0){
                    echo('<li><span style="font-weight:normal">'.$line[$lang].'</span></li>');
                    echo('<ul>');
                    while($line2 = $req2->fetch()){
                        echo('<li><span style="color:orange">'.$line2[$lang].'</span></li>');
                    }
                    echo('</ul>');
                }
            }
        ?>
        </ul>

    
    <h3><?php echo($data['level']);?> "<?php echo($data['level1']);?>"</h3>
        <ul>
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
                      AND skill_level=1
                    ORDER BY Step1_Ex1_Skills.id");
                if($req2->rowCount() > 0){
                    echo('<li><span style="font-weight:normal">'.$line[$lang].'</span></li>');
                    echo('<ul>');
                    while($line2 = $req2->fetch()){
                        echo('<li><span style="color:red">'.$line2[$lang].'</span></li>');
                    }
                    echo('</ul>');
                }
            }
        ?>
        </ul>

    
    
<h2><?php echo($data['partB']);?></h2>

    <ul>
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
                      AND skill_top=1
                    ORDER BY Step1_Ex1_Skills.id");
                if($req2->rowCount() > 0){
                    echo('<li><span style="font-weight:normal">'.$line[$lang].'</span></li>');
                    echo('<ul>');
                    while($line2 = $req2->fetch()){
                        echo('<li>'.$line2[$lang].'</li>');
                    }
                    echo('</ul>');
                }
            }
        /*
            $req = $db->query("
                SELECT Step1_Ex1_SkillType.$lang AS type, Step1_Ex1_Skills.$lang AS skill,Step1_Ex1_Users.skill_top
                FROM Step1_Ex1_SkillType
                  INNER JOIN Step1_Ex1_Skills ON Step1_Ex1_Skills.skill = Step1_Ex1_SkillType.id
                  INNER JOIN Step1_Ex1_Users ON Step1_Ex1_Skills.id = Step1_Ex1_Users.skill_id 
                WHERE Step1_Ex1_Users.user_id=".$_SESSION['userID']."
                  AND Step1_Ex1_Users.skill_top=1
                ORDER BY Step1_Ex1_SkillType.id, Step1_Ex1_Skills.id");
             while($line = $req->fetch()){
                 echo("<li>".$line['type']." / ".$line['skill']."</li>");
             }
         
         */
            ?>
    </ul>





<h2><?php echo($data['partC']);?></h2>

    <ul>
        <?php
            /*
            $req = $db->query("
                SELECT Step1_Ex1_SkillType.$lang AS type, Step1_Ex1_Skills.$lang AS skill,Step1_Ex1_Users.skill_top
                FROM Step1_Ex1_SkillType
                  INNER JOIN Step1_Ex1_Skills ON Step1_Ex1_Skills.skill = Step1_Ex1_SkillType.id
                  INNER JOIN Step1_Ex1_Users ON Step1_Ex1_Skills.id = Step1_Ex1_Users.skill_id 
                WHERE Step1_Ex1_Users.user_id=".$_SESSION['userID']."
                  AND Step1_Ex1_Users.skill_imp=1
                ORDER BY Step1_Ex1_SkillType.id, Step1_Ex1_Skills.id");
             while($line = $req->fetch()){
                 echo("<li>".$line['type']." / ".$line['skill']."</li>");
             }
            */
            $req = $db->query("SELECT id, $lang FROM Step1_Ex1_SkillType");
            while($line = $req->fetch()){
                $req2 = $db->query("
                    SELECT Step1_Ex1_Skills.id,$lang,skill_level 
                    FROM Step1_Ex1_Skills 
                      INNER JOIN Step1_Ex1_Users
                      ON Step1_Ex1_Users.skill_id = Step1_Ex1_Skills.id
                    WHERE Step1_Ex1_Users.user_id=".$_SESSION['userID']." 
                      AND Step1_Ex1_Skills.skill =".$line['id']." 
                      AND skill_imp=1
                    ORDER BY Step1_Ex1_Skills.id");
                if($req2->rowCount() > 0){
                    echo('<li><span style="font-weight:normal">'.$line[$lang].'</span></li>');
                    echo('<ul>');
                    while($line2 = $req2->fetch()){
                        echo('<li>'.$line2[$lang].'</li>');
                    }
                    echo('</ul>');
                }
            }
        
        ?>
    </ul>


<br />
<h3  style="text-align: center;">
    <a href="index.php?lang=<?php echo $lang;?>&target=step1ex1&init=true">< <?php echo($translate['redo']); ?> <</a>
    <a href="index.php?lang=<?php echo $lang;?>&target=step1ex2" style="margin-left:5em;">> <?php echo($translate['next']); ?> ></a>
</h3>