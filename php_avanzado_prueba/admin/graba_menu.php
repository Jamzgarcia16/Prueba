<?php
include '../../../config_avanzado_prueba/config_avanzado.php';

#print_r($_POST);
#print_r($_GET);

if (isset($_POST["crud"]) && isset($_POST["id_menu"]) && isset($_POST["titulo"]) && isset($_POST["programa"]) && isset($_POST["icono"]) && isset($_POST["url"])) {
	switch ($_POST["crud"]) {
		case 'u':
			$sql="UPDATE menus SET titulo='".$_POST["titulo"]."',programa='".$_POST["programa"]."',icono='".$_POST["icono"]."',url='".$_POST["url"]."' WHERE id_menu=".$_POST["id_menu"];
			echo $sql;
			$mensaje="actualizado";
			break;
		case 'd':
			$sql="DELETE FROM menus WHERE id_menu=".$_POST["id_menu"];
			echo $sql;
			$mensaje="eliminado";
			break;
		case 'c':
			$sql="INSERT INTO menus (titulo,programa,icono,url) VALUES ('".$_POST["titulo"]."','".$_POST["programa"]."','".$_POST["icono"]."','".$_POST["url"]."')";
			echo $sql;
			$mensaje="creado";
			break;
	}
	#echo "$sql";
	$db = new subase();	# Creamos el objeto $db: instancia de la clase subase
	if ($fila=$db->consulta($sql)) {
		if ($_POST["crud"]=='c') {
			$id_menu=$db->ultimo_id();
			$sql="SELECT * FROM menus WHERE id_menu=$id_menu";
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