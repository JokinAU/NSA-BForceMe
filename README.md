# NSA-BForceMe
Pequeño proyecto que simula ser un sitio web protegido por una clave general y otra particular: La clave general está encriptada dentro de un texto protegido por un certificado con contraseña débil, y va renovándose cada hora. Por otro lado, la clave particular se genera para cada email la primera vez que intentamos loguearnos con ella. Y el objetivo final es conseguir adivinar la combinación correcta de ambas en el momento adecuado.

Es, más que nada, un escenario en el que hace falta desarrollar algún tipo de ataque que permita atacar por fuerza bruta... Pero con cabeza! Solo se puede hacer un intento cada 10 segundos, y por cada violación de ese retarto, el retardo se amplía 10 segundos MÁS. Ojo! 6 ataques en un segundo retrasarán el margen 5 * 10 = 50 segundos (Es correcto 5 y no 6, ya que el primer ataque era válido)

Como elección personal, creo que para desarrollar el ataque lenguajes como PHP, Python, Bash o similares pueden ser adecuados y suficientes, aunque son bienvenidas pruebas con Java u otros. El tiempo lo dirá!

Requerimientos para instalar el servidor: Apache2, PHP5, MySQL5. Podría funcionar sin hacer nada más en otras versiones/configuraciones (Nginx, MariaDB...)

Requerimientos para los participantes: Cualquier distribución moderna o actualizada de Linux debería servir, aunque nadie le pone pegas a otros SO y herramientas. Evidéntemente, también hará falta una conexión a internet estable (aunque no hace falta demasiada velocidad!)

Para que os hagáis una idea, todo este sistema (la parte del servidor y la del cliente) ha sido y probado y desarrollado en Xubuntu en un modestísimo netbook del 2011, usando Leafpad!

Para usar este conjunto de páginas, habría que:

1) Clonar este respositorio

2) Crear la base de datos MySQL e importar las tablas. En el siguiente comando, cambiar "root" por el usuario que tenga permisos, y después pedirá su contraseña para MySQL:

mysql -u root -p < include/BForceMeSchema.sql

3) Crear un usuario para MySQL, y asignarle permisos (cambiar según sus preferencias)

$ mysql -u root -p

mysql> CREATE USER 'BForceMeUser'@'localhost' IDENTIFIED BY 'Secr3t_P4ssW0rd*';

mysql> GRANT ALL PRIVILEGES ON BForceMe.* TO 'BForceUser'@'localhost' IDENTIFIED BY 'Secr3t_P4ssW0rd*';

mysql> FLUSH PRIVILEGES;

mysql> exit

4) Copiar include/config.php-example en include/config.php, adaptando este último a sus datos



2016/11/18 bY JokinAU
