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

<p><?php echo($data['introduction']); ?></p>


<form name="step4ex22_form" action="index.php?target=step4ex22&lang=<?php echo($lang)?>" method="POST">
    
    <table width="100%" >
    <?php
        $row = 0;
        $req = $db->query("SELECT id, $lang AS value, rank FROM Step4_Ex22_Items ORDER BY rank");

        while ($line = $req->fetch()){
            echo('<tr>');
            
            echo('<td style="text-align:left;width:25%;border:1px solid black;valign:middle;">
                    <br />
                    <label>
                        <input type="checkbox" name="choice_'.$line['id'].'" value="'.$line['id'].'" onClick="changebg(this)" />
                        <span style="font-weight:bold">'.$data['item'].' '.$line['rank'].'</span><br />
                        '.$line['value'].'
                        <br />
                    </label>
                    <br />
                    
                    </td>');
            echo('</tr>');
            $row++;
        }
        $req->closeCursor();
    ?>
    </table>    
    
    <br />
    <div style="text-align:center">
        <input type="reset" value="<?php echo $translate['reset'];?>" name="reset" onclick="resetBG()">
        <input type="submit" value="<?php echo $translate['send'];?>" name="send">
    </div>


</form>