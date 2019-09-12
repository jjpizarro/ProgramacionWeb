<!DOCTYPE html>
<html xmlns:th="http://www.thymeleaf.org">
<head>
<<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="IE=edge">

<title>Sports</title>

<!-- Bootstrap CSS CDN -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css"
	integrity="sha384-9gVQ4dYFwwWSjIDZnLEWnxCjeSWFphJiwGPXr1jddIhOegiu1FwO5qRGvFXOdJZ4"
	crossorigin="anonymous">
	
</head>
<body>

<div class="container py-5">
    <div class="row">
        <div class="col-md-12">
            <h2 class="text-center mb-5">Registro de usuarios</h2>
            <div class="row">
                <div class="col-md-6 mx-auto">
                    <div class="card border-secondary">
                        <div class="card-header">
                            <h3 class="mb-0 my-2">Ingrese sus datos</h3>
                        </div>
                        <div class="card-body">
                            <form class="form" th:action="@{/registro}" th:object="${usuario}" role="form" autocomplete="off" method="post">
                                <div class="form-group">
                                    <label for="inputUsernaName">Nombre de usuario</label>
                                    <input type="text" th:field="*{username}" class="form-control" id="inputUsernaName" placeholder="Nombre de usuario">
                                </div>
                                <div class="form-group">
                                    <label for="inputEmail3">Correo electr&oacute;nico</label>
                                    <input type="email" th:field="*{email}" class="form-control" id="inputEmail3" placeholder="email@corre.com" required="">
                                </div>
                                 <div class="form-group">
                                    <label for="inputNombre">Nombres</label>
                                    <input type="email" th:field="*{nombre}" class="form-control" id="inputNombre" placeholder="email@corre.com" required="">
                                </div>
                                <div class="form-group">
                                    <label for="inputApellidos">Apellidos</label>
                                    <input type="email" th:field="*{apellidos}" class="form-control" id="inputApellidos" placeholder="Apellidos" required="">
                                </div>
                                <div class="form-group">
                                    <label for="inputPassword3">Contrasen&tilde;a</label>
                                    <input type="password" th:field="*{password}" class="form-control" id="inputPassword3" placeholder="password" title="At least 6 characters with letters and numbers" required="">
                                </div>
                                 
                                <div class="form-group">
                                    <button type="submit" class="btn btn-success btn-lg float-right">Registrarse</button>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
            <!--/row-->

        </div>
        <!--/col-->
    </div>
    <!--/row-->
</div>
<!--/container-->
<!-- jQuery CDN - Slim version (=without AJAX) -->
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
		integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
		crossorigin="anonymous"></script>
	<!-- Popper.JS -->
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js"
		integrity="sha384-cs/chFZiN24E4KMATLdqdvsezGxaGsi4hLGOzlXwp5UZB1LY//20VyM2taTB4QvJ"
		crossorigin="anonymous"></script>
	<!-- Bootstrap JS -->
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js"
		integrity="sha384-uefMccjFJAIv6A+rW+L4AHf99KvxDjWSu1z9VI8SKNVmz4sk7buKt/6v9KI65qnm"
		crossorigin="anonymous"></script>
</body>
</html>