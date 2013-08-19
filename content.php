<?php
    if(!isset($_SESSION['userID'])) { // utilisateur non connecté
        if($target=="home"){
            include("content/home.php");
        } else if($target=="forgot"){
            include("content/forgot.php");
        } else if($target=="inscription"){
            include("content/inscription.php");
        } else if($target=="activation"){
            include("content/activation.php");
        } else {
            include("content/not_connected.php");
        }
    } else {
        if($target=="home"){
            include("content/home.php");
        } else if($target=="profile"){
            include("content/profile.php");
        } 
        //
        // STEP 1
        //
        else if ($target=="step1"){
            include("content/Step1/index.php"); 
        } else if ($target=="step1ex1"){
            include("content/Step1/Exercise1/index.php"); 
        } else if ($target=="step1ex2"){
            include("content/Step1/Exercise2/index.php");
        } else if ($target=="step1ex3"){
            include("content/Step1/Exercise3/index.php");
        } else if ($target=="step1ex4"){
            include("content/Step1/Exercise4/index.php");
        } else if ($target=="step1ex5"){
            include("content/Step1/Exercise5/index.php");
        } else if ($target=="step1ex6"){
            include("content/Step1/Exercise6/index.php");
        } else if ($target=="step1ex7"){
            include("content/Step1/Exercise7/index.php");
        } else if ($target=="step1ex8"){
            include("content/Step1/Exercise8/index.php");
        } else if ($target=="step1ex9"){
            include("content/Step1/Exercise9/index.php");
        } else if ($target=="step1ex10"){
            include("content/Step1/Exercise10/index.php");
        } else if ($target=="step1ex11"){
            include("content/Step1/Exercise11/index.php");
        } else if ($target=="step1ex12"){
            include("content/Step1/Exercise12/index.php");
        } else if ($target=="step1ex13"){
            include("content/Step1/Exercise13/index.php");
        } else if ($target=="step1ex14A"){
            include("content/Step1/Exercise14A/index.php");
        } else if ($target=="step1ex14B"){
            include("content/Step1/Exercise14B/index.php");
        } else if ($target=="step1ex15"){
            include("content/Step1/Exercise15/index.php");
        }
        //
        // STEP 2
        //
        else if ($target=="step2"){
            include("content/Step2/index.php");
        }else if ($target=="step2ex16"){
            include("content/Step2/Exercise16/index.php"); 
        }else if ($target=="step2ex17"){
            include("content/Step2/Exercise17/index.php"); 
        }else if ($target=="step2ex18"){
            include("content/Step2/Exercise18/index.php"); 
        }
        //
        // STEP 3
        //
        else if ($target=="step3"){
            include("content/Step3/index.php");
        }else if ($target=="step3ex19"){
            include("content/Step3/Exercise19/index.php"); 
        }
        //
        // STEP 4
        //
        else if ($target=="step4"){
            include("content/Step4/index.php");
        }else if ($target=="step4ex20"){
            include("content/Step4/Exercise20/index.php");
        }else if ($target=="step4ex21"){
            include("content/Step4/Exercise21/index.php"); 
        }else if ($target=="step4ex22"){
            include("content/Step4/Exercise22/index.php"); 
        }else if ($target=="step4ex23"){
            include("content/Step4/Exercise23/index.php"); 
        }
    }
?> 