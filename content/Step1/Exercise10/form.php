<?php echo($data['introduction']);?>

<br />
<br />


<form name="step1ex10_form" action="index.php?target=step1ex10&lang=<?php echo($lang)?>" method="POST">

    <?php
    
        echo('<p>'.$data['type'].'<textarea name="work" cols="50" rows="1">  </textarea></p>');

        echo("<ul>");
            echo("<li>".$data['required']);
                echo("<ol>");
                for($i=1;$i<6;$i++){
                    echo('<li><textarea name="required_'.$i.'" cols="50" rows="1">  </textarea></li>');
                }
                echo("</ol>");
            echo("</li>");
            echo("<li>".$data['have']);
                echo("<ol>");
                for($i=1;$i<6;$i++){
                    echo('<li><textarea name="have_'.$i.'" cols="50" rows="1">  </textarea></li>');
                }
                echo("</ol>");
            echo("</li>");
            echo("<li>".$data['need']);
                echo("<ol>");
                for($i=1;$i<6;$i++){
                    echo('<li><textarea name="need_'.$i.'" cols="50" rows="1">  </textarea></li>');
                }
                echo("</ol>");
            echo("</li>");
        echo("</ul>");

    ?>

    <br />
    <div style="text-align:center">
        <input type="reset" value="<?php echo $translate['reset'];?>" name="reset" />
        <input type="submit" value="<?php echo $translate['send'];?>" name="send" />
    </div>
</form>

