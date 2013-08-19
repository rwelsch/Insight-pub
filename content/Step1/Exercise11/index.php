<?php 
    $req = $db->query("SELECT type, $lang FROM Step1_Ex11");
    while($line = $req->fetch()){
       $data[$line['type']] = $line[$lang] ;
    }
    $req->closeCursor();

?>  

<h1><?php echo($data['title']);?></h1>

<?php
    // on réinitialise l'exercice
    if(isset($_GET['init'])){
        $req = $db->query("UPDATE Users SET ex11=0 WHERE id=".$_SESSION['userID']."");
        // On supprime les enregistrement liés à l'utilisateur
        $db->query("DELETE FROM Step1_Ex11_Users
                    WHERE user_id=".$_SESSION['userID']); 
        include("form.php");
    } else {
        $req = $db->query("SELECT ex11 FROM Users WHERE id=".$_SESSION['userID']."");

        // Exercice déjà fait
        $line=$req->fetch();
        if($line['ex11']==1){
            include("resume.php");
        } else if(isset($_POST['send'])){

            $db->query("DELETE FROM Step1_Ex11_Users
                        WHERE user_id=".$_SESSION['userID']); 
            $req = $db->query("SELECT id FROM Step1_Ex11_Statements");
            // Enregistrement des nouveaux résultats
            while($line = $req->fetch()){
                if(isset($_POST['step1_ex11_form_'.$line['id']])){
                    $db->query("INSERT INTO Step1_Ex11_Users(user_id,statement_id,answer) 
                        VALUE (".$_SESSION['userID'].",".$line['id'].",".$_POST['step1_ex11_form_'.$line['id']].")"); 
                } else {
                    $db->query("INSERT INTO Step1_Ex11_Users(user_id,skill_id,skill_level,skill_top,skill_imp) 
                        VALUE (".$_SESSION['userID'].",".$line['id'].",0)"); 
                }
            }
            
            $req->closeCursor();
            
            $db->query("UPDATE Users SET ex11=1 WHERE id=".$_SESSION['userID']);
            include("resume.php");
        } else {
            include("form.php");
        }
    }
?>
