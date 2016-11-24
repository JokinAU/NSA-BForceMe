<?php
require_once('config.php');

$mysqli = new mysqli($db_host, $db_user, $db_password, $db_dbname, $db_port, $db_socket) or die ('Can\'t connect to the DB'.mysqli_connect_error());
$mysqli->query("SET time_zone = '+0:00';"); // Set time zone to Zulu

if ($mysqli->connect_errno):
	die('Error: Sorry, the website is experiencing problems'."\n");
endif;

function NSA_setpublicpass($string) {
	global $mysqli;
	$sql = "INSERT INTO keystore (publicpass) VALUES ('$string')";
	$result = $mysqli->query($sql);
	if ((!$result) or ($result->num_rows === 0))
		die('Error: Sorry, the website is experiencing problems, try again later'."\n");
	return True;
}

function NSA_getpublicpass() {
	global $mysqli;
	$sql = 'SELECT publicpass FROM keystore ORDER BY creation DESC LIMIT 1';
	$result = $mysqli->query($sql);
	if ((!$result) or ($result->num_rows === 0))
		die('Error: Sorry, the website is experiencing problems, try again later'."\n");
	return $result->fetch_assoc();
}
?>