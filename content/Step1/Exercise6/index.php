<?php 
    $req = $db->query("SELECT type, $lang FROM Step1_Ex6");
    while($line = $req->fetch()){
       $data[$line['type']] = $line[$lang] ;
    }
    $req->closeCursor();

?>  

<h1><?php echo($data['title']);?></h1>

<?php
    // on réinitialise l'exercice
    if(isset($_GET['init'])){
        $req = $db->query("UPDATE Users SET ex6=0 WHERE id=".$_SESSION['userID']."");
        // On supprime les enregistrement liés à l'utilisateur
        $db->query("DELETE FROM Step1_Ex6_Users
                    WHERE user_id=".$_SESSION['userID']); 
        include("form.php");
    } else {
        $req = $db->query("SELECT ex6 FROM Users WHERE id=".$_SESSION['userID']."");

        // Exercice déjà fait
        $line=$req->fetch();
        if($line['ex6']==1){
            include("resume.php");
        } else if(isset($_POST['send'])){
            $db->query("DELETE FROM Step1_Ex6_Users
                        WHERE user_id=".$_SESSION['userID']); 

            
            //$req = $db->query("SELECT id FROM Step1_Ex6_Statements");
            // Enregistrement des nouveaux résultats

            if(isset($_POST['step1_ex6_form_statement'])){
                $db->query("INSERT INTO Step1_Ex6_Users(user_id,statement_id) VALUE (".$_SESSION['userID'].",".$_POST['step1_ex6_form_statement'].")"); 
            } else {
                $db->query("INSERT INTO Step1_Ex6_Users(user_id,statement_id) VALUE (".$_SESSION['userID'].",0)");
            }                        
            $req->closeCursor();
            
            $db->query("UPDATE Users SET ex6=1 WHERE id=".$_SESSION['userID']);
            include("resume.php");
        } else {
            include("form.php");
        }
    }
?>
