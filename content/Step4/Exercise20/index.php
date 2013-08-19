<?php 
    $req = $db->query("SELECT type, $lang FROM Step4_Ex20");
    while($line = $req->fetch()){
       $data[$line['type']] = $line[$lang] ;
    }
    $req->closeCursor();
    
?>  

<h1><?php echo($data['title']);?></h1>

<?php
    // on réinitialise l'exercice
    if(isset($_GET['init'])){
        $req = $db->query("UPDATE Users SET ex20=0 WHERE id=".$_SESSION['userID']."");
        $db->query("DELETE FROM Step4_Ex20_Users
                    WHERE user_id=".$_SESSION['userID']); 
        include("form.php");
    } else {
        $req = $db->query("SELECT ex20 FROM Users WHERE id=".$_SESSION['userID']."");

        // Exercice déjà fait
        $line=$req->fetch();
        if($line['ex20']==1){
            include("resume.php");
        } else if(isset($_POST['send'])){

            // On supprime les enregistrement liés à l'utilisateur
            $db->query("DELETE FROM Step4_Ex20_Users
                        WHERE user_id=".$_SESSION['userID']); 
            $req = $db->query("SELECT id FROM Step4_Ex20_Points");
            // Enregistrement des nouveaux résultats
            while($line = $req->fetch()){
                if(isset($_POST['choice_'.$line['id']])){
                    $db->query("INSERT INTO Step4_Ex20_Users(user_id,point_id) 
                        VALUE (".$_SESSION['userID'].",".$line['id'].")"); 
                }
            }
            $req->closeCursor();
            $db->query("UPDATE Users SET ex20=1 WHERE id=".$_SESSION['userID']);
            include("resume.php");
        } else {
            include("form.php");
        }
    }

?>