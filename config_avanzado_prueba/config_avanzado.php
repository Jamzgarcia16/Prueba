<?php
/*
	Parámentros de configuración
	Aplicación: Prueba
	Fecha: Abril 22 de 2019
	Autor: Jimmy Cantor
*/
define("APLICACION", "prueba");
define("VERSION", "1.0");
define("SERVIDOR_BD", "localhost");
define("USER_BD", "root");
define("CLAVE_BD", "");
define("BD", "prueba");
define("PUERTO", "3306");
define("EMPRESA", "Empresa Prueba S.A.S.");
define("AUTOR", "Jimmy Cantor");


$url1 = str_rot13("lala".date("HmsYd"));
define("DIR_PROYECTO","php_avanzado_prueba");
define("DIR_INI","in"); #carpeta de seguridad
define("PROGRAMA", "/".DIR_PROYECTO."/$url1");
define("LOGINI", "/".DIR_INI."/$url1");

define("WEB", "C:/xampp/htdocs/php_avanzado_prueba/"); # Windows
#define("WEB", "/var/www/html/php_avanzado_prueba/"); # Linux
define("FOTO","fotos/");


define("CHARSET_HTML", "utf-8");
define("CHARSET_BD", "utf8");

define("DRIVER", "mysqli.o_class.php");

session_start(); # Activa el registro de las variables en la sesión

require_once(DRIVER);
?>