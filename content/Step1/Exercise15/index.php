<?php 
    $req = $db->query("SELECT type, $lang FROM Step1_Ex15");
    while($line = $req->fetch()){
       $data[$line['type']] = $line[$lang] ;
    }
    $req->closeCursor();

?>  

<h1><?php echo($data['title']);?></h1>



<?php
    // on réinitialise l'exercice
    if(isset($_GET['init'])){
        $req = $db->query("UPDATE Users SET ex15=0 WHERE id=".$_SESSION['userID']."");
        // On supprime les enregistrement liés à l'utilisateur
        $db->query("DELETE FROM Step1_Ex15_Users
                    WHERE user_id=".$_SESSION['userID']); 
        include("form.php");
    } else {
        $req = $db->query("SELECT ex15 FROM Users WHERE id=".$_SESSION['userID']."");

     
        $line=$req->fetch();
        if($line['ex15']==1){    // Exercice déjà fait
            include("resume.php");
        } else if(isset($_POST['send'])){
            
            $db->query("DELETE FROM Step1_Ex15_Users
                        WHERE user_id=".$_SESSION['userID']); 
            // Enregistrement des nouveaux résultats
            if(isset($_POST['step1_ex15_form_1'])){
                $db->query("INSERT INTO Step1_Ex15_Users(user_id,choice) 
                    VALUE (".$_SESSION['userID'].",".$_POST['step1_ex15_form_1'].")"); 
            }
            $db->query("UPDATE Users SET ex15=1 WHERE id=".$_SESSION['userID']);
            include("resume.php");
        } else {
            include("form.php");
        }
    }
?>



