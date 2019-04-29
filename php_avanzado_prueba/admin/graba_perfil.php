<?php
include '../../../config_avanzado_prueba/config_avanzado.php';

if (isset($_POST["crud"]) && isset($_POST["id_perfil"]) && isset($_POST["nombre_perfil"])) 
{
	switch ($_POST["crud"]) {
		case 'u':
			$sql="UPDATE perfiles SET nombre_perfil='".$_POST["nombre_perfil"]."' WHERE id_perfil=".$_POST["id_perfil"];
			#echo $sql;
			$mensaje="actualizado";
			break;
		case 'd':
			$sql="DELETE FROM perfiles WHERE id_perfil=".$_POST["id_perfil"];
			#echo $sql;
			$mensaje="eliminado";
			break;
		case 'c':
			$sql="INSERT INTO perfiles (nombre_perfil) VALUES ('".$_POST["nombre_perfil"]."')";
			#echo $sql;
			$mensaje="creado";
			break;
	}
	#echo $sql;
	 
	$db = new subase();	# Creamos el objeto $db: instancia de la clase subase
	if ($fila=$db->consulta($sql)) {
		if ($_POST["crud"]=='c') {
			$id_perfil=$db->ultimo_id();
			$sql="SELECT * FROM perfiles WHERE id_perfil=$id_perfil";
			$fila=$db->sub_fila($sql);
			echo json_encode($fila);
		} else {
			echo "Registro $mensaje exitosamente!";
		}
	} else {
		//echo "Error: el registro NO fue $mensaje!";
		echo "Error: el registro NO fue $mensaje! $sql";
	}
} else {
	echo "No hay variables";
}

?>