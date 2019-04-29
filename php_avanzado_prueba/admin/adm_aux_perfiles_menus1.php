<h1 class="h3 mb-0 text-gray-800">ADMINISTRACION DE TABLA PIVOTE</h1>
<?php
$sql="SHOW COLUMNS FROM aux_perfiles_menus";
$tabla=$bd->sub_tuplas($sql);
$sql2="SELECT id_aux,perfil_id,menu_id,p_crear,p_leer,p_editar,p_eliminar,p_imprimir FROM aux_perfiles_menus ORDER BY id_aux ASC";
$tabla_cuerpo=$bd->sub_tuplas($sql2);
?>