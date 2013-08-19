<h1><?php echo($translate['profile']);?></h1>

<?php

    $fill = FALSE;
    $error = FALSE;
    
    // on teste si le visiteur a soumis le formulaire
    if (isset($_POST['edit'])) {
        $fill = TRUE;
        
        // on met à jour le nom de famille
        if( isset($_POST['lastname']) && !empty($_POST['lastname']) ){
            $db->query('
                UPDATE Users
                SET last_name="'.mysql_escape_string($_POST['lastname']).'"
                WHERE id='.$_SESSION['userID']
            );
        }

        // On met à jour le prénom
        if( isset($_POST['firstname']) && !empty($_POST['firstname']) ){
            $db->query('
                UPDATE Users
                SET first_name ="'.mysql_escape_string($_POST['firstname']).'"
                WHERE id='.$_SESSION['userID']
            );
        }

        if( isset($_POST['pass']) && !empty($_POST['pass']) ) {
            if( isset($_POST['pass_confirm']) && !empty($_POST['pass_confirm'])){
                if ($_POST['pass'] != $_POST['pass_confirm']) {
                    $error = TRUE;
                    $errorMSG = $translate['different_pass'];
                }
                else {
                    $db->query('
                        UPDATE Users
                        SET password ="'.mysql_escape_string(md5($_POST['pass'])).'"
                        WHERE id='.$_SESSION['userID']
                    );                
                }
            } else {
                $error = TRUE;
                $errorMSG = $translate['different_pass'];                
            }
        } else {
            if( isset($_POST['pass_confirm']) && !empty($_POST['pass_confirm'])){
                $error = TRUE;
                $errorMSG = $translate['different_pass'];
            } else {
                // nothing to do
            }            
        }
    }
?>


<?php 
    $req = $db->query("SELECT last_name,first_name,email FROM Users WHERE id=".$_SESSION['userID']);
    $line = $req->fetch();
?>

<form action="index.php?target=profile&lang=<?php echo($lang)?>" method="post">
    <fieldset>
        <p><?php echo($translate['email'])." ".$line['email'];?> </p>
        <p><?php echo($translate['lastname']);?>
            <input type="text" name="lastname" value="<?php echo($line['last_name']); ?>" />
        </p>
        <p><?php echo($translate['firstname']);?>
            <input type="text" name="firstname" value="<?php echo($line['first_name']); ?>" />
        </p>
        <p><?php echo($translate['password']);?>
            <input type="password" name="pass" value="" />
        </p>
        <p><?php echo($translate['repeatpassword']);?>
            <input type="password" name="pass_confirm" value="" />        
        </p>
        <input type="submit" name="edit" value="<?php echo($translate['send']); ?>" />
    </fieldset>
</form>

<?php
    if($fill && !$error){
        echo($translate['end_edit']);
    } 
    if ($fill && $error){
        echo ('<p style="color:red">'.$errorMSG.'</p>');
    }
    
?>