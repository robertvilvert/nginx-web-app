<?php
$date = date_create();


$objJson->msg = "secrets!";
$objJson->timesTamp = date_timestamp_get($date);
$objJson->serverId = gethostname();

$objReceive = json_encode($objJson);

echo $objReceive;
?>
