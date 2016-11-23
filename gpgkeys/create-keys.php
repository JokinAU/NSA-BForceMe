<?php
$templatein =      './create-keys.answers-template';
$templateout =     './create-keys.answers';

$secretfileplain = './secret-text.txt';
$secretfile =      '../USB/secret-text.gpg';
$publicfile =      '../USB/public-key.gpg';
$privatefile =     '../USB/private-key.gpg';

$certid = 'Secret Password (best secret agents will never be known) <info@develdevil.net>';

//PREPARE TEMPLATE
//Read the template file
$filecont = file_get_contents($templatein);
//Replace password
require_once('../include/functions.php');
$filecont = preg_replace("/MySecretPass/", NSA_shortPaswd(), $filecont);
//Write contents to file
file_put_contents($templateout, $filecont);


//CREATE KEYS
//Run command to create the keys
$keygeneration = shell_exec('gpg --batch --gen-key create-keys.answers');
//echo 'Key generation: '.$keygeneration."\n";

//Export public key to readable format
$output = shell_exec("gpg -a --export '$certid' > $publicfile");
//Export secret key to readable format
$output = shell_exec("gpg -a --export-secret-keys '$certid' > $privatefile");

//Create secret file contents
require_once('../include/functions.php');
file_put_contents($secretfileplain, NSA_lipsum(32,'bytes',0));
//Encrypt file
$encryption = shell_exec("gpg --batch --yes -ar '$certid' --output $secretfile --encrypt $secretfileplain");

//DELETE PLAIN TEXT
unlink($secretfileplain);
//DELETE KEY FROM SYSTEM:
//Run command to get the key's fingerprint
$rawfingerprint = shell_exec("gpg --list-keys --fingerprint '$certid'");

//split its lines
$fingerprintlines = explode("\n", $rawfingerprint);
//look for the line LIKE 'Key fingerprint'
//$line = implode(preg_grep('~Key fingerprint~', $fingerprintlines));
$lines = preg_grep('~Key fingerprint~', $fingerprintlines);
//die(var_dump($lines));
//loop through the result(s). There could be more than one...
foreach ($lines as $line):
	//split it
	$parts = explode(' = ', $line);
	//get second(last) part
	$fingerprint = $parts[1];

	//Delete secret key
	shell_exec("gpg --batch --yes --delete-secret-keys '$fingerprint'");
	//Delete key
	echo shell_exec("gpg --batch --yes --delete-keys '$fingerprint'");
endforeach;
?>
