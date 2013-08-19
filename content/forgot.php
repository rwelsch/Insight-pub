<h1><?php echo($translate['forgot']);?></h1>



<?php

    $fill = FALSE;
    $error = FALSE;
    
    // on teste si le visiteur a soumis le formulaire
    if (isset($_POST['changepass'])) {
        $fill = TRUE;
	// on teste l'existence de nos variables. On teste également si elles ne sont pas vides
	if ( isset($_POST['email']) && !empty($_POST['email']) ) {
            if(filter_var($_POST['email'], FILTER_VALIDATE_EMAIL)){// adresse mail valide
                    // on recherche si cet email existe dans notre BD
                    $req = $db->query('SELECT count(*) FROM Users WHERE email="'.mysql_escape_string($_POST['email']).'"');
                    $line = $req->fetch();

                    if ($line[0] == 1) {
                        // Génération aléatoire d'une clé
                        $cle = md5(microtime(TRUE)*100000);
                        
                        $db->query('
                            UPDATE Users
                            SET password = "'.mysql_escape_string(md5($cle)).'"
                            WHERE email = "'.mysql_escape_string($_POST['email']).'"'
                        );

                        //Envoie de mail


                        $email = $_POST['email'];

                        // Préparation du mail contenant le lien d'activation
                        $destinataire = $email;
                        $sujet = $translate['forgot_mail_subject'] ;
                        $entete = "From: INSIGHT@insight-toolkit.eu" ;

                        $message = 
$translate['forgot_mail_msg1'].'

'.urlencode($cle).'

---------------'.
$translate['mail_msg3'];

                        mail($destinataire, $sujet, $message, $entete) ; // Envoi du mail
//echo($message);
                    } else { // email inconnu
                        $error = TRUE;
                        $errorMSG = $translate['unknown_email'];
                    }
                } else {// adresse mail invalide
                    $error = TRUE;
                    $errorMSG = $translate['invalid_email'];
                }
	} else {
            $error = TRUE;
            $errorMSG = $translate['empty_field'];
	}
    }
?>


<?php 
    if($fill && !$error){
        echo($translate['forgot_end_inscription']);
    } else {
        ?>
<h3 style="font-style:italic;"><?php echo($translate['forgot_explain']);?></h3>

<form action="index.php?target=forgot&lang=<?php echo($lang)?>" method="post">
    <fieldset>
        <p><?php echo($translate['email']);?>
            <input type="text" size="80" name="email" value="<?php if (isset($_POST['email'])) echo htmlentities(trim($_POST['email'])); ?>">
        </p>
        <input type="submit" name="changepass" value="<?php echo($translate['send'])?>">
    </fieldset>
</form>
<?php
        if (isset($error)){
            echo ('<p style="color:red">'.$errorMSG.'</p>');
        }
    }
?>