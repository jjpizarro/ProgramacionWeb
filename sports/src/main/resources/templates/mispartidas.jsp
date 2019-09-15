<!DOCTYPE html>
<html xmlns:th="http://www.thymeleaf.org">
<head th:replace="layout/base::head('Mis partida','estilos')">

</head>
<body>
	<header th:replace="layout/base::header('Mis partida')"></header>

	<div class="wrapper">
		<div class="container-fluid py-5">
			<div class="row">
				<div class="col-md-12">

					<div class="row">
						<div class="col-md-6 mx-auto">
							<div class="card border-secondary">
								<div class="card-header">
									<h3 class="mb-0 my-2">Mis partidas</h3>
								</div>
								<div class="card-body">
									
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

	</div>

	<footer th:replace="layout/base::footer()"></footer>
</body>
</html>