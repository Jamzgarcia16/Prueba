<?php
# NameSpace: Espacio de nombres, Contexto
require_once '../../../config_avanzado_prueba/config_avanzado.php';

if (isset($_GET["cerrar"])) {
  if ($_GET["cerrar"]==session_id()) {
    # Cerrar la sesión
    session_unset();  # Elimina las variables de la memoria
    session_destroy();  # Desregistra las variables de la sesión
  }
}

if (!isset($_SESSION["pav"]["id"])) {
  # Usuario no está autenticado
  header("location: ".LOGINI);
}

$db = new subase(); # Creamos el objeto $db: instancia de la clase subase

include 'setup.php';

$p1->assign("PROGRAMA",PROGRAMA);
$p1->assign("LOGINI",LOGINI);
$p1->assign("EMPRESA",EMPRESA);
$p1->assign("SOFTWARE",SOFTWARE);
$p1->assign("AUTOR",AUTOR);
$p1->assign("VERSION",VERSION);
$p1->assign("DIR_PROYECTO",DIR_PROYECTO);
$p1->assign("url1",$url1);


include "encabezado".VERSION.".php"; // ok
include "usuario".VERSION.".php"; // ok
include "menu".VERSION.".php"; // ok
include "contenido".VERSION.".php"; // ok
include "pie".VERSION.".php"; //

$p1->display("index".VERSION.".tpl");
?>