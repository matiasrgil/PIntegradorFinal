<%@ page contentType="text/html;charset=UTF-8" %>
<!doctype html>
<html lang="es">
<jsp:include page="head.jsp"/>
<body>
<jsp:include page="header.jsp"/>
    <main>
      <section class="sect-tarjetas" style="margin-top: 8rem;">
        <div class="tarjetas">
          <div class="tarjeta border-primary">
            <h4>Estudiante</h4>
            <p class="font-size-p m-0">Tienen un descuento</p>
            <h5>80%</h5>
            <p class="small">*presentar documentacion</p>
          </div>

          <div class="tarjeta border-info">
            <h4>Trainee</h4>
            <p class="font-size-p m-0">Tienen un descuento</p>
            <h5>50%</h5>
            <p class="small font-size-p-ch">*presentar documentacion</p>
          </div>

          <div class="tarjeta border-warning">
            <h4>Junior</h4>
            <p class="font-size-p m-0">Tienen un descuento</p>
            <h5>15%</h5>
            <p class="small font-size-p-ch">*presentar documentacion</p>
          </div>
        </div>
      </section>

      <section class="sect-form m-3 d-flex justify-content-center">
        <div class="d-flex flex-column text-center align-items-center" id="texto-titulo">
          <p class="mt-1 mb-0">VENTA</p>
          <h2>VALOR DE TICKET $200</h2>
          <div class="container-fluid">
            <form class="container-fluid form-sect-form-comprar" id="form">
              <div class="row">
                <div class="col">
                  <input
                    type="text"
                    class="form-control"
                    id="name"
                    placeholder="Nombre"
                    value="<%= session.getAttribute("nombre") %>"
                  />
                </div>
                <div class="col">
                  <input
                    type="text"
                    class="form-control"
                    id="surname"
                    placeholder="Apellido"
                    value="<%= session.getAttribute("apellido") %>"
                  />
                </div>
              </div>

              <div class="form-group">
                <input
                  type="email"
                  class="form-control mt-4"
                  id="email"
                  aria-describedby="emailHelp"
                  placeholder="Correo"
                  value="<%= session.getAttribute("email") %>"
                />
              </div>

              <div class="row">
                <div class="col">
                  <label for="cantidad align-content-start">Cantidad</label>
                  <input
                    type="text"
                    class="form-control"
                    id="cantidad"
                    placeholder="Cantidad"
                  />
                </div>
                <div class="col">
                  <label for="categoria align-content-start">Categoria</label>
                  <select class="form-control" id="categoria">
                    <option id="estudiante">Estudiante</option>
                    <option id="trainee">Trainee</option>
                    <option id="junior">Junior</option>
                  </select>
                </div>
              </div>

              <div class="p-2" id="totalCuenta">
                <p id="p-$">Total a pagar: $</p>
                <p id="p-total"></p>
              </div>

              <div class="container-fluid d-flex w-100 p-0 mb-3">
                <button type="submit" class="btn btn-success w-100 border-0 p-2 mr-1 ml-0 btn-form" id="btn-clear">
                  Borrar
                </button>

                <button type="button" class="btn btn-success w-100 border-0 p-2 ml-1 mr-0 btn-form" id="btn-send" data-toggle="modal" data-target="#resumenModal">
                  Resumen
                </button>
              </div>
            </form>
          </div>
        </div>
      </section>
    </main>

    <jsp:include page="footer.jsp" />

    <!-- Código para el modal -->
    <div class="modal fade" id="resumenModal" tabindex="-1" role="dialog" aria-labelledby="resumenModalLabel" aria-hidden="true">
      <div class="modal-dialog modal-dialog-centered" role="document">
        <div class="modal-content">
          <div class="modal-header">
            <h5 class="modal-title" id="resumenModalLabel">Resumen de compra</h5>
            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
              <span aria-hidden="true">&times;</span>
            </button>
          </div>
          <div class="modal-body">
            <p>Total a pagar: $<span id="modal-total"></span></p>
          </div>
          <div class="modal-footer">
            <button type="button" class="btn btn-primary" id="btn-finalizar">Finalizar compra</button>
            <button type="button" class="btn btn-danger" id="btn-borrar">Borrar compra</button>
          </div>
        </div>
      </div>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
    <script src="js/app.js"></script>
  </body>
</html>

