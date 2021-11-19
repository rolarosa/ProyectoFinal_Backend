<!DOCTYPE html>
<html lang="en">
    <head>
      <?php include('head.php');?>
    </head>
    <body id="page-top">
        <!-- Navigation navbar-auto-->
        <?php include('navbar-auto.php');?>
        <!-- Carrito-->
        <section class="carrito-section" id="carrito">
            <div class="container">
                <div class="row mx-auto text-center">
                  <h3 class="mb-4"><i class="fas fa-shopping-basket fa-lg pr-3"></i>carrito de compras</h3>
                </div>
                <div class="row">
                  <div class="container">
                    <table class="table">
                      <thead>
                        <tr>
                          <th class="col-1"></th>
                          <th class="col-6 text-left">producto</th>
                          <th class="col-1 text-center">cantidad</th>
                          <th class="col-2 text-center">precio</th>
                          <th class="col-2 text-center">subtotal</th>
                        </tr>
                      </thead>
                      <tbody>
                        <tr>
                          <td class="align-middle"><img src="img/ensalada.png" /></td>
                          <td class="align-middle text-left">Ensalada</td>
                          <td class="align-middle text-center">
                            <input type="number" class="form-control" placeholder="01" id="cantidad">
                          </td>
                          <td class="align-middle text-center">$300</td>
                          <td class="align-middle text-center">$300</td>
                        </tr>
                        <tr>
                          <td class="align-middle"><img src="img/pizza.png" /></td>
                          <td class="align-middle text-left">Pizza</td>
                          <td class="align-middle text-center">
                            <input type="number" class="form-control" placeholder="01" id="cantidad">
                          </td>
                          <td class="align-middle text-center">$500</td>
                          <td class="align-middle text-center">$800</td>
                        </tr>
                      </tbody>
                    </table>


                  </div>
                </div>
                <div class="row justify-content-end">
                  <button class="btn btn-comprar">Iniciar compra</button>
                </div>
            </div>
        </section>
        
        <!-- Contacto-->
        <!-- Footer-->
        <?php include('footer.php')?>

        <!-- Bootstrap core JS-->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js"></script>
        <!-- Third party plugin JS-->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.4.1/jquery.easing.min.js"></script>
        <!-- Core theme JS-->
        <script src="js/scripts.js"></script>
    </body>
</html>
