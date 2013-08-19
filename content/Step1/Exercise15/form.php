<?php 
    $req = $db->query("SELECT type, $lang FROM Step1_Ex15_Example");
    while($line = $req->fetch()){
       $example[$line['type']] = $line[$lang] ;
    }
    $req->closeCursor();

?>  



<p><?php echo($data['introduction']); ?></p>

<h2><?php echo($data['number1']); ?></h2>

<table border="1" style="border-collapse:collapse;">

    <tr>
        <td style="background:#AAAAAA;text-align:center;"colspan="2"><?php echo($data['personal']) ?></td>
    </tr>
    <tr>
        <td width="50%"><?php echo($data['name']);?></td>
        <td><?php echo($example['name']);?></td>
    </tr>
    <tr>
        <td><?php echo($data['birth']);?></td>
        <td><?php echo($example['birth']);?></td>
    </tr>
    <tr>
        <td><?php echo($data['adress']);?></td>
        <td><?php echo($example['adress']);?></td>
    </tr>
    <tr>
        <td><?php echo($data['telephone']);?></td>
        <td><?php echo($example['telephone']);?></td>
    </tr>
    <tr>
        <td><?php echo($data['email']);?></td>
        <td><?php echo($example['email']);?></td>
    </tr>
    <tr>
        <td><?php echo($data['status']);?></td>
        <td><?php echo($example['status']);?></td>
    </tr>

    
    
    <tr>
        <td style="background:#AAAAAA;text-align:center" colspan="2"><?php echo($data['education']) ?></td>
    </tr>
    <tr>
        <td><?php echo($data['education_name']);?></td>
        <td><?php echo($example['education_name']);?></td>
    </tr>


    <tr>
        <td style="background:#AAAAAA;text-align:center" colspan="2"><?php echo($data['work']) ?></td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td><ul>
            <li><?php echo($example['employer1']);?></li>
            <li><?php echo($example['occupation2']);?></li>
        </td>
    </tr>


    <tr>
        <td style="background:#AAAAAA;text-align:center" colspan="2"><?php echo($data['language']) ?></td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td><ul>
            <li><?php echo($example['language1']);?></li>
            <li><?php echo($example['language2']);?></li>
        </td>
    </tr>

    <tr>
        <td style="background:#AAAAAA;text-align:center" colspan="2"><?php echo($data['computer']) ?></td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td><?php echo($example['computer']);?></td>
    </tr>


    <tr>
        <td style="background:#AAAAAA;text-align:center" colspan="2"><?php echo($data['driving']) ?></td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td><?php echo($example['driving']);?></td>
    </tr>


    <tr>
        <td style="background:#AAAAAA;text-align:center" colspan="2"><?php echo($data['other']) ?></td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td><ul>
            <li><?php echo($example['other1']);?></li>
            <li><?php echo($example['other2']);?></li>
            <li><?php echo($example['other3']);?></li>
            <li><?php echo($example['other4']);?></li>
        </td>
    </tr>
</table>





<h2><?php echo($data['number2']); ?></h2>


<table border="1" style="border-collapse:collapse;">

    <tr>
        <td style="background:#AAAAAA;text-align:center;"colspan="2"><?php echo($data['personal']) ?></td>
    </tr>
    <tr>
        <td><?php echo($data['name']);?></td>
        <td><?php echo($example['name']);?></td>
    </tr>
    <tr>
        <td><?php echo($data['birth']);?></td>
        <td><?php echo($example['birth']);?></td>
    </tr>
    <tr>
        <td><?php echo($data['adress']);?></td>
        <td><?php echo($example['adress']);?></td>
    </tr>
    <tr>
        <td><?php echo($data['telephone']);?></td>
        <td><?php echo($example['telephone']);?></td>
    </tr>
    <tr>
        <td><?php echo($data['email']);?></td>
        <td><?php echo($example['email']);?></td>
    </tr>
    
    
    <tr>
        <td style="background:#AAAAAA;text-align:center" colspan="2"><?php echo($data['education']) ?></td>
    </tr>
    <tr>
        <td><?php echo($data['duration']);?></td>
        <td><?php echo($example['education_date']);?></td>
    </tr>
    <tr>
        <td><?php echo($data['education_name']);?></td>
        <td><?php echo($example['education_name']);?></td>
    </tr>


    <tr>
        <td style="background:#AAAAAA;text-align:center" colspan="2"><?php echo($data['work']) ?></td>
    </tr>
    <tr>
        <td colspan="2">
            <table  border="1" style="border-collapse:collapse">    
                <tr>
                    <td width="50%"><?php echo($data['duration']);?></td>
                    <td><?php echo($example['work_date1']);?></td>
                </tr>
                <tr>
                    <td><?php echo($data['employer']);?></td>
                    <td><?php echo($example['employer1']);?></td>
                </tr>
                <tr>
                    <td><?php echo($data['business']);?></td>
                    <td><?php echo($example['type1']);?></td>
                </tr>
                <tr>
                    <td><?php echo($data['occupation']);?></td>
                    <td><?php echo($example['occupation1']);?></td>
                </tr>
                <tr>
                    <td><?php echo($data['activities']);?></td>
                    <td><ul>
                        <li><?php echo($example['activity11']);?></li>
                        <li><?php echo($example['activity12']);?></li>
                        <li><?php echo($example['activity13']);?></li>
                        <li><?php echo($example['activity14']);?></li>
                        <li><?php echo($example['activity15']);?></li>
                        <li><?php echo($example['activity16']);?></li>
                        <li><?php echo($example['activity17']);?></li>
                        <li><?php echo($example['activity18']);?></li>
                        <li><?php echo($example['activity19']);?></li>
                    </ul></td>
                </tr>
            </table>
        </td>
    </tr>
    <tr>
        <td colspan="2">
            <table  border="1" style="border-collapse:collapse">    
                <tr>
                    <td width="50%"><?php echo($data['duration']);?></td>
                    <td><?php echo($example['work_date2']);?></td>
                </tr>
                <tr>
                    <td><?php echo($data['employer']);?></td>
                    <td><?php echo($example['employer2']);?></td>
                </tr>
                <tr>
                    <td><?php echo($data['business']);?></td>
                    <td><?php echo($example['type2']);?></td>
                </tr>
                <tr>
                    <td><?php echo($data['occupation']);?></td>
                    <td><?php echo($example['occupation2']);?></td>
                </tr>
                <tr>
                    <td><?php echo($data['activities']);?></td>
                    <td><ul>
                        <li><?php echo($example['activity21']);?></li>
                        <li><?php echo($example['activity22']);?></li>
                        <li><?php echo($example['activity23']);?></li>
                        <li><?php echo($example['activity24']);?></li>
                    </ul></td>
                </tr>
            </table>
        </td>
    </tr>    
    
    

    <tr>
        <td style="background:#AAAAAA;text-align:center" colspan="2"><?php echo($data['language']) ?></td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td><ul>
            <li><?php echo($example['language1']);?></li>
            <li><?php echo($example['language2']);?></li>
        </td>
    </tr>

    <tr>
        <td style="background:#AAAAAA;text-align:center" colspan="2"><?php echo($data['computer']) ?></td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td><?php echo($example['computer']);?></td>
    </tr>


    <tr>
        <td style="background:#AAAAAA;text-align:center" colspan="2"><?php echo($data['driving']) ?></td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td><?php echo($example['driving']);?></td>
    </tr>


    <tr>
        <td style="background:#AAAAAA;text-align:center" colspan="2"><?php echo($data['other']) ?></td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td><ul>
            <li><?php echo($example['other5']);?></li>
            <li><?php echo($example['other2']);?></li>
            <li><?php echo($example['other3']);?></li>
        </td>
    </tr>
</table>



<h2><?php echo($data['question']); ?></h2>


<form name="step1ex15_form" action="index.php?target=step1ex15&lang=<?php echo($lang) ?>" method="POST">

    <input type="radio" name="step1_ex15_form_1" value="1"> <?php echo $data['number1']; ?></input><br />
    <input type="radio" name="step1_ex15_form_1" value="2"> <?php echo $data['number2']; ?></input><br />
    
    <div style="text-align:center">
        <input type="reset" value="<?php echo $translate['reset']; ?>" name="reset">
        <input type="submit" value="<?php echo $translate['send']; ?>" name="send">  
    </div>
</form>

