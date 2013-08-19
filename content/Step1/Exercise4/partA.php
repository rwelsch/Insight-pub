<script type="text/javascript">
    function changebg(obj){
        if(obj.parentNode.parentNode.bgColor == 'CC3366'){
            obj.parentNode.parentNode.bgColor = 'white'            
        } else {
            obj.parentNode.parentNode.bgColor = 'CC3366'
        }
    }
    
    function resetBG(){
        var boxes = document.getElementsByTagName('input')
        for(var i=0; i< boxes.length; i++){
            boxes[i].parentNode.parentNode.bgColor = 'white'
        }
    }
</script> 


<h2><?php echo($data['partA']); ?></h2>

<p><?php echo($data['introductionA']); ?></p>


<form name="step1ex4_formA" action="index.php?target=step1ex4&lang=<?php echo($lang)?>" method="POST">
    <table width="100%" style="border-collapse:collapse">
    <?php
        $row = 0;
        $req = $db->query("
            SELECT Step1_Ex4_Values.id, Step1_Ex4_Values.rank, Step1_Ex4_Values.$lang AS value, Step1_Ex4_Values_Description.$lang AS description
            FROM Step1_Ex4_Values 
                INNER JOIN Step1_Ex4_Values_Description ON Step1_Ex4_Values_Description.value_id = Step1_Ex4_Values.id
            ORDER BY rank            
            ");
        while ($line = $req->fetch()){
            if($row%4 == 0){
                echo('<tr>');
            }
            echo('<td style="text-align:center;width:25%;border:1px solid black;valign:middle;">
                    <label title="'.$line['description'].'">
                    <br />'.$line['value'].'
                    <br />
                    <input type="checkbox" name="choice[]" value="'.$line['id'].'" onClick="changebg(this)");">
                    <br /><br/></label>
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
        <input type="reset" value="<?php echo $translate['reset'];?>" name="reset" onClick="resetBG()">
        <input type="submit" value="<?php echo $translate['send'];?>" name="sendA">
     </div>
</form>