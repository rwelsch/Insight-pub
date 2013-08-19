<h1><?php echo($translate['new']);?></h1>

<?php

    $fill = FALSE;
    $error = FALSE;
    
    // on teste si le visiteur a soumis le formulaire
    if (isset($_POST['inscription']) && $_POST['inscription'] == 'Inscription') {
        $fill = TRUE;
	// on teste l'existence de nos variables. On teste également si elles ne sont pas vides
	if ((isset($_POST['email']) && !empty($_POST['email'])) 
            && (isset($_POST['lastname']) && !empty($_POST['lastname'])) 
            && (isset($_POST['firstname']) && !empty($_POST['firstname'])) 
            && (isset($_POST['pass']) && !empty($_POST['pass'])) 
            && (isset($_POST['pass_confirm']) && !empty($_POST['pass_confirm']))) {
	
            // on teste les deux mots de passe
            if ($_POST['pass'] != $_POST['pass_confirm']) {
                $error = TRUE;
                $errorMSG = $translate['different_pass'];
            }
            else {
                if(filter_var($_POST['email'], FILTER_VALIDATE_EMAIL)){// adresse mail valide
                    // on recherche si cet email est déjà utilisé par un autre membre
                    $req = $db->query('SELECT count(*) FROM Users WHERE email="'.mysql_escape_string($_POST['email']).'"');
                    $line = $req->fetch();

                    if ($line[0] == 0) {
                        // Génération aléatoire d'une clé
                        $cle = md5(microtime(TRUE)*100000);

                        $db->query('
                            INSERT INTO Users(active,email,password,last_name,first_name,activation_key) 
                            VALUES (
                                "0", 
                                "'.mysql_escape_string($_POST['email']).'",
                                "'.mysql_escape_string(md5($_POST['pass'])).'",
                                "'.mysql_escape_string($_POST['lastname']).'",
                                "'.mysql_escape_string($_POST['firstname']).'",
                                "'.$cle.'")'
                        );

                        //Envoie de mail

                        $email = $_POST['email'];

                        // Préparation du mail contenant le lien d'activation
                        $destinataire = $email;
                        $sujet = $translate['mail_subject'] ;
                        $entete = "From: inscription@insight-toolkit.eu" ;

                        $message = 
$translate['mail_msg1'].'

'.$translate['mail_msg2'].'

'.$adress_site.'index.php?target=activation&log='.urlencode($email).'&cle='.urlencode($cle).'&lang='.$lang.'


---------------
'.
$translate['mail_msg3'];

                        mail($destinataire, $sujet, $message, $entete) ; // Envoi du mail

                    } else { // email déjà utilisé
                        $error = TRUE;
                        $errorMSG = $translate['used_email'];
                    }
                
                    
                } else {// adresse mail invalide
                    $error = TRUE;
                    $errorMSG = $translate['invalid_email'];
                }
            }
	} else {
            $error = TRUE;
            $errorMSG = $translate['empty_field'];
	}
    }
?>


<?php 
    if($fill && !$error){
        echo($translate['end_inscription']);
    } else {
        ?>
<h3 style="font-style:italic;"><?php echo($translate['fill']);?></h3>

<form action="index.php?target=inscription&lang=<?php echo($lang)?>" method="post">
    <fieldset>
        <p><?php echo($translate['email']);?>
            <input type="text" size="80" name="email" value="<?php if (isset($_POST['email'])) echo htmlentities(trim($_POST['email'])); ?>">
        </p>
        <p><?php echo($translate['lastname']);?>
            <input type="text" name="lastname" value="<?php if (isset($_POST['lastname'])) echo htmlentities(trim($_POST['lastname'])); ?>">
        </p>
        <p><?php echo($translate['firstname']);?>
            <input type="text" name="firstname" value="<?php if (isset($_POST['firstname'])) echo htmlentities(trim($_POST['firstname'])); ?>">
        </p>
        <p><?php echo($translate['password']);?>
            <input type="password" name="pass" value="<?php if (isset($_POST['pass'])) echo htmlentities(trim($_POST['pass'])); ?>">
        </p>
        <p><?php echo($translate['repeatpassword']);?>
            <input type="password" name="pass_confirm" value="<?php if (isset($_POST['pass_confirm'])) echo htmlentities(trim($_POST['pass_confirm'])); ?>">        
        </p>
        <input type="submit" name="inscription" value="Inscription">
    </fieldset>
</form>
<?php
        if (isset($error)){
            echo ('<p style="color:red">'.$errorMSG.'</p>');
        }
    }
?>