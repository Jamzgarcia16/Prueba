<?php
defined("TOKEN_L34567") or die("Acceso no autorizado!");
/*
	Archivo llamado tras petición con AJAX
*/
require_once '../../../config_avanzado_prueba/config_avanzado.php';
$bd = new subase();

if (isset($_POST["id"]) && isset($_POST["name"]) && isset($_POST["description"]) && isset($_POST["value"]) && isset($_POST["caso"])) {
	foreach ($_POST as $key => $value) {
		# Escapar la variables
		$_POST[$key] = addslashes($value);
	}

	# Ejecutar Query para actualizar los datos
	switch ($_POST["caso"]) {
		case 'u': # Update / Actualizar
			$sql="UPDATE goods SET name='".$_POST["name"]."',description='".$_POST["description"]."',value='".$_POST["value"]."' WHERE id=".$_POST["id"];
			$mensaje="Actualizado";
			break;
		case 'd': # Delete / Eliminar
			$sql="DELETE FROM goods WHERE id=".$_POST["id"];
			$mensaje="Eliminado";
			break;
		case 'c': # Create / Crear
			$sql="INSERT INTO goods (name,description,value) VALUES ('".$_POST["name"]."','".$_POST["description"]."','".$_POST["value"]."')";
			$mensaje="Adicionado";
			break;
	}
	if ($bd->consulta($sql)) {
		# Query ejectudo Ok
		$fila = array("caso"=>$_POST["caso"],"mensaje"=>"OK. El registro fue $mensaje exitosamente!");
		if ($_POST["caso"]=="c") { # Create / Crear
			$fila["id"] = $bd->ultimo_id();
		}
	} else {
		$fila = array("caso"=>$_POST["caso"],"mensaje"=>"ERROR: El registro NO fue $mensaje! : $sql");
	}
	echo json_encode($fila);
}
?>