<?php 
defined("TOKEN_L34567") or die("Acceso no autorizado!");
/*
	Archivo llamado tras petición con AJAX
*/
require_once '../../../config_avanzado_prueba/config_avanzado.php';
$bd = new subase();

if (isset($_POST["id_menu"])) {
	# Ejecutar Query para devolver datos
	$sql="SELECT id_menu,titulo,icono,programa,url FROM menus WHERE id_menu=".$_POST["id_menu"];
	$fila=$bd->sub_fila($sql);
	# print_r($fila);
	echo json_encode($fila);
}
?>