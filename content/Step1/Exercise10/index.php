<?php 
    $req = $db->query("SELECT type, $lang FROM Step1_Ex10");
    while($line = $req->fetch()){
       $data[$line['type']] = $line[$lang] ;
    }
    $req->closeCursor();
?>    

<h1><?php echo($data['title']);?></h1>

<?php
    // on réinitialise l'exercice
    if(isset($_GET['init'])){
        $req = $db->query("UPDATE Users SET ex10=0 WHERE id=".$_SESSION['userID']."");
        include("form.php");
    } else {
        $req = $db->query("SELECT ex10 FROM Users WHERE id=".$_SESSION['userID']."");
        
         // Exercice déjà fait
        $line = $req->fetch();
        if($line['ex10']==1){
            include("resume.php");
        } else {
            // Traitement du formulaire A
            if(isset($_POST['send'])){
                
                // On supprime les enregistrement liés à l'utilisateur
                $db->query("DELETE FROM Step1_Ex10_Users
                            WHERE user_id=".$_SESSION['userID']); 
                
                if(isset($_POST['work'])){
                    $db->query("INSERT INTO Step1_Ex10_Users(user_id,type,rank,answer) 
                        VALUE (".$_SESSION['userID'].",'work',0,'".$_POST['work']."')"); 
                }
                
                for($i=1;$i<6;$i++){
                    if(isset($_POST['required_'.$i])){
                        $db->query("INSERT INTO Step1_Ex10_Users(user_id,type,rank,answer) 
                            VALUE (".$_SESSION['userID'].",'required',".$i.",'".$_POST['required_'.$i]."')");                         
                    }
                    if(isset($_POST['have_'.$i])){
                        $db->query("INSERT INTO Step1_Ex10_Users(user_id,type,rank,answer) 
                            VALUE (".$_SESSION['userID'].",'have',".$i.",'".$_POST['have_'.$i]."')");                         
                    }
                    if(isset($_POST['need_'.$i])){
                        $db->query("INSERT INTO Step1_Ex10_Users(user_id,type,rank,answer) 
                            VALUE (".$_SESSION['userID'].",'need',".$i.",'".$_POST['need_'.$i]."')");                         
                    }
                    
                }

                $db->query("UPDATE Users SET ex10=1 WHERE id=".$_SESSION['userID']);
                include("resume.php");
                
            // Affichage du formulaire A
            } else {
                include("form.php");
            }
        }
    }
?>