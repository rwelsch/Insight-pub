<?php 

    $req = $db->query("SELECT type, $lang FROM Step1_Ex4");
    while($line = $req->fetch()){
       $data[$line['type']] = $line[$lang] ;
    }
    $req->closeCursor();

?>  

<h1><?php echo($data['title']);?></h1>

<?php
    if(isset($_GET['init'])){
        // on réinitialise l'exercice
        $req = $db->query("UPDATE Users SET ex4=0 WHERE id=".$_SESSION['userID']."");
    
        // On supprime les enregistrement liés à l'utilisateur
        $db->query("DELETE FROM Step1_Ex4_Users_Personnal_Values
                    WHERE user_id=".$_SESSION['userID']); 
        $db->query("DELETE FROM Step1_Ex4_Users_Rank_Values
                    WHERE user_id=".$_SESSION['userID']); 
        
        include("partA.php");
    } else {
        $req = $db->query("SELECT ex4 FROM Users WHERE id=".$_SESSION['userID']."");
        
        // Exercice déjà fait
        $line=$req->fetch();
        if($line['ex4']==1){
            include("resume.php");
        } else if(isset($_POST['sendA'])){
            
            // Enregistrement des nouveaux résultats
            if(isset($_POST['choice'])){
                foreach($_POST['choice'] as $chkbx){
                    $db->query("INSERT INTO Step1_Ex4_Users_Personnal_Values(user_id,value_id) 
                        VALUE (".$_SESSION['userID'].",".$chkbx.")");                     
                }
            }
            include("partB.php");

        } else if(isset($_POST['sendB'])){

            for($i=1;$i<7;$i++){
                 if(isset($_POST['value_'.$i])){
                    
                    $req = $db->query("
                        INSERT INTO Step1_Ex4_Users_Rank_Values(user_id,value_id,rank)
                        VALUE (".$_SESSION['userID'].",".$_POST['value_'.$i].",".$i.")");
                 }
            }
            $db->query("UPDATE Users SET ex4=1 WHERE id=".$_SESSION['userID']);
            include("resume.php");
        } else {
            include("partA.php");
        }
    }
?>