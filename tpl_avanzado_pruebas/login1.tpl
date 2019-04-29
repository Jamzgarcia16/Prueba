<!DOCTYPE html>
<html lang="es">
<head>
  <meta charset="{$CHARSET_HTML}">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">
  <title>{$SOFTWARE}</title>
  <!-- Custom fonts for this template-->
  <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
  <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

  <!-- Custom styles for this template-->
  <link href="css/sb-admin-2.min.css" rel="stylesheet">

  <script type="text/javascript">
    function validar() {
      // DOM: Document Objects Model
      // $("#pwd").val( CryptoJS.SHA3( $("#pwd").val() ) ); // JQuery

      // JavaScript
      if (document.forms[0].email.value == "") {
        alert("Se requiere el email");
        document.forms[0].email.focus();
        return false;
      }
      if (document.forms[0].clave.value == "") {
        alert("Se requiere la contraseña");
        document.forms[0].clave.focus();
        return false;
      }

      document.forms[0].clave.value = CryptoJS.SHA3( document.forms[0].clave.value ); 
    }
  </script>

</head>

<body class="bg-gradient-primary">

  <div class="container">

    <!-- Outer Row -->
    <div class="row justify-content-center">

      <div class="col-xl-10 col-lg-12 col-md-9">

        <div class="card o-hidden border-0 shadow-lg my-5">
          <div class="card-header"><h1>{$SOFTWARE}</h1></div>
          <div class="card-body p-0">
            <!-- Nested Row within Card Body -->
            <div class="row">
              <div class="col-lg-6 d-none d-lg-block bg-login-image"></div>
              <div class="col-lg-6">
                <div class="p-5">
                  <div class="text-center">
                    <h1 class="h4 text-gray-900 mb-4">{$error1}</h1>
                  </div>
                 <form action="{$LOGINI}" method="post" onsubmit="return validar();">
                    <div class="form-group">
                      <input type="email" class="form-control form-control-user" id="email" name="email" aria-describedby="emailHelp" placeholder="Ingrese Cuenta...">
                    </div>
                    <div class="form-group">
                      <input type="password" class="form-control form-control-user" id="clave" name="clave" placeholder="Contraseña">
                    </div>
                    <!-- <a href="index.html" class="btn btn-primary btn-user btn-block">
                      Login
                    </a> -->
                    <input type="submit" class="btn btn-primary btn-user btn-block" name="aceptar" value="Ingresar">
                    <hr>

                    <a href="index.html" class="btn btn-google btn-user btn-block">
                      <i class="fab fa-google fa-fw"></i> Login with Google
                    </a>
                    <a href="index.html" class="btn btn-facebook btn-user btn-block">
                      <i class="fab fa-facebook-f fa-fw"></i> Login with Facebook
                    </a>
                  </form>
                  <hr/>
                  <div class="text-center">
                    <a class="small" href="forgot-password.html">Forgot Password?</a>
                  </div>
                  <div class="text-center">
                    <a class="small" href="register.html">Create an Account!</a>
                  </div>
                 
               
                </div>
              </div>
            </div>
          </div>
            <div class="card-footer">{$EMPRESA}<br/>
                <small><strong>Autor: {$AUTOR}</strong>
                </small>
            </div>
        </div>

      </div>

    </div>

 

  </div>

  <!-- Bootstrap core JavaScript-->
  <script src="vendor/jquery/jquery.min.js"></script>
  <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

  <!-- Core plugin JavaScript-->
  <script src="vendor/jquery-easing/jquery.easing.min.js"></script>

  <!-- Custom scripts for all pages-->
  <script src="js/sb-admin-2.min.js"></script>

  <script src="vendor/datatables/jquery.dataTables.js"></script>
  <script src="vendor/datatables/dataTables.bootstrap4.js"></script>

</body>

</html>