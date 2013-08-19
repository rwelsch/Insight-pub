<?php

    // language definition, uk by default
    if (isset($_GET["lang"])) {
        //echo '$get lang = ' . htmlspecialchars($_GET["lang"]) . '!';
        $lang = $_GET["lang"];
    }
    else {
        //echo 'No lang specified';
        $lang= 'uk';
    }

    
    // page definition, home by default
    if (isset($_GET["target"])) {
        if($_GET["target"]=="disconnect"){
            // Détruit toutes les variables de session
            $_SESSION = array();
            if (isset($_COOKIE[session_name()])) {
                setcookie(session_name(), '', time()-42000, '/');
            }
            session_destroy();
            $target = "home";
        } else {
            $target = $_GET["target"];
        }
    }
    else {
        //echo 'No lang specified';
        $target = "home";
    }
    
    
?>