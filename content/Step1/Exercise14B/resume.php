<?php
    echo('<p class="answer">'.$translate['done'].' '.$translate['answer'].'</p>');
?>

<?php
    $req = $db->query("SELECT * FROM Step1_Ex14B_Answers WHERE id=1");
    $correct = $req->fetch();
    $req->closeCursor();
    
    $req = $db->query("SELECT * FROM Step1_Ex14B_Users WHERE user_id=".$_SESSION['userID']."");
    $user = $req->fetch();
    $req->closeCursor();
    
    $req = $db->query("SELECT id, $lang FROM Step1_Ex14B_Items");
    $items[0] = "--";
    while($line=$req->fetch()){
        $items[$line['id']] = $line[$lang];
    }
    $req->closeCursor();
?>


<div id="drag">
<fieldset>
<table width="100%"style="border-collapse:separate; background-color:#ffffff;">
    <tr>
        <td width="33%" style="border:1px solid black;color:<?php echo ($user['place1']==$correct['place1'])?'green':'red' ?>;"><?php echo($items[$user['place1']]);?></td>
        <td width="34%"><span></span></td>
        <td width="33%"><span></span></td>
    </tr>
    <tr>
        <td style="border:1px solid black;color:<?php echo ($user['place2']==$correct['place2'])?'green':'red' ?>;"><?php echo($items[$user['place2']]);?></td>
        <td><span></span></td>
        <td style="border:1px solid black;color:<?php echo ($user['place3']==$correct['place3'])?'green':'red' ?>;"><?php echo($items[$user['place3']]);?></td>
    </tr>
    <tr>
        <td><span></span></td>
        <td><span></span></td>
        <td><span></span></td>
    </tr>
    <tr>
        <td colspan="2" style="border:1px solid black;color:<?php echo ($user['place4']==$correct['place4'])?'green':'red' ?>;"><?php echo($items[$user['place4']]);?></td>
        <td><span></span></td>
    </tr>
    <tr>
        <td colspan="2" style="border:1px solid black;color:<?php echo ($user['place5']==$correct['place5'])?'green':'red' ?>;"><?php echo($items[$user['place5']]);?></td>
        <td><span></span></td>
    </tr>
    <tr>
        <td><span></span></td>
        <td><span></span></td>
        <td><span></span></td>
    </tr>
    <tr>
        <td colspan="3" style="border:1px solid black;color:<?php echo ($user['place6']==$correct['place5'])?'green':'red' ?>;"><?php echo($items[$user['place6']]);?></td>
    </tr>
    <tr>
        <td colspan="3" style="border:1px solid black;color:<?php echo ($user['place6']==$correct['place6'])?'green':'red' ?>;"><?php echo($items[$user['place5']]);?></td>
    </tr>
    <tr>
        <td colspan="3" style="border:1px solid black;color:<?php echo ($user['place7']==$correct['place7'])?'green':'red' ?>;"><?php echo($items[$user['place8']]);?></td>
    </tr>
    <tr>
        <td colspan="3" style="border:1px solid black;color:<?php echo ($user['place8']==$correct['place8'])?'green':'red' ?>;"><?php echo($items[$user['place9']]);?></td>
    </tr>
    <tr>
        <td><span></span></td>
        <td><span></span></td>
        <td><span></span></td>
    </tr>
    <tr>
        <td colspan="2" style="border:1px solid black;color:<?php echo ($user['place10']==$correct['place10'])?'green':'red' ?>;"><?php echo($items[$user['place10']]);?></td>
        <td><span></span></td>
    </tr>
    <tr>
        <td colspan="2" style="border:1px solid black;color:<?php echo ($user['place11']==$correct['place11'])?'green':'red' ?>;"><?php echo($items[$user['place11']]);?></td>
        <td><span></span></td>
    </tr>
    
</table>
</div>


<br />

<h3  style="text-align: center;">
    <a href="index.php?lang=<?php echo $lang;?>&target=step1ex14B&init=true">< <?php echo($translate['redo']); ?> <</a>
    <a href="index.php?lang=<?php echo $lang;?>&target=step1ex15" style="margin-left:5em;">> <?php echo($translate['next']); ?> ></a>
</h3>