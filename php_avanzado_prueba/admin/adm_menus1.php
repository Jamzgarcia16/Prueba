<?php
defined("TOKEN_L34567") or die("Acceso no autorizado!");

$sql="SELECT * FROM menus ORDER BY id_menu";
$tabla=$db->sub_tuplas($sql);
$p1->assign("tabla_menus_2",$tabla);
?>

