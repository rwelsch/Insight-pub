<?php 
    $req = $db->query("SELECT type, $lang FROM Step1_Ex13");
    while($line = $req->fetch()){
       $data[$line['type']] = $line[$lang] ;
    }
    $req->closeCursor();
?>    

<h1><?php echo($data['title']);?></h1>

<?php
    // on réinitialise l'exercice
    if(isset($_GET['init'])){
        $req = $db->query("UPDATE Users SET ex13=0 WHERE id=".$_SESSION['userID']."");
        //include("partA.php");
        $db->query("DELETE FROM Step1_Ex13_Users_Achievements
                    WHERE user_id=".$_SESSION['userID']); 
        $db->query("DELETE FROM Step1_Ex13_Users_Futures
                    WHERE user_id=".$_SESSION['userID']); 
        include("partA.php");
    } else {
        $req = $db->query("SELECT ex13 FROM Users WHERE id=".$_SESSION['userID']."");
        // Exercice déjà fait
        $line = $req->fetch();
        if($line['ex13']==1){
            include("resume.php");
        } else {
            // Traitement du formulaire A
            if(isset($_POST['sendA'])){
                // Enregistrement des nouveaux résultats
                for($i=1;$i<4;$i++){
                    if(isset($_POST['achievement_'.$i])){
                        $db->query("INSERT INTO Step1_Ex13_Users_Achievements(user_id,rank,achievement) 
                            VALUE (".$_SESSION['userID'].",".$i.",'".$_POST['achievement_'.$i]."')");                         
                    }
                }
                $req->closeCursor();
                include("partB.php");

            // Traitement du formulaire B
            } else if(isset($_POST['sendB'])){
                if(isset($_POST['step1_ex13_b_choice']) && isset($_POST['details'])){
                    $db->query("
                        UPDATE Step1_Ex13_Users_Achievements
                        SET details='".$_POST['details']."'
                        WHERE id=".$_POST['step1_ex13_b_choice']);
                    }
                include("partC.php");
            // Traitement du formulaire C, affichage du résumé
            } else if(isset($_POST['sendC'])){
                // Enregistrement des nouveaux résultats
                for($i=1;$i<4;$i++){
                    if(isset($_POST['future_'.$i])){
                        $db->query("INSERT INTO Step1_Ex13_Users_Futures(user_id,rank,future) 
                            VALUE (".$_SESSION['userID'].",".$i.",'".$_POST['future_'.$i]."')");                         
                    }
                }
                $req->closeCursor();
                
                $db->query("UPDATE Users SET ex13=1 WHERE id=".$_SESSION['userID']);
                include("resume.php");
            // Affichage du formulaire A
            } else {
                $db->query("DELETE FROM Step1_Ex13_Users_Achievements
                    WHERE user_id=".$_SESSION['userID']); 
                $db->query("DELETE FROM Step1_Ex13_Users_Futures
                    WHERE user_id=".$_SESSION['userID']); 
                include("partA.php");
            }
        }
    }
?>