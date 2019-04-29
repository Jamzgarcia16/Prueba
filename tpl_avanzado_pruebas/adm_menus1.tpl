<div><h3>ADMINISTRACIÓN DE MENÚS</h3></div>

<table id="tabla1" class="display" style="width:100%">
    <thead>
        <tr>
            <th>Editar</th>
            <th>ID</th>
            <th>Título</th>
            <th>Módulo</th>
            <th>Icono</th>
            <th>URL</th>
            <th>Borrar</th>
        </tr>
    </thead>
    <tbody>
	{foreach $tabla_menus_2 as $fila}
	<tr>
		<td style="text-align: center;">
			<a href="#" title="Editar" data-toggle="modal" data-target="#myModal"  onclick="return editar({$fila.id_menu},this.parentNode.parentNode.id);"><i class="fa fa-edit" style="font-size:24px; color:blue;"></i></a>
		</td>
		<td>{$fila.id_menu}</td>
		<td>{$fila.titulo}</td>
		<td>{$fila.programa}</td>
		<td>{$fila.icono}</td>
		<td>{$fila.url}</td>
		<td style="text-align: center;">
			<a href="#" title="Eliminar" data-toggle="modal" data-target="#myModal" onclick="return eliminar({$fila.id_menu},this.parentNode.parentNode.id);"><i class="fa fa-trash" style="font-size:24px; color:red;"></i></a>
		</td>
	</tr>
	{/foreach}
	</tbody>
    <tfoot>
        <tr>
            <th>Editar</th>
            <th>ID</th>
            <th>Título</th>
            <th>Módulo</th>
            <th>Icono</th>
            <th>URL</th>
            <th>Borrar</th>
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
            <label for="id_menu">ID:</label>
            <input type="text" class="form-control" id="id_menu">
          </div>
          <div class="form-group">
            <label for="titulo">Título:</label>
            <input type="text" class="form-control" id="titulo">
          </div>
          <div class="form-group">
            <label for="programa">Módulo:</label>
            <input type="text" class="form-control" id="programa">
          </div>
          <div class="form-group dropdown">
            <label for="icono">Ícono:</label>
            <div class="dropdown">
              <button class="btn btn-secondary" type="button" id="icono" data-toggle="modal" data-target="#myModal2" value="<i class=&quot;fa fa-adjust&quot;></i>"><i class="fa fa-adjust"></i> fa fa-adjust </button>

               <div class="modal" id="myModal2">
                <div class="modal-dialog">
                  <div class="modal-content">

                    <!-- Modal Header -->
                    <div class="modal-header">
                      <h4 class="modal-title">Seleccione ícono</h4>
                      <span onclick="$('#myModal2').modal(&quot;hide&quot;);" class="close text-muted" title="Cerrar">X</span>
                    </div>
                    <div class="modal-body">
                      <div id="iconos" aria-labelledby="icono">
                        <a href="#"><i class="fa fa-adjust"></i> fa fa-adjust</a>
                        <a href="#"><i class="fa fa-anchor"></i> fa fa-anchor</a>
                        <a href="#"><i class="fa fa-address-book"></i> fa fa-address-book</a>
                      </div>
                    </div>
                    <!-- Modal Footer -->
                    <div class="modal-footer">
                      <span onclick="$('#myModal2').modal(&quot;hide&quot;);" class="close text-muted" title="Cerrar">X</span>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <!-- <input type="text" class="form-control" id="icono"> -->
          </div>
          <div class="form-group">
            <label for="url">URL:</label>
            <input type="text" class="form-control" id="url">
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
 var a2 = '';

 function editar(argument,obj) {
    alert(obj);
    yy=obj.split("-");  // En PHP:   explode
    alert(yy[1]);
    $("#row_crud").val(yy[1]);
    // $("#row_crud").val(obj);
    $("#subtitulo_modal").text("Edición de registro de menú");
    $("#id_menu").val(argument);
    $("#boton").text("Grabar").removeClass("btn-danger btn-warning").addClass("btn-primary");
    $("#crud").val("u");

    $.post("trae_menu.php",
    {
        id_menu: argument
    },
    function(data, status) { // Callback
        objson = JSON.parse(data);
        alert("Data: " + objson.titulo + "\nStatus: " + status);
        $("#id_menu").val(objson.id_menu).attr("readonly", true);
        $("#titulo").val(objson.titulo).attr("readonly", false);
        $("#programa").val(objson.programa).attr("readonly", false);
        var a1 = objson.icono.split('"');
        $("#icono").html(objson.icono+ " "+a1[1]).attr("disabled", false);
        $("#icono").val(objson.icono);
        $("#url").val(objson.url).attr("readonly", false);
        a2 = '';
        objson.iconos.forEach(lista_iconos);
        $("#iconos").html(a2);
        alert("Data: " + objson.titulo + "\nStatus: " + status);
    });
 }

 function lista_iconos(value, index, array) {
  var a1 = value.icono.split('"');
  if (value.icono == $("#icono").val()) {
    a2 = a2 + '<a class="dropdown-item li active" href="#" onclick="return cambia_icono(&quot;'+a1[1]+'&quot;)">'+value.icono+' '+a1[1]+'</a>';
  } else {
    a2 = a2 + '<a class="dropdown-item li" href="#" onclick="return cambia_icono(&quot;'+a1[1]+'&quot;)">'+value.icono+' '+a1[1]+'</a>';
  }
  // a2 = a2 + value;
 }

 function cambia_icono(n_icono) {
    $("#icono").val('<i class="'+n_icono+'"></i>');
    $("#icono").html('<i class="'+n_icono+'"></i>'+' '+n_icono);
    $('#myModal2').modal("hide");
    return false;
 }

 function eliminar(argument,obj) {
 	alert(obj);
    yy=obj.split("-");  // En PHP:   explode
    //alert(yy[1]);
    $("#row_crud").val(yy[1]);
    $("#subtitulo_modal").text("Eliminación de registro de menú");
    $("#id_menu").val(argument);
    $("#boton").text("Eliminar").addClass("btn-danger").removeClass("btn-primary btn-warning");
    $("#crud").val("d");

    $.post("trae_menu.php",
    {
        id_menu: argument
    },
    function(data, status){ // Callback
        objson = JSON.parse(data);
        // alert("Data: " + objson.titulo + "\nStatus: " + status);
        $("#id_menu").val(objson.id_menu).attr("readonly", true);
        $("#titulo").val(objson.titulo).attr("readonly", true);
        $("#programa").val(objson.programa).attr("readonly", true);
        $("#icono").val(objson.icono).attr("disabled", true);
        $("#url").val(objson.url).attr("readonly", true);

        // $("#titulo").attr("readonly", true);
    });
 }
 function adicionar() {
    $("#row_crud").val("");
    $("#subtitulo_modal").text("Creación de registro de menú");
    $("#boton").text("Crear").addClass("btn-warning").removeClass("btn-primary btn-danger");
    $("#crud").val("c");
    $("#id_menu").val("").attr("disabled", true);

    $.post("trae_menu.php",
    {
      
    },
    function(data, status){ // Callback
      objson = JSON.parse(data);
      // alert(data);
      $("#id_menu").val("").attr("readonly", true);
      $("#titulo").val("").attr("readonly", false);
      $("#programa").val("").attr("readonly", false);
      $("#icono").val("").attr("disabled", false);
      $("#url").val("").attr("readonly", false);
      a2 = '';
      objson.iconos.forEach(lista_iconos);
      $("#iconos").html(a2);
    });
 }

 function cargar_reporte() {
    // alert("Se dió click");
    location.href = "http://localhost/php-noche/TCPDF-master/examples/example_011.php";
 }

 function grabar() {
    // alert("Se dió click");
    $.post("graba_menu.php",
    {
        crud: $("#crud").val(),
        id_menu: $("#id_menu").val(),
        titulo: $("#titulo").val(),
        programa: $("#programa").val(),
        icono: $("#icono").val(),
        url: $("#url").val()
    },
    function(data, status) { // Callback
        // objson = JSON.parse(data);
        // alert("Data: " + data + "\nStatus: " + status);
        var t = $('#tabla1').DataTable();
        //console.log(t);
        //t.on( 'draw', function () {
        //    console.log( 'Redraw occurred at: '+new Date().getTime() );
        //} );

        switch ($("#crud").val()) {
          case 'u': // Update
            t.row($("#row_crud").val()).data(new Array(
            '<a href="#" title="Editar" data-toggle="modal" data-target="#myModal" onclick="return editar('+$("#id_menu").val()+',this.parentNode.parentNode.id);"><i class="fa fa-edit" style="font-size:24px;color:blue;"></i></a>',
            $("#id_menu").val(),
            $("#titulo").val(),
            $("#programa").val(),
            $("#icono").val(),
            $("#url").val(),
            '<a href="#" title="Eliminar" data-toggle="modal" data-target="#myModal" onclick="return eliminar('+$("#id_menu").val()+',this.parentNode.parentNode.id);"><i class="fa fa-trash" style="font-size:24px;color:red;"></i></a>')).draw( false );
            //t.row($("#row_crud").val()).draw();
            alert("Se Actualiza registro exitosamente");
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
              '<a href="#" data-toggle="modal" data-target="#myModal" onclick="return editar('+objson.id_menu+',this.parentNode.parentNode.id);"><i class="fa fa-edit" style="font-size:24px;color:blue;"></i></a>',
              objson.id_menu,
              $("#titulo").val(),
              $("#programa").val(),
              $("#icono").val(),
              $("#url").val(),
              '<a href="#" data-toggle="modal" data-target="#myModal" onclick="return eliminar('+objson.id_menu+',this.parentNode.parentNode.id);"><i class="fa fa-trash" style="font-size:24px;color:red;"></i></a>'
            ] ).draw( false );
            alert("Se Grabo registro exitosamente");
            // console.log( y.rows().data() );
            break;
        }

        //alert("Data: " + data);
        $('#myModal').modal("hide");
        return(false);
    });
    return(false);
 }
</script>
<script src="vendor/chart.js/Chart.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jspdf/1.3.3/jspdf.min.js"></script>