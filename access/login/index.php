<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<meta http-equiv="content-type" content="text/html; charset=utf-8">
		<title>Login</title>
	</head>
	<body>
		<?php
		function checkKeyChars($string) {
			$validchars = array_merge(range('a','z'),
											range('A','Z'),
											array_map('strval', range('0','9')),
											str_split('*/+-'));
			foreach (str_split($string) as $char)
				if (!in_array($char, $validchars))
					return False;
			return $string;
		}

		$email = filter_input(INPUT_GET, 'email', FILTER_VALIDATE_EMAIL);
		if ((!$email) or (strlen($email)>100))
			die('Error: Email is not valid. You are not tampering with it, ARE YOU?!?<br />');

		$publickey = filter_input(INPUT_GET, 'publickey', FILTER_CALLBACK, array('options'=>'checkKeyChars'));
		if ((!$publickey) or (strlen($publickey)>16))
			die('Error: Public key is not valid. You are not tampering with it, ARE YOU?!?<br />');

		$privatekey = filter_input(INPUT_GET, 'privatekey', FILTER_CALLBACK, array('options'=>'checkKeyChars'));
		if ((!$privatekey) or (strlen($privatekey)>4))
			die('Error: Private key is not valid. You are not tampering with it, ARE YOU?!?<br />');

		require_once('../../include/db.php');
		$NSA_keys = NSA_getkeys();
		if (($NSA_keys['publickey']==$publickey) and ($NSA_keys['privatekey']==$privatekey)):
			echo 'Public and private keys are ok, you did it!'."\n";
			$subject = 'Reto NSA: CONSEGUIDO!';
			$message = $email.",\t\n".
				'Felicidades! Has conseguido vulnerar el reto de http://nsa.develdevil.net/'."\t\n".
				'La claves que has utilizado son:'."\t\n".
				'-public: '.$publickey."\t\n".
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