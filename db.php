<?php
    $dbname = "insighttoolkit";
    $host='localhost';
    $user='insighttoolkit';
    $pass='ITK2013';

    $adress_site = "http://davis.isep.fr/insight/toolkit/";
    
    $db = new PDO("mysql:host=$host;dbname=$dbname", "$user", "$pass");
    $db->query("SET NAMES UTF8");
    
    
    $req = $db->query("SELECT type, $lang FROM General");
    while($line = $req->fetch()){
       $translate[$line['type']] = $line[$lang] ;
    }
    $req->closeCursor();

?>