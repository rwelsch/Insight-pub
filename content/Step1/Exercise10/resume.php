<?php
    echo('<p class="answer">'.$translate['done'].' '.$translate['answer'].'</p>');

    
        $req = $db->query("SELECT answer FROM Step1_Ex10_Users WHERE user_id=".$_SESSION['userID']." AND type='work'"); 
        $line = $req->fetch();
        echo('<p>'.$data['type'].'<span style="font-style:italic;">'.$line['answer'].'</span></p>');

        echo("<ul>");
                
            $req = $db->query("SELECT answer FROM Step1_Ex10_Users WHERE user_id=".$_SESSION['userID']." AND type='required'"); 
            echo("<li>".$data['required']);
                echo("<ol>");
                while($line=$req->fetch()){
                    echo('<li><span style="font-style:italic;">'.$line['answer'].'</span></li>');
                }
                echo("</ol>");
            echo("</li>");
            
            $req = $db->query("SELECT answer FROM Step1_Ex10_Users WHERE user_id=".$_SESSION['userID']." AND type='have'"); 
            echo("<li>".$data['have']);
                echo("<ol>");
                while($line=$req->fetch()){
                    echo('<li><span style="font-style:italic;">'.$line['answer'].'</span></li>');
                }
                echo("</ol>");
            echo("</li>");
            
            $req = $db->query("SELECT answer FROM Step1_Ex10_Users WHERE user_id=".$_SESSION['userID']." AND type='need'"); 
            echo("<li>".$data['need']);
                echo("<ol>");
                while($line=$req->fetch()){
                    echo('<li><span style="font-style:italic;">'.$line['answer'].'</span></li>');
                }
                echo("</ol>");
            echo("</li>");

        echo("</ul>");
?>

<br />
<h3  style="text-align: center;">
    <a href="index.php?lang=<?php echo $lang;?>&target=step1ex10&init=true">< <?php echo($translate['redo']); ?> <</a>
    <a href="index.php?lang=<?php echo $lang;?>&target=step1ex11" style="margin-left:5em;">> <?php echo($translate['next']); ?> ></a>
</h3>