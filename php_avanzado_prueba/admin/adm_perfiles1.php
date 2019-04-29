<?php
defined("TOKEN_L34567") or die("Acceso no autorizado!");

$sql="SELECT * FROM perfiles ORDER BY id_perfil";
$tabla=$db->sub_tuplas($sql);
$p1->assign("tabla_perfiles_2",$tabla);
?>