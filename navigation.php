<?php
    
    $error = FALSE;
    $connexionOK = FALSE;

    // On regarde si l'utilisateur a bien utilisé le module de connexion pour traiter les données.
    if(isset($_POST["connect"])){
       // On regarde si tout les champs sont remplis. Sinon on lui affiche un message d'erreur.   
        if($_POST["email"] == NULL OR $_POST["pass"] == NULL){
            $error = TRUE;
            $errorMSG = $translate['both'];
        } else {
            $req = $db->query("SELECT id,password,last_name,first_name,active FROM Users WHERE email='".$_POST["email"]."'");
            $id = 0;
            while($line = $req->fetch()){
                $id = $line['id'];
                $password = $line['password'];
                $first_name =  $line['first_name'];
                $last_name =  $line['last_name'];
                $active = $line['active'];
            }
            $req->closeCursor();
            if($id!=0){ // L'utilisateur existe
                if(md5($_POST["pass"]) == $password){ // Le mot de passe est bon
                    if($active==1){ // Le compte est actif
                        $connexionOK = TRUE;
                        $_SESSION["userID"] = $id;
                        $_SESSION["userName"] = $first_name." ".$last_name;
                    } else { // Le compte est inactif
                        $error = TRUE;
                        $errorMSG = $translate['inactive'];                
                    }
                    
                } else { // Le mot de passe n'est pas bon
                    $error = TRUE;
                    $errorMSG = $translate['invalidpassword'];
                }
            } else { // L'utilisateur n'existe pas
              $error = TRUE;
              $errorMSG = $translate['unknowuser'];
            }
        }
    }
    
?>



<?php 
    if(isset($_SESSION["userID"])){ // utilisateur connecté
        echo "<fieldset>";
        //echo "<p style='text-align:center'>".$_SESSION['userName']."</p>";
        if(!isset($_GET['target']) || $_GET['target']=='home'){
            echo('<p style="text-align:center;background-color:#EE5588;font-weight:bold;"><a href="index.php?target=home&lang='.$lang.'">'.$translate['welcome'].'</a></p>');
        } else {
            echo('<p style="text-align:center"><a href="index.php?target=home&lang='.$lang.'">'.$translate['welcome'].'</a></p>');
        }

        echo("<hr/><br />");

        if(isset($_GET['target']) && $_GET['target']=='profile'){
            echo('<p style="text-align:center;background-color:#EE5588;font-weight:bold;"><a href="index.php?target=profile&lang='.$lang.'">'.$translate['profile'].'</a></p>');
        } else {
            echo('<p style="text-align:center"><a href="index.php?target=profile&lang='.$lang.'">'.$translate['profile'].'</a></p>');
        }
        echo('<p style="text-align:center"><a href="index.php?lang='.$lang.'&target=disconnect">'.$translate['disconnect'].'</a></p>');
        echo("</p>");

        echo("<hr/><br />");
        

        // search for the step we are in
        $step = 0;
        if(isset($_GET['target'])){
            $step=$_GET['target'][4];
        }
        
        for($i=1;$i<5;$i++){
            if($i == $step){
                echo('<p style="text-align:center;background-color:#EE5588;font-weight:bold;" ><a href="index.php?target=step'.$i.'&lang='.$lang.'">'.$translate['step'].' '.$i.'</a></p>');
            } else {
                echo('<p style="text-align:center"><a href="index.php?target=step'.$i.'&lang='.$lang.'">'.$translate['step'].' '.$i.'</a></p>');
            }
        }
        echo "</fieldset>";
    } else { // Utilisateur non connecté
        ?>


        <form action="index.php?lang=<?php echo($lang);?>" method="POST">
            <fieldset>
                <?php 
                    if(!isset($_GET['target']) || $_GET['target']=='home' || $_GET['target']=='disconnect'){
                        echo('<p style="text-align:center;background-color:#EE5588;font-weight:bold;"><a href="index.php?target=home&lang='.$lang.'">'.$translate['welcome'].'</a></p>');
                    } else {
                        echo('<p style="text-align:center"><a href="index.php?target=home&lang='.$lang.'">'.$translate['welcome'].'</a></p>');
                    }
                ?>
                <hr /><br />
                <p style="text-align:center">
                <?php echo($translate['email']); ?>
                <br />
                <input type="text" size="18" name="email"></input>
                <br />
                <?php echo($translate['password']); ?>
                <br />
                <input type="password" size="18" name="pass"></input>
                <br/>
                <br />
                <input type="submit" name="connect" value="<?php echo($translate['connect']); ?>">
            </p>
            </fieldset>
        </form>

        <br />
            <?php 
                if(isset($_GET['target']) && $_GET['target']=='forgot'){
                    echo('<p style="text-align:center;background-color:#EE5588;font-weight:bold;"><a href="index.php?target=forgot&lang='.$lang.'">'.$translate['forgot'].'</a></p>');
                } else {
                    echo('<p style="text-align:center;"><a href="index.php?target=forgot&lang='.$lang.'">'.$translate['forgot'].'</a></p>');
                }
            ?>

            <?php 
                if(isset($_GET['target']) && $_GET['target']=='inscription'){
                    echo('<p style="text-align:center;background-color:#EE5588;font-weight:bold;"><a href="index.php?target=inscription&lang='.$lang.'">'.$translate['new'].'</a></p>');
                } else {
                    echo('<p style="text-align:center"><a href="index.php?target=inscription&lang='.$lang.'">'.$translate['new'].'</a></p>');
                }
            ?>
        <?php
        if($error == TRUE){ 
            echo ("<p style='color:red;'>$errorMSG</p>");
        }
    }
?>
    
