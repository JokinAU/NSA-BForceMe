<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<meta http-equiv="content-type" content="text/html; charset=utf-8">
		<title>Info</title>
	</head>
	<body>
		<h2 align="center">Plataforma de acceso de la NSA (No Sabemos Aburrirnos)</h2>
		<p>Bienvenidos a la nueva plataforma de acceso de los agentes de la organizaci&oacute;n. Para acceder debe introducir su alias, email, la contrase&ntilde;a p&uacute;blica, y la particular.</p>
		<p><strong>RdJ (Reglas del Juego):</strong></p>
		<ol>
			<li>El alias se mostrar&aacute; p&uacute;blicamente, exclusivamente para mostrar el progreso en el scoreboard.
			<li>Cualquier agente que quiera acceder deber&aacute; introducir su direcci&oacute;n email sin registro previo (se mantendr&aacute; oculto). Tiene que ser una direcci&oacute;n v&aacute;lida para confirmarle que ha accedido si lo consigue, pero nunca se desvelar&aacute;!
			<li>Cada hora en punto (comprobad el reloj del servidor!) se genera la contrase&ntilde;a p&uacute;blica. Luego se crea un certificado protegido por una "contrase&ntilde;a NSA" y se encripta la clave anterior. Inmediatamente se publica en "el USB" de web la clave GPG p&uacute;blica, la GPG privada, y la contrase&ntilde;a cifrada dentro de un fichero GPG.
			<li>La contrase&ntilde;a particular de cada usuario se genera la primera vez que un agente intenta iniciar sesi&oacute;n, y nunca cambia. Tambi&eacute;n es una "contrase&ntilde;a NSA"
		</ol>
		<p><strong>Contrase&ntilde;as NSA:</strong> Se componen siempre de 4 caracteres. Siempre incluyen, en cualquier orden, un caracter de cada una de las siguientes categor&iacute;as (las categorias nunca se repiten):</p>
		<ol>
			<li>Una may&uacute;scula: A-Z (alfabeto ingl&eacute;s)
			<li>Una min&uacute;scula: a-z (alfabeto ingl&eacute;s)
			<li>Un n&uacute;mero: 0-9
			<li>Un s&iacute;mbolo de los siguientes: * / + -
		</ol>
		<p>As&iacute;, son v&aacute;lidas Ab3- y 8x*V pero no abC1 ni &ntilde;8V+</p>
		<p><strong>NOTA:</strong> Para evitar denegaci&oacute;n de servicio del servidor, por cada participante solo se aceptar&aacute; una solicitud cada 10 segundos, aunque la solicitud puede tener hasta 150 contrase&ntilde;as para probar, una en cada l&iacute;nea. Si intent&aacute;is salt&aacute;roslo, se os penalizar&aacute; con un minuto...</p>
		<p>Ser&aacute;s capaz de desarrollar un ataque que te permita acceder a trav&eacute;s del formulario de acceso? Si aceptas el reto y lo consigues, recibir&aacute;s un email de felicitaci&oacute;n: por favor responde contando c&oacute;mo lo conseguiste!</p>
	</body>
</html>