<?php
defined("TOKEN_L34567") or die("Acceso no autorizado!");
/*
	Archivo llamado tras petición con AJAX
*/
require_once '../../../config_avanzado_prueba/config_avanzado.php';
$bd = new subase();

if (isset($_POST["id_menu"]) && isset($_POST["titulo"]) && isset($_POST["icono"]) && isset($_POST["programa"]) && isset($_POST["url"]) && isset($_POST["caso"])) {
	foreach ($_POST as $key => $value) {
		# Escapar la variables
		$_POST[$key] = addslashes($value);
	}

	# Ejecutar Query para actualizar los datos
	switch ($_POST["caso"]) {
		case 'u': # Update / Actualizar
			$sql="UPDATE menus SET titulo='".$_POST["titulo"]."',icono='".$_POST["icono"]."',programa='".$_POST["programa"]."',url='".$_POST["url"]."' WHERE id=".$_POST["id_menu"];
			$mensaje="Actualizado";
			break;
		case 'd': # Delete / Eliminar
			$sql="DELETE FROM menus WHERE id_menu=".$_POST["id"];
			$mensaje="Eliminado";
			break;
		case 'c': # Create / Crear
			$sql="INSERT INTO menus (titulo,icono,programa,url) VALUES ('".$_POST["titulo"]."','".$_POST["icono"]."','".$_POST["programa"]."','".$_POST["url"]."')";
			$mensaje="Adicionado";
			break;
	}
	if ($bd->consulta($sql)) {
		# Query ejectudo Ok
		$fila = array("caso"=>$_POST["caso"],"mensaje"=>"OK. El registro fue $mensaje exitosamente!");
		if ($_POST["caso"]=="c") { # Create / Crear
			$fila["id_menu"] = $bd->ultimo_id();
		}
	} else {
		$fila = array("caso"=>$_POST["caso"],"mensaje"=>"ERROR: El registro NO fue $mensaje! : $sql");
	}
	echo json_encode($fila);
}
?>