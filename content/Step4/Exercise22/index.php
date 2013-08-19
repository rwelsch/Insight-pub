<?php 
    $req = $db->query("SELECT type, $lang FROM Step4_Ex22");
    while($line = $req->fetch()){
       $data[$line['type']] = $line[$lang] ;
    }
    $req->closeCursor();
    
?>  

<h1><?php echo($data['title']);?></h1>

<?php
    // on réinitialise l'exercice
    if(isset($_GET['init'])){
        $req = $db->query("UPDATE Users SET ex22=0 WHERE id=".$_SESSION['userID']."");
        $db->query("DELETE FROM Step4_Ex22_Users
                    WHERE user_id=".$_SESSION['userID']); 
        include("form.php");
    } else {
        $req = $db->query("SELECT ex22 FROM Users WHERE id=".$_SESSION['userID']."");

        // Exercice déjà fait
        $line=$req->fetch();
        if($line['ex22']==1){
            include("resume.php");
        } else if(isset($_POST['send'])){
            // On supprime les enregistrement liés à l'utilisateur
            $db->query("DELETE FROM Step4_Ex22_Users
                        WHERE user_id=".$_SESSION['userID']); 
            $req = $db->query("SELECT id FROM Step4_Ex22_Items");
            // Enregistrement des nouveaux résultats
            while($line = $req->fetch()){
                if(isset($_POST['choice_'.$line['id']])){
                    $db->query("INSERT INTO Step4_Ex22_Users(user_id,item_id) 
                        VALUE (".$_SESSION['userID'].",".$line['id'].")"); 
                }
            }
            $req->closeCursor();
            $db->query("UPDATE Users SET ex22=1 WHERE id=".$_SESSION['userID']);
            include("resume.php");
        } else {
            include("form.php");
        }
    }

?>