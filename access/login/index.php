<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<meta http-equiv="content-type" content="text/html; charset=utf-8">
		<title>Login</title>
	</head>
	<body>
	<?php
	//sanitize alias
	$alias = filter_input(INPUT_GET, 'alias', FILTER_SANITIZE_STRING, FILTER_FLAG_STRIP_LOW || FILTER_FLAG_STRIP_HIGH || FILTER_FLAG_ENCODE_AMP);
	if ((!$alias) or (strlen($alias)>16))
		die('Error: Alias is not valid. You are not tampering with it, ARE YOU?!?<br />');

	//sanitize email removing dangerous characters
	$email = filter_input(INPUT_GET, 'email', FILTER_SANITIZE_EMAIL);
	//then check if it looks like an email address
	$email = filter_var($email, FILTER_VALIDATE_EMAIL);
	if ((!$email) or (strlen($email)>100))
		die('Error: Email is not valid. You are not tampering with it, ARE YOU?!?<br />');

	$publicpass = filter_input(INPUT_GET, 'publicpass', FILTER_CALLBACK, array('options'=>'NSA_checkValidChars'));
	if ((!$publicpass) or (strlen($publicpass)>32))
		die('Error: Public pass is not valid. You are not tampering with it, ARE YOU?!?<br />');

	$privatepass = filter_input(INPUT_GET, 'privatepass', FILTER_CALLBACK, array('options'=>'NSA_checkValidChars'));
	if ((!$privatepass) or (strlen($privatepass)>4))
		die('Error: Private pass is not valid. You are not tampering with it, ARE YOU?!?<br />');

	//Get public key
	require_once('../../include/db.php');
	$NSA_key = NSA_getpublicpass();
	
	NSA_createupdateuser($alias,$email,$privatepass);
	die('Still testing. Try again in some days...');
	
	$NSA_privatekey = NSA_getprivatepass();
	
	if ($NSA_key['publicpass']==$publickey):
		echo 'Public and private keys are ok, you did it!'."\n";
		$subject = 'Reto NSA: CONSEGUIDO!';
		$message = $email.",\t\n".
			'Felicidades, has conseguido vulnerar el reto de la NSA!'."\t\n".
			'La combinación que has utilizado es:'."\t\n".
			'-public: '.$publicpass."\t\n".
			'-private: '.$privatekey."\t\n".
			'Gracias por participar, y por tu buen trabajo!'."\t\n".
			'Mensaje enviado el '.NSA_getdatetime()." (Zulu Time/UTC)\t\n";
		$headers = 'From: info@develdevil.net'."\r\n".
			'BCC: info@develdevil.net';
echo $email. $subject. $message. $headers;
		mail($email, $subject, $message, $headers);
	else:
		echo 'Error: Public and/or private keys are NOT ok, please try again'."\n";
	endif;
	?>
	</body>
</html>