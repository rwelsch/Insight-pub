<h1><?php echo($translate['account_activation']);?></h1>


<?php

    if(isset($_GET['log']) && isset($_GET['cle'])){
        $login = $_GET['log'];
        $key = $_GET['cle'];


        // Récupération de la clé correspondant au $login dans la base de données
        $req = $db->prepare("SELECT activation_key,active FROM Users WHERE email like :login ");
        if($req->execute(array(':login' => $login)) && $line = $req->fetch())
        {
            $key_bd = $line['activation_key'];	// Récupération de la clé
            $active = $line['active']; // $actif contiendra alors 0 ou 1
        } else {
            $active = '0';
            $key_bd = '';
        }

        // On teste la valeur de la variable $actif récupéré dans la BDD
        if($active == '1') // Si le compte est déjà actif on prévient
        {
            echo $translate['already_active'];
        } else { // Si ce n'est pas le cas on passe aux comparaisons
            if($key == $key_bd) { // On compare nos deux clés	
                // Si elles correspondent on active le compte !	
                echo $translate['activation'];
                // La requête qui va passer notre champ actif de 0 à 1
                $req = $db->prepare("UPDATE Users SET active = 1 WHERE email like :login ");
                $req->bindParam(':login', $login);
                $req->execute();
            } else { // Si les deux clés sont différentes on provoque une erreur...
                echo "Erreur ! Votre compte ne peut être activé...";
            }
        }
    }
?>
