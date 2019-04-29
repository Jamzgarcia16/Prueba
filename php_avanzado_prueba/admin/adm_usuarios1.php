<?php
defined("TOKEN_L34567") or die("Acceso no autorizado!");
$mensaje="";
if (isset($_POST["operacion"]) && isset($_POST["aceptar"])) {	// Nivel 3
	if ($_POST["aceptar"] != "Regresar") {
		// print_r($_FILES);

		$fotoa1=""; $fotoa2=""; $fotou="";
		if (isset($_FILES["foto"])) {
			if (is_uploaded_file($_FILES["foto"]["tmp_name"])) {
				$arc = explode(".", $_FILES["foto"]["name"]);
				$cfoto = $_POST["cuenta"].".".$arc[count($arc)-1];
				if (move_uploaded_file($_FILES["foto"]["tmp_name"], WEB.FOTO.$cfoto)) {
					$fotoa1=",foto";
					$fotoa2=",'".FOTO.$cfoto."'";
					$fotou=",foto='".FOTO.$cfoto."'";
				}
			}
		}

		$claveu=""; $clavea1=""; $clavea2="";
		if ($_POST["clave1"] == $_POST["clave2"]) {
			if ($_POST["clave1"] != "") {
				$claveu=",clave='".$_POST["clave1"]."'";
				$clavea1=",clave";
				$clavea2=",'".$_POST["clave1"]."'";
			}
		}

		switch ($_POST["operacion"]) {
			case 'u':	// Update
				$sql="UPDATE usuarios SET nombre='".$_POST["nombre"]."',cuenta='".$_POST["cuenta"]."',estado=".$_POST["estado"].",perfil_id=".$_POST["perfil_id"]."$fotou$claveu WHERE id=".$_POST["id"];
				$mensaje="actualizado";
				break;
			case 'd':	// Delete
				$sql="DELETE FROM usuarios WHERE id=".$_POST["id"];
				$mensaje="eliminado";
				break;
			case 'c':	// Create
				$sql="INSERT INTO usuarios (nombre,cuenta,estado,perfil_id$fotoa1$clavea1) VALUES ('".$_POST["nombre"]."','".$_POST["cuenta"]."',".$_POST["estado"].",".$_POST["perfil_id"]."$fotoa2$clavea2)";
				$mensaje="creado";
				break;
		}
		// echo "$sql";
		if ($db->consulta($sql)) {	# Ejecutamos el Query
			$mensaje="Registro $mensaje exitosamente!";
		} else {
			$mensaje="Error: el registro no fue $mensaje!";
		}
	}
}

#if (isset($path[3]) && $path[3]==["crud"]) {	# Nivel 2
# Expresión ternaria   (condición ? "Si es true" : "Si es false")
if ( (isset($path[4]) ? ($path[4]=="crud" ? True : False) : False) ) { # Nivel 2
	$p1->assign("crud", $path[5]);
	switch ($path[5]) {
		case 'u':	// Editar
			$sql="SELECT id,nombre,cuenta,foto,estado,perfil_id FROM usuarios WHERE id=".$path[6];
			$boton="Actualizar";
			$subtitulo="Edición de Datos";
			$at1=" readonly";
			$at2="";
			$at3="";
			break;
		case 'd':	// Eliminar
			$sql="SELECT id,nombre,cuenta,foto,estado,perfil_id FROM usuarios WHERE id=".$path[6];
			$boton="Eliminar";
			$subtitulo="Eliminar el Registro";
			$at1=" readonly";
			$at2=" readonly";
			$at3=" disabled";
			break;
		case 'c':	// Crear
			$sql="";
			$boton="Grabar";
			$subtitulo="Creación de Registro";
			$at1=" readonly";
			$at2="";
			$at3="";			
			break;
	}
	$fila=array("id"=>"","nombre"=>"","cuenta"=>"","foto"=>"","estado"=>"","perfil_id"=>"");
	if ($sql != "") {	# Ejecutamos el Query: $sql
		if (!$fila=$db->sub_fila($sql)) {
			$fila=array("id"=>"","nombre"=>"","cuenta"=>"","foto"=>"","estado"=>"","perfil_id"=>"");
		}
	}
	$p1->assign("subtitulo",$subtitulo);
	$p1->assign("boton",$boton);
	$p1->assign("at1",$at1);
	$p1->assign("at2",$at2);
	$p1->assign("at3",$at3);
	$p1->assign("fila",$fila);

	$sql = "SELECT id_perfil,nombre_perfil FROM perfiles ORDER BY id_perfil";
	$tabla = $db->sub_tuplas($sql);
	$p1->assign("tabla_perfiles",$tabla);

} else {	# Nivel 1
	$p1->assign("crud", "");
	$p1->assign("mensaje",$mensaje);
	# $sql="SELECT id,nombre,cuenta,foto,estado FROM usuarios ORDER BY id ASC";
	$sql="SELECT id,nombre,cuenta,foto,estado,nombre_perfil FROM usuarios u LEFT JOIN perfiles p ON u.perfil_id=p.id_perfil ORDER BY id ASC";
	$tabla=$db->sub_tuplas($sql);
	$p1->assign("tabla_usuarios", $tabla);
}
?>