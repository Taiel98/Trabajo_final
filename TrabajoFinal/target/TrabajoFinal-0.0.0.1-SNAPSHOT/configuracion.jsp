<%-- 
    Document   : configuracion
    Created on : 18 dic. 2021, 11:53:59
    Author     : Taiel98
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Configuración</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="css/estilos.css">
    <script src="js/JavaScriptTF.js"></script>
</head>
<body>
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
        <div class="container-fluid">
            <a class="navbar-brand" href="#">
              <img src="img/peligro.png" alt="logo de la empresa" width="70" height="40" class="d-inline-block align-text-top">
              Basic Box
            </a>
            <form class="d-flex">
                <input class="form-control me-2" type="search" placeholder="Buscar" aria-label="Search">
                <button class="btn btn-outline-success" type="submit">Buscar</button>
              </form>
            <ul class="navbar-nav mb-2 mb-lg-0 nav justify-content-end">
                <li class="nav-item">
                  <a class="nav-link active" aria-current="page" href="#">Notificaciones</a>
                </li>
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false" name="actual">
                      ${mail}
                    </a>
                    <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                      <li><a class="dropdown-item" href="inicio.jsp">Volver</a></li>
                      <li><hr class="dropdown-divider"></li>
                      <li><a class="dropdown-item" href="index.html">Salir</a></li>
                    </ul>
                  </li>
              </ul>
          </div>
    </nav>
    <div class="container bg-secondary">
        <div class="row registro">
            <div class="col">
                <h2>Configuraciones de Usuario</h2>
                <form class="row g-3" action="UserControl" method="POST">
                    <div class="col-12">
                      <label for="inputEmail4" class="form-label">Nombre de Usuario</label>
                      <input type="text" class="form-control" id="inputEmail4" name="nombre">
                    </div>
                    <div class="col-12">
                      <label for="inputAddress" class="form-label">Mail</label>
                      <input type="email" class="form-control" id="inputAddress" name="mail">
                    </div>
                    <div class="col-12">
                      <label for="inputAddress2" class="form-label">Contraseña</label>
                      <input type="password" class="form-control" id="inputAddress2" name="clave">
                    </div>
                    <div class="d-grid gap-2">
                        <button class="btn btn-warning" type="submit" name="accion" value="Modificar">Modificar</button>
                      </div>
                  </form>
                <form action="UserControl" method="POST">
                    <div class="d-grid gap-2">
                        <button class="btn btn-danger" type="submit" name="accion" value="Eliminar">Eliminar</button>
                      </div>
                </form>
            </div>
        </div>
    </div>
</body>
</html>