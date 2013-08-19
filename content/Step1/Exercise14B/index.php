<?php 
    $req = $db->query("SELECT type, $lang FROM Step1_Ex14B");
    while($line = $req->fetch()){
       $data[$line['type']] = $line[$lang] ;
    }
    $req->closeCursor();
    
?>  

<h1><?php echo($data['title']);?></h1>


<?php
    // on réinitialise l'exercice
    if(isset($_GET['init'])){
        $req = $db->query("UPDATE Users SET ex14B=0 WHERE id=".$_SESSION['userID']."");
        //$db->query("DELETE FROM Step1_Ex14B_Users
        //            WHERE user_id=".$_SESSION['userID']); 
        include("form.php");
    } else {
        $req = $db->query("SELECT ex14B FROM Users WHERE id=".$_SESSION['userID']."");

        // Exercice déjà fait
        $line=$req->fetch();
        if($line['ex14B']==1){
            include("resume.php");
        } else if(isset($_POST['send'])){
            // On supprime les enregistrement liés à l'utilisateur
            $db->query("DELETE FROM Step1_Ex14B_Users
                        WHERE user_id=".$_SESSION['userID']); 

            $value = "";
            for($i=1;$i<11;$i++){
                 if(isset($_POST['value_'.$i])){
                     $value .= $_POST['value_'.$i].",";
                 } else {
                     $value .= "0,";
                 }
            }
            if(isset($_POST['value_11'])){
                $value .= $_POST['value_11'];
            } else {
                $value .= "0";
            }
            $req = $db->query("
                INSERT INTO Step1_Ex14B_Users(user_id,place1,place2,place3,place4,place5,place6,place7,place8,place9,place10,place11)
                VALUE (".$_SESSION['userID'].",".$value.")");
            
            $db->query("UPDATE Users SET ex14B=1 WHERE id=".$_SESSION['userID']);
            include("resume.php");
           
        } else {
            include("form.php");
        }
    }
?>
