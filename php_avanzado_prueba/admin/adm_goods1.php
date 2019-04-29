
<h1 class="h3 mb-0 text-gray-800">ADMINISTRACION DE TABLA PRUEBA</h1>
<?php
$sql="SHOW COLUMNS FROM goods";
$tabla=$db->sub_tuplas($sql);

$sql2="SELECT id,name,description,value FROM goods ORDER BY id ASC";
$tabla_cuerpo=$db->sub_tuplas($sql2);
?>

