<?php 

    $req = $db->query("SELECT type, $lang FROM Step2_Ex16");
    while($line = $req->fetch()){
       $data[$line['type']] = $line[$lang] ;
    }
    $req->closeCursor();

?>  

<h1><?php echo($data['title']);?></h1>

<?php
    if(isset($_GET['init'])){
        // on réinitialise l'exercice
        $req = $db->query("UPDATE Users SET ex16=0 WHERE id=".$_SESSION['userID']."");
    
        // On supprime les enregistrement liés à l'utilisateur
        $db->query("DELETE FROM Step2_Ex16_Users
                    WHERE user_id=".$_SESSION['userID']); 
        include("form.php");
    } else  {
        $req = $db->query("SELECT ex16 FROM Users WHERE id=".$_SESSION['userID']."");
        
        // Exercice déjà fait
        $line=$req->fetch();
        if($line['ex16']==1){
            include("resume.php");
        } else if(isset($_POST['send'])){
            for($i=1;$i<5;$i++){
                 if(isset($_POST['value_'.$i])){
                    $req = $db->query("
                    INSERT INTO Step2_Ex16_Users(user_id,thing_id,rank)
                    VALUE (".$_SESSION['userID'].",".$_POST['value_'.$i].",".$i.")");
                 }
            }
            $db->query("UPDATE Users SET ex16=1 WHERE id=".$_SESSION['userID']);
            include("resume.php");
        } else {
            include("form.php");
        }
    }
?>
