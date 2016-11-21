<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<meta http-equiv="content-type" content="text/html; charset=utf-8">
		<title>Date/Time</title>
	</head>
	<body>
		<p><?php
			require_once('../include/db.php');
			echo '<strong>Hora del servidor</strong>: '.NSA_getdatetime().' (Zulu Time/UTC)';
		?></p>
	</body>
</html>
