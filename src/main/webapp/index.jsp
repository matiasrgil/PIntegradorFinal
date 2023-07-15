<%@ page contentType="text/html;charset=UTF-8" %>
<!--%
    if(session.getAttribute("email") == null){
        response.sendRedirect("login.jsp");
    }
%-->
<!DOCTYPE html>
<html lang="es">
  <jsp:include page="head.jsp" />
  <body>
    <jsp:include page="header.jsp" />
    <main>

     <section>
         <div id="myCarousel" class="carousel slide mb-4" data-bs-ride="carousel">
                <div class="carousel-indicators">
                    <button type="button" data-bs-target="#myCarousel" data-bs-slide-to="0" class="active" aria-current="true"
                        aria-label="Slide 1"></button>
                    <button type="button" data-bs-target="#myCarousel" data-bs-slide-to="1" aria-label="Slide 2"></button>
                    <button type="button" data-bs-target="#myCarousel" data-bs-slide-to="2" aria-label="Slide 3"></button>
                </div>
                <div class="carousel-inner">
                    <div class="carousel-item active bg-carousel-ba1">
                        <svg class="bd-placeholder-img" width="100%" height="100%" xmlns="http://www.w3.org/2000/svg" aria-hidden="true" preserveAspectRatio="xMidYMid slice" focusable="false"><rect width="100%" height="100%" fill="#000"/></svg>
                        <div class="container">
                            <div class="carousel-caption text-end pb-5">
                                <div class="row">
                                    <div class="col-lg-8 offset-lg-6">
                                        <h3>Conf Bs. As</h3>
                                        <p>Bs. As. llega por primera vez a la Argentina. Un evento para compartir con nuestra comunidad el conocimiento y la experiencia de los expertos que están creando el futuro de internet. Ven a conocer a miembros del evento, a otros estudiantes de Codo a Codo y a los oradores de primer nivel que tenemos para ti. Te esperamos!</p>
                                        <%
                                            if(session.getAttribute("email") != null){
                                        %>
                                        <p><a class="btn btn-outline-light mb-3" href="#form-orador">Quiero ser orador</a>
                                        <a class="btn btn-success ms-2 mb-3" href="comprar.jsp">Comprar tickets</a></p>
                                        <%
                                            }
                                        %>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="carousel-item bg-carousel-ba2">
                        <svg class="bd-placeholder-img" width="100%" height="100%" xmlns="http://www.w3.org/2000/svg" aria-hidden="true" preserveAspectRatio="xMidYMid slice" focusable="false"><rect width="100%" height="100%" fill="#000"/></svg>
                        <div class="container">
                            <div class="carousel-caption text-end pb-5">
                                <div class="row">
                                    <div class="col-lg-6 offset-lg-6">
                                        <h3>Conf Bs. As.</h3>
                                        <p>Bs. As. llega por primera vez a la Argentina. Un evento para compartir con nuestra comunidad el conocimiento y la experiencia de los expertos que están creando el futuro de internet. Ven a conocer a miembros del evento, a otros estudiantes de Codo a Codo y a los oradores de primer nivel que tenemos para ti. Te esperamos!</p>
                                         <%
                                            if(session.getAttribute("email") != null){
                                         %>
                                         <p><a class="btn btn-outline-light mb-3" href="#form-orador">Quiero ser orador</a>
                                         <a class="btn btn-success ms-2 mb-3" href="comprar.jsp">Comprar tickets</a></p>
                                         <%
                                            }
                                         %>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="carousel-item bg-carousel-ba3">
                        <svg class="bd-placeholder-img" width="100%" height="100%" xmlns="http://www.w3.org/2000/svg" aria-hidden="true" preserveAspectRatio="xMidYMid slice" focusable="false"><rect width="100%" height="100%" fill="#000"/></svg>
                        <div class="container">
                            <div class="carousel-caption text-end pb-5">
                                <div class="row">
                                    <div class="col-lg-6 offset-lg-6">
                                        <h3>Conf Bs. As.</h3>
                                        <p>Bs. As. llega por primera vez a la Argentina. Un evento para compartir con nuestra comunidad el conocimiento y la experiencia de los expertos que están creando el futuro de internet. Ven a conocer a miembros del evento, a otros estudiantes de Codo a Codo y a los oradores de primer nivel que tenemos para ti. Te esperamos!</p>
                                         <%
                                            if(session.getAttribute("email") != null){
                                         %>
                                         <p><a class="btn btn-outline-light mb-3" href="#form-orador">Quiero ser orador</a>
                                         <a class="btn btn-success ms-2 mb-3" href="comprar.jsp">Comprar tickets</a></p>
                                         <%
                                            }
                                         %>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <button class="carousel-control-prev" type="button" data-bs-target="#myCarousel" data-bs-slide="prev">
                    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                    <span class="visually-hidden">Anterior</span>
                </button>
                <button class="carousel-control-next" type="button" data-bs-target="#myCarousel" data-bs-slide="next">
                    <span class="carousel-control-next-icon" aria-hidden="true"></span>
                    <span class="visually-hidden">Siguiente</span>
                </button>
            </div>
     </section>

      <section class="oradores d-flex flex-column align-items-center p-0 mt-2" id="oradores">
        <div
          class="container d-flex flex-column text-center align-items-center"
          id="texto-titulo"
        >
          <p class="mt-1 mb-0 p-cards">CONOCE A LOS</p>
          <h3>ORADORES</h3>
        </div>
        <section class="cards d-flex justify-content-center w-75 mb-4">
          <div class="card-deck">
            <div class="card">
              <img
                src="./img/steve.jpg"
                class="card-img-top"
                alt="Steve Jobs"
              />
              <div class="card-body">
                <div class="container d-flex align-items-lg-start m-0 p-0">
                  <p
                    class="font-weight-bold m-1 bg-warning rounded p-cards"
                    id="skills-card-body"
                  >
                    JavaScript
                  </p>
                  <p
                    class="font-weight-bold m-1 bg-info text-white rounded p-cards"
                    id="skills-card-body"
                  >
                    React
                  </p>
                </div>
                <h5 class="card-title">Steve Jobs</h5>
                <p class="card-text p-cards">
                  Lorem ipsum dolor, sit amet consectetur adipisicing elit.
                  Debitis earum totam neque, rerum quae laboriosam voluptate
                  optio! Debitis similique exercitationem nisi magni dolorem
                  culpa! Sed id corrupti suscipit deserunt tenetur.
                </p>
              </div>
            </div>
            <div class="card">
              <img src="./img/bill.jpg" class="card-img-top" alt="Bill Gates" />
              <div class="card-body">
                <div class="container d-flex align-items-lg-start m-0 p-0">
                  <p
                    class="font-weight-bold m-1 bg-warning rounded p-cards"
                    id="skills-card-body"
                  >
                    JavaScript
                  </p>
                  <p
                    class="font-weight-bold m-1 bg-info text-white rounded p-cards"
                    id="skills-card-body"
                  >
                    React
                  </p>
                </div>
                <h5 class="card-title">Bill Gates</h5>
                <p class="card-text p-cards">
                  Lorem ipsum dolor, sit amet consectetur adipisicing elit.
                  Debitis earum totam neque, rerum quae laboriosam voluptate
                  optio! Debitis similique exercitationem nisi magni dolorem
                  culpa! Sed id corrupti suscipit deserunt tenetur.
                </p>
              </div>
            </div>
            <div class="card">
              <img
                src="./img/ada.jpeg"
                class="card-img-top"
                alt="Ada Lovelace"
              />

              <div class="card-body">
                <div class="container d-flex align-items-lg-start m-0 p-0">
                  <p
                    class="font-weight-bold m-1 bg-secondary text-white rounded p-cards"
                    id="skills-card-body"
                  >
                    Negocios
                  </p>
                  <p
                    class="font-weight-bold m-1 bg-danger text-white rounded p-cards"
                    id="skills-card-body"
                  >
                    StartUps
                  </p>
                </div>
                <h5 class="card-title">Ada Lovelace</h5>
                <p class="card-text p-cards">
                  Lorem ipsum dolor, sit amet consectetur adipisicing elit.
                  Debitis earum totam neque, rerum quae laboriosam voluptate
                  optio! Debitis similique exercitationem nisi magni dolorem
                  culpa! Sed id corrupti suscipit deserunt tenetur.
                </p>
              </div>
            </div>
          </div>
        </section>
      </section>

      <section class="img-info" id="lugar">
        <div class="div-img-info container-fluid">
          <img
            src="./img/honolulu.jpg"
            alt="img Hawai"
            class="img-info col-6 m-0 p-0"
            id="img-img-article"
          />
          <article class="col-6 bg-dark text-white" id="img-info-article">
            <h4 class="titulo-article mt-3">Bs As - Octubre</h4>
            <p id="p-article-info-article">
              Buenos Aires es la provincia y localidad mas grande del estado de
              Argentina, es los Estados Unidos. Honolulu es la mas sureña de
              entre las principales ciudades estadounidenses. Aunque el nombre
              de Honolulu se reduere al area urbana en la costa del sureste de
              la isla de Oahu, laciudad del condado de Honolulu han formado una
              ciudad-condado consolidad que cubre toda la ciudad
              (aproximadamente 600 km2 de superficie).<br />
            </p>
            <button type="button" class="btn btn-outline-light m-0 p-1">
              <p class="m-0 p-0" id="p-btn-article-info-article">Conocé mas</p>
            </button>
          </article>
        </div>
      </section>

      <section class="sect-form m-3 d-flex justify-content-center" id="form-orador">
        <div
          class="d-flex flex-column text-center align-items-center"
          id="texto-titulo"
        >
          <p class="mt-1 mb-0 p-cards">CONVIERTE EN UN</p>
          <h3>ORADOR</h3>
          <p class="small mt-1 mb-2">
            Anótate como orador para dar una
            <u class="txt-p-form">charla ignite</u>. Cuéntanos de qué quieres
            hablar!
          </p>

          <div class="container-fluid">
            <form class="container-fluid form-sect-form-comprar" id="form">
              <div class="row">
                <div class="col">
                  <input
                    type="text"
                    class="form-control"
                    placeholder="Nombre"
                  />
                </div>
                <div class="col">
                  <input
                    type="text"
                    class="form-control"
                    placeholder="Apellido"
                  />
                  <form
                    class="container-fluid form-sect-form-comprar"
                    id="form"
                  ></form>
                </div>
              </div>

              <div class="form-group mb-0">
                <label for="exampleFormControlTextarea1"></label>
                <textarea
                  class="form-control"
                  id="exampleFormControlTextarea1"
                  rows="3"
                  placeholder="Sobre que quieres hablar?"
                ></textarea>
              </div>

              <p
                class="pie-form align-content-start d-flex justify-content-start mt-1 p-cards"
              >
                Recuerda incluir un titulo para tu charla.
              </p>

              <button
                type="button"
                class="btn btn-success w-100 border-0 btn-form"
              >
                Enviar
              </button>
            </form>
          </div>
        </div>
      </section>
    </main>

    <jsp:include page="footer.jsp" />

    <script
        src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
        crossorigin="anonymous"
    ></script>

    <script
        src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js"
        integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
        crossorigin="anonymous"
    ></script>
    <script
        src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct"
        crossorigin="anonymous"
    ></script>

  </body>
</html>