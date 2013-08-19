<h2><?php echo($data['partC']);?></h2>


<?php echo($data['introduction_3']);?>

<br />
<br />


<form name="step1ex13_formC" action="index.php?target=step1ex13&lang=<?php echo($lang)?>" method="POST">

    <?php
        for($i=1;$i<4;$i++){
            echo('<p>'.$i.'. ');
            echo('<textarea name="future_'.$i.'" cols="50" rows="1">  </textarea></p>');
        }
    ?>

    <br />
    <div style="text-align:center">
        <input type="reset" value="<?php echo $translate['reset'];?>" name="reset" />
        <input type="submit" value="<?php echo $translate['send'];?>" name="sendC" />
    </div>

</form>

