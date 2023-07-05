<%@ page contentType="text/html;charset=UTF-8" %>
<%
    if(session.getAttribute("email") == null){
        response.sendRedirect("login.jsp");
    }
%>
<!doctype html>
<html lang="es">
<jsp:include page="head.jsp"/>
<body>
<jsp:include page="header.jsp"/>

<main>

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
                                <p><a class="btn btn-outline-light mb-3" href="#form-orador">Quiero ser orador</a> <a class="btn btn-success ms-2 mb-3" href="comprar-tickets.jsp">Comprar tickets</a></p>
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
                                <p><a class="btn btn-outline-light mb-3" href="#form-orador">Quiero ser orador</a> <a class="btn btn-success ms-2 mb-3" href="comprar-tickets.jsp">Comprar tickets</a></p>
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
                                <p><a class="btn btn-outline-light mb-3" href="#form-orador">Quiero ser orador</a> <a class="btn btn-success ms-2 mb-3" href="comprar-tickets.jsp">Comprar tickets</a></p>
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
    <section class="text-center mb-4 mt-4">
        <h1>Hola <span class="badge bg-secondary btn-log-reg"><%= session.getAttribute("nombre") %></span></h1>
    </section>
    <section class="container mb-4" id="oradores">
        <h2 class="titulo-gral">Conoce a los <span>oradores</span></h2>

        <div class="row justify-content-center">
            <div class="col-md-11">
                <div class="row row-cols-1 row-cols-md-3 g-4">
                    <div class="col">
                        <div class="card h-100">
                            <img src="img/steve-min.jpg" class="card-img-top" alt="...">
                            <div class="card-body">
                                <div class="mb-2">
                                    <span class="badge bg-warning text-dark">Javascript</span>
                                    <span class="badge bg-info">React</span>
                                </div>
                                <h5 class="card-title">Steve Jobs</h5>
                                <p class="card-text">Lorem ipsum dolor sit amet consectetur, adipisicing elit. Et aspernatur, sit dolorem officiis dolor, nobis sed labore non culpa dignissimos amet excepturi odit quis quos temporibus ut asperiores possimus. Veniam!</p>
                            </div>
                        </div>
                    </div>
                    <div class="col">
                        <div class="card h-100">
                            <img src="img/bill-min.jpg" class="card-img-top" alt="...">
                            <div class="card-body">
                                <div class="mb-2">
                                    <span class="badge bg-warning text-dark">Javascript</span>
                                    <span class="badge bg-info">React</span>
                                </div>
                                <h5 class="card-title">Bill Gates</h5>
                                <p class="card-text">Lorem ipsum dolor sit amet consectetur, adipisicing elit. Molestias, nostrum saepe et quaerat illo possimus provident laboriosam totam sunt magni recusandae eligendi optio earum quas ab omnis fuga molestiae corrupti.</p>
                            </div>
                        </div>
                    </div>
                    <div class="col">
                        <div class="card h-100">
                            <img src="img/ada-min.jpeg" class="card-img-top" alt="...">
                            <div class="card-body">
                                <div class="mb-2">
                                    <span class="badge bg-secondary">Negocios</span>
                                    <span class="badge bg-danger">Startups</span>
                                </div>
                                <h5 class="card-title">Ada Lovelace</h5>
                                <p class="card-text">Lorem ipsum dolor sit amet consectetur adipisicing elit. Dolores, veniam eius excepturi sapiente eligendi quaerat soluta nihil iste vero sequi cum nam quibusdam quam voluptas consequuntur natus! Optio, perspiciatis velit.</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

    </section>

    <section class="mb-4" id="lugar">
        <div class="row g-0">
            <div class="col-md">
                <img src="img/honolulu-min.jpg" alt="Honolulu" class="img-fluid">
            </div>
            <div class="col-md text-light bg-aside1">
                <h2>Bs As - Octubre</h2>
                <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. At placeat molestias vitae unde facere voluptatem minus voluptates commodi corrupti tenetur! Pariatur qui enim animi sapiente sed error similique molestiae ipsum! Lorem, ipsum dolor sit amet consectetur adipisicing elit. Perspiciatis, excepturi deleniti harum facilis id, a illo assumenda officiis illum praesentium eos. Qui laborum ratione in hic ducimus debitis voluptatum aperiam.</p>
                <a class="btn btn-outline-light" href="#">Conocé más</a>
            </div>
        </div>
    </section>

    <section class="container" id="form-orador">
        <div class="row justify-content-center">
            <div class="col-lg-8 col-xl-7">
                <h2 class="titulo-gral">Conviértete en un <span>orador</span></h2>
                <p class="text-center">Anótate como orador para dar una charla ignite. Cuéntanos de qué quieres hablar!</p>
                <form action="">
                    <div class="row gx-2">
                        <div class="col-md mb-3">
                            <input type="text" class="form-control" placeholder="Nombre" aria-label="Nombre" required>
                        </div>
                        <div class="col-md mb-3">
                            <input type="text" class="form-control" placeholder="Apellido" aria-label="Apellido" required>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col mb-3">
                            <input type="email" class="form-control" placeholder="Email" aria-label="Email" required>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col mb-3">
                            <textarea class="form-control" id="exampleFormControlTextarea1" rows="4"
                                placeholder="Sobre qué quieres hablar?" required></textarea>
                            <div id="emailHelp" class="form-text mb-3">Recuerda incluir un título para tu charla.</div>
                            <div class="d-grid">
                                <button type="submit" class="btn btn-lg btn-form">Enviar</button>
                            </div>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </section>

</main>

<jsp:include page="footer.jsp"/>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>

</body>
</html>