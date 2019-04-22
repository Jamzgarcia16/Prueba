<h1 class="h3 mb-0 text-gray-800">ADMINISTRACION DE USUARIOS</h1>
<?php
$sql="SHOW COLUMNS FROM usuarios";
$tabla=$bd->sub_tuplas($sql);

$sql2="SELECT id,nombre,cuenta,clave,foto,estado,perfil_id FROM usuarios ORDER BY id ASC";
$tabla_cuerpo=$bd->sub_tuplas($sql2);
?>

<!-- DataTable -->
<div class="card shadow mb-4">
	<div class="card-header py-3">
		<h6 class="m-0 font-weight-bold text-primary">Configuración de Usuarios del Sistema</h6>
	</div>
	<div class="card-body">
		<div class="table-responsive">
			<table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
				<thead>
					<?php include 'encabezado_tabla.php'; ?>
				</thead>
				<tfoot>
					<?php include 'encabezado_tabla.php'; ?>
				</tfoot>
				<tbody>
					<?php include 'cuerpo_tabla.php'; ?>
				</tbody>
			</table>
		</div>
	</div>
</div>

<!-- Edit ModalForm -->
<div class="modal fade" id="formModal" tabindex="-1" role="dialog" aria-labelledby="formModalLabel" aria-hidden="true">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<h5 class="modal-title" id="formModalLabel">Formulario</h5>
					<button class="close" type="button" data-dismiss="modal" aria-label="Close">
					<span aria-hidden="true">×</span>
					</button>
				</div>
				<div class="modal-body">
					<form action="/action_page/class-ut/prot" class="needs-validation" novalidate onsubmit="return comprobar();">
						<div class="form-group">
							<label for="id">ID:</label>
							<input type="text" class="form-control" id="id" placeholder="ID" readonly>
							<div class="valid-feedback">Valido.</div>
							<div class="invalid-feedback">Please fill out this field.</div>
						</div>
						<div class="form-group">
							<label for="nombre">Nombre:</label>
							<input type="text" class="form-control" id="nombre" placeholder="Ingrese Nombre" required>
							<div class="valid-feedback">Valido.</div>
							<div class="invalid-feedback">Por favor llene este campo.</div>
						</div>
						<div class="form-group">
							<label for="cuenta">Cuenta:</label>
							<input type="text" class="form-control" id="cuenta" placeholder="Ingrese Cuenta" required>
							<div class="valid-feedback">Valido.</div>
							<div class="invalid-feedback">Por favor llene este campo.</div>
						</div>
						<div class="form-group">
							<label for="clave">Clave:</label>
							<input type="text" class="form-control" id="clave" placeholder="Ingrese Clave" required>
							<div class="valid-feedback">Valido.</div>
							<div class="invalid-feedback">Por favor llene este campo.</div>
						</div>
						<div class="form-group">
							<label for="foto">Foto:</label>
							<input type="text" class="form-control" id="foto" placeholder="Ingrese Foto" required>
							<div class="valid-feedback">Valido.</div>
							<div class="invalid-feedback">Por favor llene este campo.</div>
						</div>
						<div class="form-group">
							<label for="estado">Estado:</label>
							<input type="text" class="form-control" id="estado" placeholder="Ingrese estado" required>
							<div class="valid-feedback">Valido.</div>
							<div class="invalid-feedback">Por favor llene este campo.</div>
						</div>
						<div class="form-group">
							<label for="perfil_id">Perfil:</label>
							<input type="text" class="form-control" id="perfil_id" placeholder="Ingrese ID_Perfil" required>
							<div class="valid-feedback">Valido.</div>
							<div class="invalid-feedback">Por favor llene este campo.</div>
						</div>
						<button class="btn btn-secondary" type="submit" data-dismiss="modal">Cancelar</button>
						<button class="btn btn-primary" id="grabar" type="submit">Grabar</button>
						<input type="hidden" id="caso" value="">
						<input type="hidden" id="row_crud" value="">
					</form>
				</div>
				<div class="modal-footer">
					<button class="close" type="button" data-dismiss="modal" aria-label="Close">
					<span aria-hidden="true">×</span>
					</button>
			</div>
		</div>
	</div>
</div>

<script type="text/javascript">
// Disable form submissions if there are invalid fields
(function() {
  'use strict';
  window.addEventListener('load', function() {
    // Get the forms we want to add validation styles to
    var forms = document.getElementsByClassName('needs-validation');
    // Loop over them and prevent submission
    var validation = Array.prototype.filter.call(forms, function(form) {
      form.addEventListener('submit', function(event) {
        if (form.checkValidity() === false) {
          event.preventDefault();
          event.stopPropagation();
        }
        form.classList.add('was-validated');
      }, false);
    });
  }, false);
})();

function adicionar() {
	// Adicionar un registro
	$("#formModalLabel").text("Adición de Datos");
	$("#grabar").text("Adicionar").removeClass("btn-danger").addClass("btn-primary");
	$("#caso").val("c");
	$("#row_crud").val("");
	$("#id").val("");
	$("#nombre").val("").attr("readonly",false);
	$("#cuenta").val("").attr("readonly",false);
	$("#clave").val("").attr("readonly",false);
	$("#foto").val("").attr("readonly",false);
	$("#estado").val("").attr("readonly",false);	
	$("#perfil_id").val("").attr("readonly",false);		
	console.log('Caso: '+$("#caso").val()+' row_crud: '+ $("#row_crud").val()+' id: '+$("#id").val());


function editar(id_ref,id_tr) 
{
	// Adicionar un registro
	//alert(id_tr);
    yy=id_tr.split("-");  // En PHP:   explode
    //alert(yy[1]);
    $("#row_crud").val(yy[1]);
	$("#formModalLabel").text("Edición de Datos");
	$("#grabar").text("Actualizar").removeClass("btn-danger").addClass("btn-primary");
	$("#caso").val("u");

	$.post("consulta_usuarios.php",
	{
		id: id_ref
	},
	function(data, status) {
		// alert("Data: " + data + "\nStatus: " + status);
		var Obj1 = JSON.parse(data);
		// alert(Obj1.nombre);
		$("#id").val(Obj1.id);
		$("#nombre").val(Obj1.nombre).attr("readonly",false);
		$("#cuenta").val(Obj1.cuenta).attr("readonly",false);
		$("#clave").val(Obj1.clave).attr("readonly",false);
		$("#foto").val(Obj1.foto).attr("readonly",false);
		$("#estado").val(Obj1.estado).attr("readonly",false);
		$("#perfil_id").val(Obj1.perfil_id).attr("readonly",false);
		console.log('Caso: '+$("#caso").val()+' row_crud: '+ $("#row_crud").val()+' id: '+$("#id").val());
});

function eliminar(id_ref,id_tr) {
	//alert(id_tr);
	// Adicionar un registro
    yy=id_tr.split("-");  // En PHP:   explode
    //alert(yy[1]);
    $("#row_crud").val(yy[1]);
    $("#formModalLabel").text("Confirmación para eliminación del Registro");
	$("#grabar").text("Eliminar").removeClass("btn-primary").addClass("btn-danger");
	$("#caso").val("d");

	$.post("consulta_usuarios.php",
	{
		id: id_ref
	},
	function(data, status) {
		// alert("Data: " + data + "\nStatus: " + status);
		var Obj1 = JSON.parse(data);
		// alert(Obj1.nombre);
		$("#id").val(Obj1.id);
		$("#nombre").val(Obj1.nombre).attr("readonly",true);
		$("#cuenta").val(Obj1.cuenta).attr("readonly",true);
		$("#clave").val(Obj1.clave).attr("readonly",true);
		$("#foto").val(Obj1.foto).attr("readonly",true);
		$("#estado").val(Obj1.estado).attr("readonly",true);
		$("#perfil_id").val(Obj1.perfil_id).attr("readonly",true);
		console.log('Caso: '+$("#caso").val()+' row_crud: '+ $("#row_crud").val()+' id: '+$("#id").val());

});

	function comprobar() {
	$.post("revisa_usuarios.php",
	{
		id: $("#id").val(),
		titulo: $("#nombre").val(),
		icono: $("#cuenta").val(),
		programa: $("#clave").val(),
		url: $("#foto").val(),
		caso: $("#estado").val(),
		caso: $("#perfil_id").val()
	},
	function(data, status) {	// CallBack
		alert("Data: " + data + "\nStatus: " + status);
		console.log('Caso: '+$("#caso").val()+' row_crud: '+ $("#row_crud").val()+' id: '+$("#id").val());
		var Obj1 = JSON.parse(data);
		var t = $('#dataTable').DataTable();

        if (Obj1.mensaje.substr(0,3)=="OK." || Obj1.mensaje.substr(0,6)!="ERROR:") {
          switch ($("#caso").val()) {
            case 'u': // Update
              t.row($("#row_crud").val()).data(new Array(
              '<button class="btn btn-info btn-sm" title="Editar" data-toggle="modal" data-target="#formModal" onclick="editar('+$("#id").val()+',this.parentNode.parentNode.id);"><i class="fas fa-edit" style="font-size:12px"></i></button>',
              $("#id").val(),
              $("#nombre").val(),
              $("#cuenta").val(),
              $("#clave").val(),
              $("#foto").val(),
              $("#estado").val(),
              $("#perfil_id").val(),
              '<button class="btn btn-danger btn-sm" title="Eliminar" data-toggle="modal" data-target="#formModal" onclick="eliminar('+$("#id").val()+',this.parentNode.parentNode.id);"><i class="fas fa-trash" style="font-size:12px"></i></button>')).draw( false );
              break;
            case 'd': // Delete
              //if ($("#row_crud").val()!="") {
              	alert('row_crud: '+$("#row_crud").val())
                t.row($("#row_crud").val()).remove().draw( false );
              //}
              break;
            case 'c': // Create
              t.row.add( [
                '<button class="btn btn-info btn-sm" title="Editar" data-toggle="modal" data-target="#formModal" onclick="editar('+Obj1.id+',this.parentNode.parentNode.id);"><i class="fas fa-edit" style="font-size:12px"></i></button>',
                Obj1.id,
                $("#nombre").val(),
                $("#cuenta").val(),
                $("#clave").val(),
                $("#foto").val(),
                $("#estado").val(),
                $("#perfil_id").val(),
                '<button class="btn btn-danger btn-sm" title="Eliminar" data-toggle="modal" data-target="#formModal" onclick="eliminar('+Obj1.id+',this.parentNode.parentNode.id);"><i class="fas fa-trash" style="font-size:12px"></i></button>'
              ] ).draw( false );
              // console.log( y.rows().data() );
              break;
          }
          //$("#caso").val("");
		  //$("#row_crud").val("");
      	} else {

      	}
		alert(Obj1.mensaje);
		// $(".close").click();
		$('#formModal').modal("hide");
	});
	return false;
}



}
</script>