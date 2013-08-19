<?php 
    $req = $db->query("SELECT type, $lang FROM Step2_Ex18");
    while($line = $req->fetch()){
       $data[$line['type']] = $line[$lang] ;
    }
    $req->closeCursor();
    
?>  

<h1><?php echo($data['title']);?></h1>
Under construction...
<br />
<h3  style="text-align: right;">
    <a href="index.php?lang=<?php echo $lang;?>&target=step3ex19" style="margin-left:5em;">> <?php echo($translate['next']); ?> ></a>
</h3>


<!--
<?php echo($data['introduction']);?>

<?php echo("<h2>".$data['tips']."</h2>");?>
        <ul>
            <?php for($i=1;$i<6;$i++){
                echo("<li>".$data["tip_$i"]."</li>");
            }?>
        </ul>
        
	
		
		
<br />
<h3  style="text-align: right;">
    <a href="index.php?lang=<?php echo $lang;?>&target=step3ex19" style="margin-left:5em;">> <?php echo($translate['next']); ?> ></a>
</h3>
-->