<?php 
    session_start();
    include("utils.php");
    include_once("db.php");
    
?>


<html>

    <head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<link rel="stylesheet" type="text/css" href="styles/base.css" media="all" />
	<link rel="stylesheet" type="text/css" href="styles/structure.css" media="screen" />
	<link rel="stylesheet" type="text/css" href="styles/style.css" media="screen" />
        
        <script type="text/javascript" src="dragndrop/header.js"></script>
        <script type="text/javascript" src="dragndrop/redips-drag-min.js"></script>
        <script type="text/javascript" src="dragndrop/script.js"></script>

	<title>
            Insight - <?php echo($translate['welcome'])?>
	</title>
    </head>
    
    <body>
        <div id="global">
            <div id="header">
                <?php include ("header.php"); ?>
            </div>
            
            <hr/>    
            
            <div id="center">
                <div id="navigation">
                    <? include ("navigation.php"); ?>
                </div>
                <div id="content">
                    <? include ("content.php"); ?>
                </div>
            </div>
            
            <br />
            <hr />    

            <div id="footer">
                <? include ("footer.php"); ?>
            </div>
        </div>
    </body>

</html>