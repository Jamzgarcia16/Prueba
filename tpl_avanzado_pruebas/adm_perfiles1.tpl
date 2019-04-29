<div style="text-align: center; padding: 30px;"><h3>ADMINISTRACIÓN DE PERFILES</h3></div>
<table id="tabla1" class="display" style="width:100%">
    <thead>
        <tr>
            <th style="text-align:center">Editar</th>
            <th>ID</th>
            <th>Nombre_Perfil</th>
            <th style="text-align:center">Borrar</th>
        </tr>
    </thead>
    <tbody>
  {foreach $tabla_perfiles_2 as $fila}
  <tr style="text-aling: center;">
    <td style="text-align: center;">
      <a href="#" title="Editar" data-toggle="modal" data-target="#myModal"  onclick="return editar({$fila.id_perfil},this.parentNode.parentNode.id);"><i class="fa fa-edit" style="font-size:24px; color:blue;"></i></a>
    </td>
    <td>{$fila.id_perfil}</td>
    <td>{$fila.nombre_perfil}</td>
    <td style="text-align: center;">
      <a href="#" title="Eliminar" data-toggle="modal" data-target="#myModal" onclick="return eliminar({$fila.id_perfil},this.parentNode.parentNode.id);"><i class="fa fa-trash" style="font-size:24px; color:red;"></i></a>
    </td>
  </tr>
  {/foreach}
  </tbody>
    <tfoot>
        <tr>
			<th style="text-align:center">Editar</th>
            <th>ID</th>
            <th>Nombre_Perfil</th>
            <th style="text-align:center">Borrar</th>
        </tr>
        <tr>
            <th colspan="2" style="text-align: center;"><a href="#"  data-toggle="modal" data-target="#myModal" onclick="return adicionar();"><i class="fa fa-plus-square" style="font-size:24px;color:green"></i> Adicionar </a></th>
            <th colspan="2">
            <button onclick="cargar_reporte();"><i class="fa fa-file-pdf-o" style="font-size:24px;color:red"></i> Reporte </button>
            </th>
            <th colspan="3"></th>
        </tr>
    </tfoot>
</table>

<!-- The Modal -->
<div class="modal fade" id="myModal">
  <div class="modal-dialog modal-dialog-centered">
    <div class="modal-content">
    
      <!-- Modal Header -->
      <div class="modal-header">
        <h4 id="subtitulo_modal" class="modal-title">Modal Heading</h4>
        <span onclick="$('#myModal').modal(&quot;hide&quot;);" class="close text-muted" title="Cerrar">X</span>
      </div>    
      <!-- Modal body -->
      <div id="body_modal" class="modal-body">

         <form action="/action_page.php">
          <div class="form-group">
            <label for="id_perfil">ID:</label>
            <input type="text" class="form-control" id="id_perfil">
          </div>
          <div class="form-group">
            <label for="nombre_perfil">Nombre_Perfil:</label>
            <input type="text" class="form-control" id="nombre_perfil">
          </div>

          <button id="boton" type="submit" class="btn btn-primary" onclick="return grabar();">Grabar</button>
          <input type="hidden" id="crud" value="">
          <input type="hidden" name="row_crud" id="row_crud" value="">
        </form>
      </div>      
      <!-- Modal footer -->
      <div id="footer-modal" class="modal-footer">
        <span onclick="$('#myModal').modal(&quot;hide&quot;);" class="close text-muted" title="Cerrar">X</span>
      </div>
      
    </div>
  </div>
</div>

<script type="text/javascript">

 function editar(argument,obj) {
    //alert(obj);
    yy=obj.split("-");  // En PHP:   explode
    //alert(yy[1]);
    $("#row_crud").val(yy[1]);
    // $("#row_crud").val(obj);
    $("#subtitulo_modal").text("Edición de registro de Perfil");
    $("#id_perfil").val(argument);
    $("#boton").text("Grabar").removeClass("btn-danger btn-warning").addClass("btn-primary");
    $("#crud").val("u");

    $.post("trae_perfil.php",
    {
        id_perfil: argument
    },
    function(data, status) { // Callback
        objson = JSON.parse(data);
        // alert("Data: " + objson.nombre_perfil + "\nStatus: " + status);
        $("#id_perfil").val(objson.id_perfil).attr("readonly", true);
        $("#nombre_perfil").val(objson.nombre_perfil).attr("readonly", false);
    });
 }

function eliminar(argument,obj) {
    yy=obj.split("-");  // En PHP:   explode
    //alert(yy[1]);
    $("#row_crud").val(yy[1]);
    $("#subtitulo_modal").text("Eliminación de registro de Perfil");
    $("#id_perfil").val(argument);
    $("#boton").text("Eliminar").addClass("btn-danger").removeClass("btn-primary btn-warning");
    $("#crud").val("d");

    $.post("trae_perfil.php",
    {
        id_perfil: argument
    },
    function(data, status){ // Callback
        objson = JSON.parse(data);
        // alert("Data: " + objson.nombre_perfil + "\nStatus: " + status);
        $("#id_perfil").val(objson.id_perfil).attr("readonly", true);
        $("#nombre_perfil").val(objson.nombre_perfil).attr("readonly", true);
    });
 }
 function adicionar() {
    $("#row_crud").val("");
    $("#subtitulo_modal").text("Creación de registro de Perfil");
    $("#boton").text("Crear").addClass("btn-warning").removeClass("btn-primary btn-danger");
    $("#crud").val("c");
    $("#id_perfil").val("").attr("disabled", true);
    $("#nombre_perfil").val("").attr("readonly", false);
 }

 function cargar_reporte() {
    alert("Funcionando JQuery Hola!!");
    //location.href = "http://localhost/php-noche/TCPDF-master/examples/example_011.php";
 }

  function grabar() {
    alert("Funcion Grabar Ok, Empezemos!");
    $.post("graba_perfil.php",
    {
        crud: $("#crud").val(),
        id_perfil: $("#id_perfil").val(),
        nombre_perfil: $("#nombre_perfil").val()
    },
    function(data, status) { // Callback
        // objson = JSON.parse(data);
        alert("Data: " + data + "\nStatus: " + status);
        var t = $('#tabla1').DataTable();
        //console.log(t);
        //t.on( 'draw', function () {
        //    console.log( 'Redraw occurred at: '+new Date().getTime() );
        //} );

        switch ($("#crud").val()) {

          case 'u': // Update
            t.row($("#row_crud").val()).data(new Array(
            '<a href="#" title="Editar" data-toggle="modal" data-target="#myModal" onclick="return editar('+$("#id_perfil").val()+',this.parentNode.parentNode.id);"><i class="fa fa-edit" style="font-size:24px;color:blue;"></i></a>',
            $("#id_perfil").val(),
            $("#nombre_perfil").val(),
            '<a href="#" title="Eliminar" data-toggle="modal" data-target="#myModal" onclick="return eliminar('+$("#id_perfil").val()+',this.parentNode.parentNode.id);"><i class="fa fa-trash-o" style="font-size:24px;color:red;"></i></a>')).draw( false );
            //t.row($("#row_crud").val()).draw();
            alert("Se Actualiza registro exitosamente");
             alert("Data: " + objson.nombre_perfil + "\nStatus: " + status);
            break;


          case 'd': // Delete
            if ($("#row_crud").val()!="") {
              t.row($("#row_crud").val()).remove().draw( false );
              alert("Se Elimina registro exitosamente");
            }
            break;
          case 'c': // Create
            objson = JSON.parse(data);
            var uu = t.row.add( [
              '<a href="#" data-toggle="modal" data-target="#myModal" onclick="return editar('+objson.id_perfil+',this.parentNode.parentNode.id);"><i class="fa fa-edit" style="font-size:24px;color:blue;"></i></a>',
              objson.id_perfil,
              $("#nombre_perfil").val(),
              '<a href="#" data-toggle="modal" data-target="#myModal" onclick="return eliminar('+objson.id_perfil+',this.parentNode.parentNode.id);"><i class="fa fa-trash-o" style="font-size:24px;color:red;"></i></a>'
            ] ).draw( false );
            alert("Se Grabo registro exitosamente");
             alert("Data: " + objson.nombre_perfil + "\nStatus: " + status);
            // console.log( y.rows().data() );
            break;
        }

        alert("Data: " + data);
        $('#myModal').modal("hide");
        return(false);
    });
    return(false);
 }


</script>

