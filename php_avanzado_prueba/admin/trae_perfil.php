<?php

# NameSpace: Espacio de nombres, Contexto
include '../../../config_avanzado_prueba/config_avanzado.php';
$db = new subase(); # Creamos el objeto $db: instancia de la clase subase

if (isset($_POST["id_perfil"])) {
    $sql="SELECT * FROM perfiles WHERE id_perfil=".$_POST["id_perfil"];

    if ($fila=$db->sub_fila($sql)) {
        $tabla=$db->sub_tuplas($sql);
        echo(json_encode($fila));
    }
}
?>