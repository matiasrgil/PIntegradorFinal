<%@ page contentType="text/html;charset=UTF-8" %>
<header>
    <nav class="navbar navbar-dark bg-dark fixed-top navbar-expand-lg">
        <div class="container">
                <a class="navbar-brand" href="index.jsp">
                    <img src="./img/codoacodo.png" alt="Codo a Codo logo">
                    Conf Bs As
                </a>
              <nav class="navbar navbar-expand-md navbar-light bg-dark col-8 text-right text-center p-0" >

                <!--Menu hamburguesa-->
                <button
                  class="navbar-toggler"
                  type="button"
                  data-toggle="collapse"
                  data-target="#navbarNavAltMarkup"
                  aria-controls="navbarNavAltMarkup"
                  aria-expanded="false"
                  aria-label="Toggle navigation"
                >
                  <span class="navbar-toggler-icon"></span>
                </button>

                <ul class="navbar-nav mb-2 mb-lg-0">

                    <li class="nav-item">
                         <a class="nav-link" href="index.jsp#oradores">Los oradores</a>
                    </li>
                    <li class="nav-item">
                         <a class="nav-link" href="index.jsp#lugar">El lugar y la fecha</a>
                    </li>
                    <li class="nav-item">
                         <a class="nav-link" href="index.jsp#form-orador">Conviértete en orador</a>
                    </li>

                    <%
                          if(session.getAttribute("email") == null){
                    %>
                     <li class="nav-item">
                          <a class="nav-link btn-log-reg" href="register.jsp">Registrarse</a>
                     </li>
                     <li class="nav-item">
                          <a class="nav-link btn-log-reg" href="login.jsp">Iniciar Sesión</a>
                     </li>
                     <%
                          }
                     %>

                     <%
                           if(session.getAttribute("email") != null){
                     %>
                     <li class="nav-item">
                           <a class="nav-link btn-log-reg" href="logout">Cerrar Sesión</a>
                     </li>

                     <%
                     }
                     %>
                </ul>

              </nav>

        </div>
    </nav>
    <%
        if(session.getAttribute("email") != null){
    %>

        <div class="d-flex justify-content-center alert alert-dark bg-dark mb-0 pt-0 fixed-top text-info" style="margin-top: 4rem; border: none;" role="alert">
            <p class="pt-2 mr-5">Hola <%= session.getAttribute("nombre") %></p>
            <a class="nav-link btn-compra-tickets ml-5 text-success" href="comprar.jsp">Comprar tickets</a>

    </div>
    <%
        }
    %>
</header>