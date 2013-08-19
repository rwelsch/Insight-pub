<script type="text/javascript">
    function changebg(obj){
        if(obj.parentNode.parentNode.bgColor == '#CC3366'){
            obj.parentNode.parentNode.bgColor = 'white'            
        } else {
            obj.parentNode.parentNode.bgColor = '#CC3366'
        }
    }
    
    function resetBG(){
        var boxes = document.getElementsByTagName('input')
        for(var i=0; i< boxes.length; i++){
            boxes[i].parentNode.parentNode.bgColor = 'white'
        }
    }
</script> 

<p><?php echo($data['introduction_1']); ?></p>
<p><?php echo($data['introduction_2']); ?></p>
<p><?php echo($data['introduction_3']); ?></p>


<form name="step4ex23_form" action="index.php?target=step4ex23&lang=<?php echo($lang)?>" method="POST">

    
    <table width="100%" style="border-collapse:collapse">
    <?php
        $row = 0;
        $req = $db->query("SELECT id, rank, $lang FROM Step4_Ex23_Laws ORDER BY rank");

        while ($line = $req->fetch()){
            if($row%4 == 0){
                echo('<tr>');
            }
            echo('<td style="text-align:center;width:25%;border:1px solid black;valign:middle;">
                    <label>
                        '.$line[$lang].'
                        <br />
                        <input type="checkbox" name="choice_'.$line['id'].'" value="'.$line['id'].'" onClick="changebg(this)" /> 
                    </label>
                    </td>');
            if($row%4 == 3){
                echo('</tr>');
            }
            $row++;
        }
        $req->closeCursor();
    ?>
    </table>    
    
    <br />
    <div style="text-align:center">
     <input type="reset" value="<?php echo $translate['reset'];?>" name="reset" />
     <input type="submit" value="<?php echo $translate['send'];?>" name="send" />
    </div>

</form>

<br />
<p style="font-style:italic;">
    <?php echo($data['tip']); ?>
    <a href="<?php echo($data['website']); ?>" target="_blank"><?php echo($data['website']); ?></a>

</p>
