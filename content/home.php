<?php 
    $req = $db->query("SELECT type, $lang FROM Home");
    while($line = $req->fetch()){
       $data[$line['type']] = $line[$lang] ;
    }
    $req->closeCursor();


    echo "<h1>$data[title]</h1>";
    
    echo "<p>$data[p1]</p>";
    
    echo "<p>$data[p2]</p>";
    
    echo "<p>$data[p3]</p>";
    
    
    
    
    
?>