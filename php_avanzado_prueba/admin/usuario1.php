<?php
defined("TOKEN_L34567") or die("Acceso no autorizado!");

$p1->assign("nombre",$_SESSION["pav"]["nombre"]);
$p1->assign("foto",$_SESSION["pav"]["foto"]);
$p1->assign("session_id",session_id());
?>