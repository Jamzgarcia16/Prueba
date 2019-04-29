<?php 
defined("TOKEN_L34567") or die("Acceso no autorizado!"); // Para denegar el acceso al archivo sin autenticacion
#print_r($_SERVER);
require_once "slug.php";

if (isset($_SERVER["REDIRECT_URL"])) {
	//echo $_SERVER["REQUEST_URI"];
	$path = explode("/", $_SERVER["REDIRECT_URL"]);
	#echo "<br/>\n";
	for ($i=0; $i < count($path) ; $i++) {
	  $path[$i] = post_slug($path[$i]); // Limpia los caracteres no admitidos en el URL
	}
	print_r($path);
	$p1->assign("path",$path);
	$p1->assign("len_path",count($path));
} else {
	$p1->assign("path",null);
	$p1->assign("len_path",0);
}

if (isset($path[3])) {
	// $path[2] = post_slug($path[2]);
	# Cargar un módulo/opción de la aplicación
	$sql="SELECT m.id_menu opcion,m.programa,m.url FROM aux_perfiles_menus a LEFT JOIN menus m ON a.menu_id=m.id_menu WHERE a.perfil_id=".$_SESSION["pav"]["perfil_id"]." AND m.url='".$path[3]."'";
	#echo "$sql";
	if ($fila=$db->sub_fila($sql)) {
		$p1->assign("opcion",$fila["url"]);
		$p1->assign("programa",$fila["programa"]);
		include($fila["programa"].VERSION.".php");
	} else {
		$p1->assign("opcion","");
		$p1->assign("programa","");
	}
} else {
	$p1->assign("opcion","");
}


?>