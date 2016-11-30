<?php
require_once('config.php');
require_once('functions.php');

$mysqli = new mysqli($db_host, $db_user, $db_password, $db_dbname, $db_port, $db_socket) or die ('Can\'t connect to the DB'.mysqli_connect_error());
$mysqli->query("SET time_zone = '+0:00';"); // Set time zone to Zulu

if ($mysqli->connect_errno):
	die('Error: Sorry, the website is experiencing problems'."\n");
endif;

function NSA_setpublicpass($publicpass) {
	global $mysqli;
	$sql = "INSERT INTO keystore (publicpass) VALUES ('$publicpass')";
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

function NSA_createupdateuser($alias,$email,$privatepass) {
	global $mysqli;
	$IP = $_SERVER['REMOTE_ADDR'];
	$newprivatepass = NSA_shortPaswd();

	$sql="INSERT INTO users (alias,email,privatepass,IP)".
		" VALUES ('$alias','$email','$newprivatepass','$IP')".
		" ON DUPLICATE KEY UPDATE".
		" alias='$alias',tries=tries+1,lastpass='$privatepass',IP='$IP'";
echo "sql: $sql";
	$result = $mysqli->query($sql);
	if ((!$result) or ($result->num_rows === 0))
		die('Error: Sorry, the website is experiencing problems, try again later'."\n");
	return True;
}

?>