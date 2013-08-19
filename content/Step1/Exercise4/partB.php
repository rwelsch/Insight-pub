<script type="text/javascript">

// redips initialization
redipsInit = function () {
	var num = 0,			// number of successfully placed elements
		rd = REDIPS.drag;	// reference to the REDIPS.drag lib
	// initialization
	rd.init();
	// set hover color
	rd.hover.colorTd = '#9BB3DA';
	// define green elements for green cells
	rd.mark.exception.green = 'green_cell';
	rd.mark.exception.greenc0 = 'green_cell';
	rd.mark.exception.greenc1 = 'green_cell';
	// define orange elements for orange cells
	rd.mark.exception.orange = 'orange_cell';
	rd.mark.exception.orangec0 = 'orange_cell';
	rd.mark.exception.orangec1 = 'orange_cell';
	// this function (event handler) is called after element is dropped
	rd.event.dropped = function () {
            document.getElementById('form_'+rd.td.target.id).value = rd.obj.id;
		// message text
		/*
                var msg;
                msg = "";
                msg += "comp="+rd.obj.id ;
                msg += " / target="+rd.td.target.id;
                document.getElementById('message').innerHTML = msg;
                */
	};

        rd.event.changed = function () {
            if(rd.td.source.id){
                document.getElementById('form_'+rd.td.source.id).value = 0;
            }
		// message text
                /*
		var msg;
                msg = "";
                msg += "comp="+rd.obj.id ;
                msg += " / home="+rd.td.source.id;
                document.getElementById('message').innerHTML = msg;
                */
        }
        
        
};

// add onload event listener
if (window.addEventListener) {
	window.addEventListener('load', redipsInit, false);
}
else if (window.attachEvent) {
	window.attachEvent('onload', redipsInit);
}
</script>

<h2><?php echo($data['partB']); ?></h2>
<p><?php echo($data['introductionB']); ?></p>


<form name="step1ex4_formB" action="index.php?target=step1ex4&lang=<?php echo($lang)?>" method="POST">
    <div id="drag">
    <table width="100%" style="border-collapse:collapse">
        <?php
            $row = 0;
            $req = $db->query("
                SELECT Step1_Ex4_Values.id, Step1_Ex4_Values.$lang AS value
                FROM Step1_Ex4_Users_Personnal_Values
                    INNER JOIN Step1_Ex4_Values ON Step1_Ex4_Users_Personnal_Values.value_id = Step1_Ex4_Values.id
                WHERE Step1_Ex4_Users_Personnal_Values.user_id =".$_SESSION['userID']."
                ORDER BY rank");

            while ($line = $req->fetch()){
                if($row%4 == 0){
                    echo('<tr>');
                }
                echo('<td style="text-align:center;width:25%;border:1px solid black;valign:middle;">
                        <div id="'.$line['id'].'" class="drag">'.$line['value'].'</div></td>');
                if($row%4 == 3){
                    echo('</tr>');
                }
                $row++;
            }
            
            $req->closeCursor();
        ?>
    </table>
    
    <br />
        
    <table width="100%" style="border-collapse:collapse">
        <tr>
            <td width="33%" style="valign:top;" class="single" id="value_1">1<input id ="form_value_1" type="hidden"  name="value_1"  value="0"  /></td>
            <td width="34%" style="valign:top;" class="single" id="value_2">2<input id ="form_value_2" type="hidden"  name="value_2"  value="0"></td>
            <td width="33%" style="valign:top;" class="single" id="value_3">3<input id ="form_value_3" type="hidden"  name="value_3"  value="0"></td>
        </tr>
        <tr>
            <td width="33%" style="valign:top;" class="single" id="value_4">4<input id ="form_value_4" type="hidden"  name="value_4"  value="0"></td>
            <td width="33%" style="valign:top;" class="single" id="value_5">5<input id ="form_value_5" type="hidden"  name="value_5"  value="0"></td>
            <td width="34%" style="valign:top;" class="single" id="value_6">6<input id ="form_value_6" type="hidden"  name="value_6"  value="0"></td>
        </tr>


    </table>
    </div>
    
   
    
    
    
    <?php 
        /*
        for($i=1;$i<7;$i++){
            echo "<br />";
            echo($data['value']." $i: ");
            echo '<select style="width:500px;" name="step1_ex4_b_value_'.$i.'">';
            $req = $db->query("SELECT id, $lang FROM Step1_Ex4_Values");
            while($line = $req->fetch()){
                echo '<option value="'.$line['id'].'">'.$line[$lang].'</option>';
            }
            $req->closeCursor();
            echo '</select>';
        }
         */
    ?>
        
    <br />
    <div style="text-align:center">
        <!--<input type="reset" value="<?php echo $translate['reset'];?>" name="reset">-->
        <input type="submit" value="<?php echo $translate['send'];?>" name="sendB">
    </div>
</form>