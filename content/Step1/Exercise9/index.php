<?php 
    $req = $db->query("SELECT type, $lang FROM Step1_Ex9");
    while($line = $req->fetch()){
       $data[$line['type']] = $line[$lang] ;
    }
    $req->closeCursor();
?>    

<h1><?php echo($data['title']);?></h1>

<?php
    // on réinitialise l'exercice
    if(isset($_GET['init'])){
        $req = $db->query("UPDATE Users SET ex9=0 WHERE id=".$_SESSION['userID']."");
        include("partA.php");
    } else {
        $req = $db->query("SELECT ex9 FROM Users WHERE id=".$_SESSION['userID']."");
        
         // Exercice déjà fait
        $line = $req->fetch();
        if($line['ex9']==1){
            include("resume.php");
        } else {
            // Traitement du formulaire A
            if(isset($_POST['sendA'])){
                // On supprime les enregistrement liés à l'utilisateur
                $db->query("DELETE FROM Step1_Ex9_Users
                            WHERE user_id=".$_SESSION['userID']); 
                
                $req = $db->query("SELECT id FROM Step1_Ex9_Ways");
                // Enregistrement des nouveaux résultats
                while($line = $req->fetch()){
                    if(isset($_POST['choice_'.$line['id']])){
                        $db->query("INSERT INTO Step1_Ex9_Users(user_id,way_id,example) 
                            VALUE (".$_SESSION['userID'].",".$line['id'].",'')"); 
                    } 
                }
                $req->closeCursor();
                
                include("partB.php");
                
            // Traitement du formulaire B
            } else if(isset($_POST['sendB'])){
                
                $req = $db->query("SELECT id FROM Step1_Ex9_Ways");
                // Enregistrement des nouveaux résultats
                while($line = $req->fetch()){
                    if(isset($_POST['question_'.$line['id']])){
                        $db->query("
                            UPDATE Step1_Ex9_Users
                            SET example='".$_POST['question_'.$line['id']]."'
                            WHERE user_id=".$_SESSION['userID']." 
                              AND way_id=" .$line['id']);
                    }
                }
                $req->closeCursor();
                                
                $db->query("UPDATE Users SET ex9=1 WHERE id=".$_SESSION['userID']);
                include("resume.php");
                
            // Affichage du formulaire A
            } else {
                include("partA.php");
            }
        }
    }
?>