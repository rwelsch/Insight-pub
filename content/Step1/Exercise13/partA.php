<h2><?php echo($data['partA']);?></h2>


<?php echo($data['introduction_1']);?>

<br />
<br />


<form name="step1ex13_formA" action="index.php?target=step1ex13&lang=<?php echo($lang)?>" method="POST">

    <?php
        for($i=1;$i<4;$i++){
            echo('<p>'.$data['achievement'].' '.$i.' ');
            echo('<textarea name="achievement_'.$i.'" cols="50" rows="1">  </textarea></p>');
        }
    ?>

    <br />
    <div style="text-align:center">
        <input type="reset" value="<?php echo $translate['reset'];?>" name="reset" />
        <input type="submit" value="<?php echo $translate['send'];?>" name="sendA" />
    </div>

</form>

