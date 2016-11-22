<?php
require_once('../include/permutations.php');
$someSecretPass = shortPaswd();

$templatein = './create-keys.answers-template';
$templateout = './create-keys.answers';

//PREPARE TEMPLATE
//Read the template file
$filecont = file_get_contents($templatein);
//Replace password
$filecont = preg_replace("/MySecretPass/", $someSecretPass, $filecont);
//Write contents to file
file_put_contents($templateout, $filecont);


//CREATE KEYS
//Run command to create the keys
$keygeneration = shell_exec('gpg --batch --gen-key create-keys.answers');
//echo 'Key generation: '.$keygeneration."\n";

//Export secret key to readable format
$output = shell_exec('gpg -a --export-secret-keys "Secret Password (NSA\'s best agents will never be known) <info@develdevil.net>" > secret-key.gpg');

//Encrypt file
$encryption = shell_exec('gpg -ar "Secret Password (NSA\'s best agents will never be known) <info@develdevil.net>" --output secret-text.gpg --encrypt secret-text.txt');


//DELETE KEY FROM SYSTEM:
//Run command to get the key's fingerprint
$rawfingerprint = shell_exec('gpg --list-keys --fingerprint');

//split its lines
$fingerprintlines = explode("\n", $rawfingerprint);
//look for the line LIKE 'Key fingerprint'
$line = implode(preg_grep('~Key fingerprint~', $fingerprintlines));
//split it
$parts = explode(' = ', $line);
//get second(last) part
$fingerprint = $parts[1];

//Delete secret key
shell_exec('gpg --batch --yes --delete-secret-keys "'.$fingerprint.'"');
//Delete key
shell_exec('gpg --batch --yes --delete-keys "'.$fingerprint.'"');
?>
