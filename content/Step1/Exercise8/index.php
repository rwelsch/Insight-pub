<?php 
    $req = $db->query("SELECT type, $lang FROM Step1_Ex8");
    while($line = $req->fetch()){
       $data[$line['type']] = $line[$lang] ;
    }
    $req->closeCursor();
    
?>  

<h1><?php echo($data['title']);?></h1>

<?php
    // on réinitialise l'exercice
    if(isset($_GET['init'])){
        $req = $db->query("UPDATE Users SET ex8=0 WHERE id=".$_SESSION['userID']."");
        include("form.php");
    } else {
        $req = $db->query("SELECT ex8 FROM Users WHERE id=".$_SESSION['userID']."");

        // Exercice déjà fait
        $line=$req->fetch();
        if($line['ex8']==1){
            include("resume.php");
        } else if(isset($_POST['send'])){

            // On supprime les enregistrement liés à l'utilisateur
            $db->query("DELETE FROM Step1_Ex8_Users
                        WHERE user_id=".$_SESSION['userID']); 
            $req = $db->query("SELECT id FROM Step1_Ex8_Questions");
            // Enregistrement des nouveaux résultats
            while($line = $req->fetch()){
                if(isset($_POST['question_'.$line['id']])){
                    $db->query("INSERT INTO Step1_Ex8_Users(user_id,question_id,answer) 
                        VALUE (".$_SESSION['userID'].",".$line['id'].",'".$_POST['question_'.$line['id']]."')"); 
                } else {
                    $db->query("INSERT INTO Step1_Ex8_Users(user_id,question_id,answer) 
                        VALUE (".$_SESSION['userID'].",".$line['id'].",'')"); 
                }
            }
            $req->closeCursor();
            $db->query("UPDATE Users SET ex8=1 WHERE id=".$_SESSION['userID']);
            include("resume.php");
        } else {
            include("form.php");
        }
    }

?>