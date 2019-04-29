<div><h3>ADMINISTRACIÓN DE USUARIOS</h3></div>
{if $crud !=""} 	{* Nivel 2 *}
	<script type="text/javascript" src="js/rollups/hmac-sha3.js"></script>
	<script type="text/javascript" src="js/components/sha3.js"></script>
	<script type="text/javascript">
		function validar() {
			// DOM: Document Objects Model
			// $("#clave1").val( CryptoJS.SHA3( $("#clave1").val() ) ); // JQuery

			// JQuery
			if ($("#nombre").val() == "") {
				alert("Se requiere el nombre");
				$("#nombre").focus();
				return false;
			}
			if ($("#cuenta").val() == "") {
				alert("Se requiere la cuenta");
				$("#cuenta").focus();
				return false;
			}

			if ($("#clave1").val() == $("#clave2").val()) {
				if ($("#clave1").val() != "") {
					$("#clave1").val(CryptoJS.SHA3( $("#clave1").val() ));
					$("#clave2").val( $("#clave1").val() );
				}
			} else {
				alert("Error en confirmación de la contraseña");
				$("#clave1").val("");
				$("#clave2").val("");
				$("#clave1").focus();
				return false;
			}
		}
	</script>
	<div><h4>{$subtitulo}</h4></div>
	<!-- HTML -->
	<form action="{$opcion}" enctype="multipart/form-data" method="post" onsubmit="return validar();">
	  <div class="form-group">
	    <label for="id">ID</label>
	    <input type="text" class="form-control" id="id" name="id" value="{$fila.id}"{$at1}>
	  </div>
	  <div class="form-group">
	    <label for="nombre">Nombre:</label>
	    <input type="text" class="form-control" id="nombre" name="nombre" value="{$fila.nombre}"{$at2}>
	  </div>

	  <div class="form-group">
	    <label for="cuenta">Cuenta:</label>
	    <input type="email" class="form-control" id="cuenta" name="cuenta" value="{$fila.cuenta}"{$at2}>
	  </div>

	  <div class="form-group">
	    <label for="clave1">Contraseña:</label>
	    <input type="password" class="form-control" id="clave1" name="clave1" value=""{$at2}>
	  </div>

	  <div class="form-group">
	    <label for="clave2">Confirmar Contraseña:</label>
	    <input type="password" class="form-control" id="clave2" name="clave2" value=""{$at2}>
	  </div>

	  <div class="form-group">
	    <label for="foto">Foto:</label>
	    <div>Archivo: {$fila.foto}</div>
	    <div><img src="../{$fila.foto}" alt="foto"></div>
	    <input type="file" class="form-control" id="foto" name="foto"{$at3}>
	  </div>

	  <div class="form-group">
	    <label for="perfil_id">Perfil:</label>
	    <select class="form-control" id="perfil_id" name="perfil_id"{$at3}>
		{foreach $tabla_perfiles as $fila_perfil}
			{if $fila.perfil_id == $fila_perfil.id_perfil}
				{$sw = ' selected'}
			{else}
				{$sw = ''}
			{/if}
			<option value="{$fila_perfil.id_perfil}"{$sw}>{$fila_perfil.nombre_perfil}</option>
		{/foreach}
	    </select>
	  </div>

	  <div class="form-group">
	    <label for="estado">Estado:</label>
	    <select class="form-control" id="estado" name="estado"{$at3}>
	    	{if $fila.estado == 1}
				<option value="1" selected>Activo</option>
				<option value="0">Inactivo</option>
	    	{else}
				<option value="1">Activo</option>
				<option value="0" selected>Inactivo</option>
	    	{/if}
	    </select>
	  </div>

	  <button type="submit" name="aceptar" class="btn btn-primary" value="{$boton}">{$boton}</button>
	  <button type="reset" class="btn btn-primary">Reestablecer</button>
	  <button type="submit" name="aceptar" class="btn btn-primary" value="Regresar">Regresar</button>
	  
	  <input type="hidden" name="opcion" value="{$opcion}">
	  <input type="hidden" name="operacion" value="{$crud}">
	</form>

{else} 	{* Nivel 1 *}<!-- Comentario -->
  {$mensaje}
  <div class="table-responsive">
  <table class="table table-hover">
    <thead>
      <tr>
      	<th>Editar</th>
        <th>ID</th>
        <th>Nombre</th>
        <th>Cuenta</th>
        <th>Foto</th>
        <th>Perfil</th>
        <th>Estado</th>
      	<th>Borrar</th>
      </tr>
    </thead>
    <tbody>
	{foreach $tabla_usuarios as $fila}
		<tr>
			<td><a href="{$opcion}/crud/u/{$fila.id}" class="btn btn-primary" style="font-size:12px; color: white;" title="Editar"><i class="fa fa-edit"></i></a></td>
			<td>{$fila.id}</td>
			<td>{$fila.nombre}</td>
			<td>{$fila.cuenta}</td>
			<td><img src="{$fila.foto}" alt="Foto" height="80"/></td>
			<td>{$fila.nombre_perfil}</td>
			<td>
				{if $fila.estado==1}
					<i class="fa fa-check-circle" style="font-size:24px; color: green;"></i>
				{else}
					<i class="fa fa-ban" style="font-size:24px; color: red;"></i>
				{/if}
			</td>
			<td><a href="{$opcion}/crud/d/{$fila.id}" class="btn btn-danger" style="font-size:12px; color: white;" title="Eliminar"><i class="fa fa-trash"></i></a></td>

		</tr>
	{/foreach}
	<tr>
		<td colspan="7">
			<a href="{$opcion}/crud/c" class="btn btn-warning" style="font-size:12px;" title="Adicionar"><i class="fa fa-plus"></i> Adicionar</a>
		</td>
	</tr>
    </tbody>
  </table>
  </div>
{/if}