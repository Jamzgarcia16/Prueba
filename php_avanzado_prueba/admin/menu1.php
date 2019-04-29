<?php
defined("TOKEN_L34567") or die("Acceso no autorizado!");
$sql="SELECT url,titulo,icono FROM aux_perfiles_menus a LEFT JOIN menus m ON a.menu_id=m.id_menu  WHERE a.perfil_id=".$_SESSION["pav"]["perfil_id"]." ORDER BY m.id_menu";

$tabla=$db->sub_tuplas($sql);
$p1->assign("tabla_menus",$tabla);

?>