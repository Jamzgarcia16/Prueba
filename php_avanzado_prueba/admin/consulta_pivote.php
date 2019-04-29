<?php 
defined("TOKEN_L34567") or die("Acceso no autorizado!");
/*
	Archivo llamado tras petición con AJAX
*/
require_once '../../../config_avanzado_prueba/config_avanzado.php';
$bd = new subase();

if (isset($_POST["id"])) {
	# Ejecutar Query para devolver datos
	$sql="SELECT id_aux,perfil_id,menu_id FROM aux_perfiles_menus WHERE id_aux=".$_POST["id_aux"];
	$fila=$bd->sub_fila($sql);
	# print_r($fila);
	echo json_encode($fila);
}
?>