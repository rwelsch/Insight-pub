<?php 
    $req = $db->query("SELECT type, $lang FROM Step1_Ex1");
    while($line = $req->fetch()){
       $data[$line['type']] = $line[$lang] ;
    }
    $req->closeCursor();
?>    

<h1><?php echo($data['title']);?></h1>

<?php
    // on réinitialise l'exercice
    if(isset($_GET['init'])){
        $req = $db->query("UPDATE Users SET ex1=0 WHERE id=".$_SESSION['userID']."");
        include("partA.php");
    } else {
        $req = $db->query("SELECT ex1 FROM Users WHERE id=".$_SESSION['userID']."");
        
         // Exercice déjà fait
        $line = $req->fetch();
        if($line['ex1']==1){
            include("resume.php");
        } else {
            // Traitement du formulaire A
            if(isset($_POST['sendA'])){
                // On supprime les enregistrement liés à l'utilisateur
                $db->query("DELETE FROM Step1_Ex1_Users
                            WHERE user_id=".$_SESSION['userID']); 
                $req = $db->query("SELECT id FROM Step1_Ex1_Skills");
                // Enregistrement des nouveaux résultats
                while($line = $req->fetch()){
                    if(isset($_POST['step1_ex1_a_form_'.$line['id']])){
                        $db->query("INSERT INTO Step1_Ex1_Users(user_id,skill_id,skill_level,skill_top,skill_imp) 
                            VALUE (".$_SESSION['userID'].",".$line['id'].",".$_POST['step1_ex1_a_form_'.$line['id']].",0,0)"); 
                    } else {
                        $db->query("INSERT INTO Step1_Ex1_Users(user_id,skill_id,skill_level,skill_top,skill_imp) 
                            VALUE (".$_SESSION['userID'].",".$line['id'].",0,0,0)"); 
                    }
                }
                $req->closeCursor();
                include("partB.php");
                
            // Traitement du formulaire B
            } else if(isset($_POST['sendB'])){
                if(isset($_POST['choice'])){
                    $req = $db->query("
                         UPDATE Step1_Ex1_Users
                         SET skill_top=0
                         WHERE user_id=".$_SESSION['userID']);

                    foreach($_POST['choice'] as $chkbx){
                       $req = $db->query("
                            UPDATE Step1_Ex1_Users
                            SET skill_top=1
                            WHERE user_id=".$_SESSION['userID']." 
                              AND skill_id=" .$chkbx);                    
                    }
                }
                include("partC.php");
                
            // Traitement du formulaire C, affichage du résumé
            } else if(isset($_POST['sendC'])){
                if(isset($_POST['choice'])){
                    $req = $db->query("
                         UPDATE Step1_Ex1_Users
                         SET skill_imp=0
                         WHERE user_id=".$_SESSION['userID']);

                    foreach($_POST['choice'] as $chkbx){
                       $req = $db->query("
                            UPDATE Step1_Ex1_Users
                            SET skill_imp=1
                            WHERE user_id=".$_SESSION['userID']." 
                              AND skill_id=" .$chkbx);                    
                    }
                }
                $db->query("UPDATE Users SET ex1=1 WHERE id=".$_SESSION['userID']);
                include("resume.php");
                
            // Affichage du formulaire A
            } else {
                include("partA.php");
            }
        }
    }
?>