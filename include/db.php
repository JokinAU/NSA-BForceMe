<?php
require_once('config.php');

$mysqli = new mysqli($db_host, $db_user, $db_password, $db_dbname, $db_port, $db_socket) or die ('Can\'t connect to the DB'.mysqli_connect_error());

if ($mysqli->connect_errno):
	die('Error: Sorry, the website is experiencing problems');
endif;

function NSA_getpublickey() {
	global $mysqli;
	$sql = 'SELECT publickey FROM keystore ORDER BY creation DESC LIMIT 1';
	$result = $mysqli->query($sql);
	if ((!$result) or ($result->num_rows === 0))
		die('Error: Sorry, the website is experiencing problems, try again later');
	$keyinfo = $result->fetch_assoc();
	return $keyinfo['publickey'];
}

function NSA_getkeys() {
	global $mysqli;
	$sql = 'SELECT publickey,privatekey FROM keystore ORDER BY creation DESC LIMIT 1';
	$result = $mysqli->query($sql);
	if ((!$result) or ($result->num_rows === 0))
		die('Error: Sorry, the website is experiencing problems, try again later');
	return $result->fetch_assoc();
}
?>
