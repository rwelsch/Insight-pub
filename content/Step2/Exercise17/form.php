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




<?php 
    echo("<p>".$data['introduction_1']."</p>");
    echo("<p>".$data['introduction_2']."</p>");
    echo("<p>".$data['introduction_3']."</p>");
?>    


<form name="step2ex17_form" action="index.php?target=step2ex17&lang=<?php echo($lang)?>" method="POST">

    <div id="drag">
    <table width="100%" style="border-collapse:collapse">
        <?php
            $row = 0;
        $req = $db->query("SELECT id, $lang AS value, rank FROM Step2_Ex17_Things ORDER BY rank");

            while ($line = $req->fetch()){
                if($row%4 == 0){
                    echo('<tr>');
                }
                echo('<td style="text-align:center;width:25%;border:1px solid black;valign:middle;">
                        <div id="'.$line['id'].'" class="drag"><img src="images/ex17/'.$line['id'].'.jpg" height="80px"/><br />'.$line['value'].'</div></td>');
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
            <td width="20%" style="valign:top;" class="single" id="value_1"><?php echo($data['choice']) ?> 1<input id ="form_value_1" type="hidden"  name="value_1"  value="0" /></td>
            <td width="20%" style="valign:top;" class="single" id="value_2"><?php echo($data['choice']) ?> 2<input id ="form_value_2" type="hidden"  name="value_2"  value="0" /></td>
            <td width="20%" style="valign:top;" class="single" id="value_3"><?php echo($data['choice']) ?> 3<input id ="form_value_3" type="hidden"  name="value_3"  value="0" /></td>
            <td width="20%" style="valign:top;" class="single" id="value_4"><?php echo($data['choice']) ?> 4<input id ="form_value_4" type="hidden"  name="value_4"  value="0" /></td>
            <td width="20%" style="valign:top;" class="single" id="value_5"><?php echo($data['choice']) ?> 5<input id ="form_value_5" type="hidden"  name="value_5"  value="0" /></td>
        </tr>
    </table>
    </div>
    
    <br />
    <div style="text-align:center">
        <!--<input type="reset" value="<?php echo $translate['reset'];?>" name="reset">-->
        <input type="submit" value="<?php echo $translate['send'];?>" name="send">
    </div>  

</form>
