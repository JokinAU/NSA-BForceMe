<?php
require_once('config.php');

$mysqli = new mysqli($db_host, $db_user, $db_password, $db_dbname, $db_port, $db_socket) or die ('Can\'t connect to the DB'.mysqli_connect_error());
$mysqli->query("SET time_zone = '+0:00';"); // Set time zone to Zulu

if ($mysqli->connect_errno):
	die('Error: Sorry, the website is experiencing problems'."\n");
endif;

function NSA_getpublickey() {
	global $mysqli;
	$sql = 'SELECT publickey FROM keystore ORDER BY creation DESC LIMIT 1';
	$result = $mysqli->query($sql);
	if ((!$result) or ($result->num_rows === 0))
		die('Error: Sorry, the website is experiencing problems, try again later'."\n");
	$keyinfo = $result->fetch_assoc();
	return $keyinfo['publickey'];
}

function NSA_storesecret($string) {
	global $mysqli;
	$sql = "INSERT INTO keystore (secret) VALUES ('$string')";
	$result = $mysqli->query($sql);
	if ((!$result) or ($result->num_rows === 0))
		die('Error: Sorry, the website is experiencing problems, try again later'."\n");
	return True;
}

function NSA_getsecret() {
	global $mysqli;
	$sql = 'SELECT secret FROM keystore ORDER BY creation DESC LIMIT 1';
	$result = $mysqli->query($sql);
	if ((!$result) or ($result->num_rows === 0))
		die('Error: Sorry, the website is experiencing problems, try again later'."\n");
	return $result->fetch_assoc();
}
?>
