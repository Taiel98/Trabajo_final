<%-- 
    Document   : inicio
    Created on : 18 dic. 2021, 11:57:10
    Author     : Taiel98
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Inicio ${mail}</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="css/estilos.css">
    <script src="js/JavaScriptTF.js"></script>
</head>
<body class="fondo">
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
                    <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                      ${mail}
                    </a>
                    <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                      <li><a class="dropdown-item" href="configuracion.jsp">Configuración de Usuario</a></li>
                      <li><hr class="dropdown-divider"></li>
                      <li><a class="dropdown-item" href="index.html">Salir</a></li>
                    </ul>
                  </li>
                  <li class="nav-item"></li>
              </ul>
          </div>
    </nav>
    <div class="container">
        <div class="row">
            <div class="col-3">
              <h3>Lista de Amigos</h3>
              <ul class="list-group">
                  <li class="list-group-item">An item</li>
                  <li class="list-group-item">A second item</li>
                  <li class="list-group-item">A third item</li>
                  <li class="list-group-item">A fourth item</li>
                  <li class="list-group-item">And a fifth one</li>
                </ul>
            </div>
            <div class="col-9">
                <form action="">
                    <div class="form-floating border border-secondary">
                        <textarea class="form-control" placeholder="Leave a comment here" id="floatingTextarea2" style="height: 100px"></textarea>
                        <label for="floatingTextarea2">Comentarios</label>
                        <input class="form-control form-control-lg" id="formFileLg" type="file" />
                        <div class="d-grid gap-2">
                            <button class="btn btn-success" type="submit">Publicar</button>
                          </div>
                      </div>
                    </form>
            </div>
        </div>
    </div>
</body>
</html>
