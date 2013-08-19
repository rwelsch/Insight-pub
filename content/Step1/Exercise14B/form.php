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

<p><?php echo($data['introduction_1']); ?></p>




<?php 
    $req = $db->query("SELECT type, $lang FROM Step1_Ex14B_Description");
    while($line = $req->fetch()){
       $desc[$line['type']] = $line[$lang] ;
    }
    $req->closeCursor();
    
    echo('<fieldset>');
    echo('<h2>'.$desc['title'].'</h2>');
    echo('<p><span style="font-weight:bold;">'.$desc['h1'].'</span> '.$desc['t1'].'</p>');
    echo('<p><span style="font-weight:bold;">'.$desc['h1b'].'</span> '.$desc['t1b'].'</p>');
    echo('<p><span style="font-weight:bold;">'.$desc['h2'].'</span> '.$desc['t2'].'</p>');
    echo('<p><span style="font-weight:bold;">'.$desc['h3'].'</span> '.$desc['t3'].'</p>');
    echo('<p><span style="font-weight:bold;">'.$desc['h4'].'</span> '.$desc['t4'].'</p>');

    echo('<br />');

    echo('<p><span style="font-weight:bold;">'.$desc['h5'].'</span> '.$desc['t5'].'</p>');
    echo('<p><span style="font-weight:bold;">'.$desc['h6'].'</span> '.$desc['t6'].'</p>');
    echo('<p><span style="font-weight:bold;">'.$desc['h6b'].'</span> '.$desc['t6b'].'</p>');
    echo('<p><span style="font-weight:bold;">'.$desc['h6c'].'</span> '.$desc['t6c'].'</p>');

    echo('<br />');
    
    echo('<span style="font-weight:bold;">'.$desc['h7'].'</span><br />');
    echo($desc['t7'].'<br />');
    echo("<ul>");
    for($i=1;$i<6;$i++){
        echo('<li>'.$desc['t7'.$i].'</li>');
    }
    echo("</ul>");
    
    echo('<br />');
    
    echo('<span style="font-weight:bold;">'.$desc['h8'].'</span><br />');
    echo($desc['t8'].'<br />');
    echo("<ul>");
    for($i=1;$i<4;$i++){
        echo('<li>'.$desc['t8'.$i].'</li>');
    }
    echo("</ul>");

    echo('<br />');
    
    echo('<span style="font-weight:bold;">'.$desc['h9'].'</span><br />');
    echo("<ul>");
    for($i=1;$i<4;$i++){
        echo('<li>'.$desc['t9'.$i].'</li>');
    }
    echo("</ul>");

    
    echo('</fieldset>');
?>

<br />
<p><?php echo($data['introduction_2']); ?></p>


<h2><?php echo($data['letter'])?></h2>

<form name="step1ex14B_form" action="index.php?target=step1ex14B&lang=<?php echo($lang)?>" method="POST">
<div id="drag">
<fieldset>
<table width="100%"style="border-collapse:separate; background-color:#ffffff;">
    <tr>
        <td width="33%" style="border:1px solid black;" class="single" id="value_1"><span></span><input id ="form_value_1" type="hidden"  name="value_1"  value="0"  /></td>
        <td width="34%" class="mark"><span></span></td>
        <td width="33%" class="mark"><span></span></td>
    </tr>
    <tr>
        <td style="border:1px solid black;" class="single" id="value_2"><span></span><input id ="form_value_2" type="hidden"  name="value_2"  value="0"  /></td>
        <td class="mark"><span></span></td>
        <td style="border:1px solid black;" class="single" id="value_3"><span></span><input id ="form_value_3" type="hidden"  name="value_3"  value="0"  /></td>
    </tr>
    <tr>
        <td class="mark"><span></span></td>
        <td class="mark"><span></span></td>
        <td class="mark"><span></span></td>
    </tr>
    <tr>
        <td colspan="2" style="border:1px solid black;" class="single" id="value_4"><span></span><input id ="form_value_4" type="hidden"  name="value_4"  value="0"  /></td>
        <td class="mark"><span></span></td>
    </tr>
    <tr>
        <td colspan="2" style="border:1px solid black;" class="single" id="value_5"><span></span><input id ="form_value_5" type="hidden"  name="value_5"  value="0"  /></td>
        <td class="mark"><span></span></td>
    </tr>
    <tr>
        <td class="mark"><span></span></td>
        <td class="mark"><span></span></td>
        <td class="mark"><span></span></td>
    </tr>
    <tr>
        <td colspan="3" style="border:1px solid black;" class="single" id="value_6"><span></span><input id ="form_value_6" type="hidden"  name="value_6"  value="0"  /></td>
    </tr>
    <tr>
        <td colspan="3" style="border:1px solid black;" class="single" id="value_7"><span></span><input id ="form_value_7" type="hidden"  name="value_7"  value="0"  /></td>
    </tr>
    <tr>
        <td colspan="3" style="border:1px solid black;" class="single" id="value_8"><span></span><input id ="form_value_8" type="hidden"  name="value_8"  value="0"  /></td>
    </tr>
    <tr>
        <td colspan="3" style="border:1px solid black;" class="single" id="value_9"><span></span><input id ="form_value_9" type="hidden"  name="value_9"  value="0"  /></td>
    </tr>
    <tr>
        <td class="mark"><span></span></td>
        <td class="mark"><span></span></td>
        <td class="mark"><span></span></td>
    </tr>
    <tr>
        <td colspan="2" style="border:1px solid black;" class="single" id="value_10"><span></span><input id ="form_value_10" type="hidden"  name="value_10"  value="0"  /></td>
        <td class="mark"><span></span></td>
    </tr>
    <tr>
        <td colspan="2" style="border:1px solid black;" class="single" id="value_11"><span></span><input id ="form_value_11" type="hidden"  name="value_11"  value="0"  /></td>
        <td class="mark"><span></span></td>
    </tr>
    
</table>
</fieldset>

    
    
    
    <br />
    <div style="text-align:center">
        <!--<input type="reset" value="<?php echo $translate['reset'];?>" name="reset">-->
        <input type="submit" value="<?php echo $translate['send'];?>" name="send">
    </div>
    
    
    
<h2><?php echo($data['items'])?></h2>

    <table width="100%" style="border-collapse:collapse">
        <?php
            $row = 0;
            $req = $db->query("
                SELECT Step1_Ex14B_Items.id, Step1_Ex14B_Items.$lang AS value
                FROM Step1_Ex14B_Items
                ORDER BY rank");

            while ($line = $req->fetch()){
                if($row%2 == 0){
                    echo('<tr>');
                }
                echo('<td style="text-align:center;width:25%;border:1px solid black;valign:middle;">
                        <div id="'.$line['id'].'" class="drag">'.$line['value'].'</div></td>');
                if($row%2 == 1){
                    echo('</tr>');
                }
                $row++;
            }
            
            $req->closeCursor();
        ?>
    </table>
      
    
</div>
</form>




<?php    

    echo('<h3>'.$data['tips'].'</h3>');
    echo("<ul>");
    for($i=1;$i<8;$i++){
        echo('<li>'.$data['tip'.$i].'</li>');
    }
    echo("</ul>");

    
    
/*		
<form name="step1ex14A_form" action="index.php?target=step1ex14A&lang=<?php echo($lang)?>" method="POST">
    <?php 
        $req = $db->query("SELECT id, rank, $lang FROM Step1_Ex14A_Informations ORDER BY rank");
        while ($line = $req->fetch()){
            echo('<input type="checkbox" name="choice_'.$line['id'].'" value="'.$line['id'].'"/> '.$line[$lang].' <br />');
        }
        $req->closeCursor();
    ?>

     <input type="reset" value="<?php echo $translate['reset'];?>" name="reset">
     <input type="submit" value="<?php echo $translate['send'];?>" name="send">

    
</form>
 
 */
?>
