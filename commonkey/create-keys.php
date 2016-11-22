<?php
require_once('../include/permutations.php');

$filein = './create-keys.answers-template';
$fileout = './create-keys.answers';

//Read the template file
$filecont = file_get_contents($filein);
//Replace password
$filecont = preg_replace("/MySecretPass/", shortPaswd(), $filecont);

//Write contents to file
//echo $filecont;
file_put_contents($fileout, $filecont);

//Run command to create the keys
$output = shell_exec('gpg --batch --gen-key create-keys.answers');
echo $output;
?>
