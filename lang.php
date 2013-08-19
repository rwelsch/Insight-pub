<?php
if (isset($_GET["lang"])) {
    $lang = $_GET["lang"];
}
else {
    echo 'No lang specified';
    $lang= 'uk';
}
?>