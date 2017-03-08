<?php
$date = date_create();


$objJson->msg = "public!";
$objJson->timesTamp = date_timestamp_get($date);
$objJson->serverId = gethostname();

$objReceive = json_encode($objJson);
echo "<h1><b><i>Teste HardCore"</i></b></h1>;
echo $objReceive;
?>
