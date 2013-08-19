<?php 
    $req = $db->query("SELECT type, $lang FROM Step1_Ex2");
    while($line = $req->fetch()){
       $data[$line['type']] = $line[$lang] ;
    }
    $req->closeCursor();

?>  

<h1><?php echo($data['title']);?></h1>

<?php
    // on réinitialise l'exercice
    if(isset($_GET['init'])){
        $req = $db->query("UPDATE Users SET ex2=0 WHERE id=".$_SESSION['userID']."");
        // On supprime les enregistrement liés à l'utilisateur
        $db->query("DELETE FROM Step1_Ex2_Users
                    WHERE user_id=".$_SESSION['userID']); 
        include("form.php");
    } else {
        $req = $db->query("SELECT ex2 FROM Users WHERE id=".$_SESSION['userID']."");

        // Exercice déjà fait
        $line=$req->fetch();
        if($line['ex2']==1){
            include("resume.php");
        } else if(isset($_POST['send'])){

            $db->query("DELETE FROM Step1_Ex2_Users
                        WHERE user_id=".$_SESSION['userID']); 

            if(isset($_POST['question'])){
                foreach($_POST['question'] as $chkbx){
                   $req = $db->query("
                       INSERT INTO Step1_Ex2_Users(user_id,question_id)
                       VALUES (".$_SESSION['userID']."," .$chkbx.")");                    
                }
            }         
            
            $req->closeCursor();
            
            $db->query("UPDATE Users SET ex2=1 WHERE id=".$_SESSION['userID']);
            include("resume.php");
        } else {
            include("form.php");
        }
    }
?>