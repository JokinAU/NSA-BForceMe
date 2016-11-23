# NSA-BForceMe
Pequeño proyecto que simula ser un sitio web protegido por una clave general y otra particular.

La clave general está encriptada dentro de un texto protegido por un certificado con contraseña débil, y va renovándose cada hora. Por otro lado, la clave particular se genera para cada email la primera vez que intentamos loguearnos con ella. Y el objetivo final es conseguir adivinar la combinación correcta de ambas en el momento adecuado.

Es, más que nada, un escenario en el que hace falta desarrollar algún tipo de ataque que permita atacar por fuerza bruta. Como elección personal, creo que PHP, Perl, Python, Bash o similares pueden ser adecuados y suficientes, aunque son bienvenidas pruebas con Java u otros. El tiempo lo dirá!

Requerimientos para instalar el servidor: Apache2, PHP5, MySQL5. Podría funcionar sin hacer nada más en otras versiones/configuraciones (Nginx, MariaDB...)

Requerimientos para los participantes: Cualquier distribución moderna o actualizada de Linux debería servir, aunque nadie le pone pegas a otros SO y herramientas. Evidéntemente, también hará falta una conexión a internet estable (aunque no hace falta demasiada velocidad).

Para que os hagáis una idea, todo este sistema y probado y desarrollado en Kali2-LXFC en modestísimo netbook del 2011, usando Leafpad!

Para usar este conjunto de páginas, habría que:

1) Clonar el respositorio

2) Crear la base de datos MySQL e importar las tablas. Cambiar "root" por el usuario que tenga permisos, y después pedirá su contraseña para MySQL:

mysql -u root -p < include/BForceMeSchema.sql

3) Crear un usuario para MySQL, y asignarle permisos (cambiar según sus preferencias)

$ mysql -u root -p

mysql> CREATE USER 'BForceMeUser'@'localhost' IDENTIFIED BY 'Secr3t_P4ssW0rd*';

mysql> GRANT ALL PRIVILEGES ON 'BForceMe'.* TO 'BForceUser'@'localhost';

mysql> FLUSH PRIVILEGES;

4) Copiar include/db-config.php-example en include/db-config.php, adaptando este último a los datos de la conexión



2016/11/18 bY JokinAU
