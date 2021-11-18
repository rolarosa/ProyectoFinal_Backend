<!DOCTYPE html>
<html lang="en">
    <head>
    <link href="../css/styles.css" rel="stylesheet" />
        <?php include('head.php');
        ?>
    </head>
    <body id="page-top">
         <!-- Navigation navbar-auto-->
            <?php include('navbar-auto.php');?>
        <!-- Masthead-->
        <header class="masthead-login">
        <div class="row mx-auto text-center">
        <div class="col-lg-8 mx-auto">
                <h1 class="my-0 txt-black mb-4">registro</h1>
                <div class="row">
                  <div class="col-lg-8 col-12 mx-auto">
                    <form method="post" action="controladores/registrarse.php">     
                      <div class="row mb-3">
                  <div class="col">
                      <input type="text" name="dni" class="form-control" placeholder="DNI">
                  </div>
                  <div class="col">
                      <input type="text" name="nombre" class="form-control" placeholder="Nombre">
                  </div>
                  </div>
                  <div class="row mb-3">
                  <div class="col"> 
                      <input type="text" name="apellido" class="form-control" placeholder="Apellido">
                  </div>
                  <div class="col">
                      <input type="email" name="email" class="form-control" placeholder="Email">
                  </div>
                  </div>
                  <div class="row mb-3">
                  <div class="col"> 
                      <input type="text" name="telefono" class="form-control" placeholder="Teléfono">
                  </div>
                  <div class="col">
                      <input type="text" name="ciudad" class="form-control" placeholder="Ciudad">
                  </div>
                  </div>
                  <div class="row mb-3">
                  <div class="col"> 
                      <input type="text" name="calle" class="form-control" placeholder="Calle">
                  </div>
                  <div class="col">
                      <input type="text" name="nro_calle" class="form-control" placeholder="Nª calle">
                  </div>
                  </div>
                  <div class="row mb-3">
                  <div class="col"> 
                      <input type="text" name="cod_postal" class="form-control" placeholder="Código postal">
                  </div>
                  <div class="col">
                      <input type="password" name="password" class="form-control" placeholder="Contraseña">
                  </div>
                  </div>
                  <div class="row mb-3">
                  <div class="col">
                      <input type="password" name="password2" class="form-control" placeholder="Confirme contraseña">
                  </div>
                  <!--<div class="col">
                  </div>-->    
                  </div>
              <div class="col">
                <button type="submit" class="btn btn-login btn-block">Hecho</button>
              </div>
            </div>
        </form>
        </div>
        </div>

        </div>
        </div>
        </div>
        </header>
        <!-- Bootstrap core JS-->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js"></script>
        <!-- Third party plugin JS-->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.4.1/jquery.easing.min.js"></script>
        <!-- Core theme JS-->
        <script src="js/scripts.js"></script>
    </body>
</html>
