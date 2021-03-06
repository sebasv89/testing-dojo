<html lang="en">

<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">
<link href="../resources/img/favicon.ico" rel="shortcut icon"
	type="image/vnd.microsoft.icon">
<title>PSL - Testing Dojo</title>

<!-- Bootstrap Core CSS -->
<link href="../resources/css/bootstrap.min.css" rel="stylesheet">

<!-- Custom CSS -->
<link href="../resources/css/sb-admin.css" rel="stylesheet">

<!-- Morris Charts CSS -->
<link href="../resources/css/plugins/morris.css" rel="stylesheet">

<!-- Custom Fonts -->
<link href="../resources/font-awesome-4.1.0/css/font-awesome.min.css"
	rel="stylesheet" type="text/css">

<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>

<body>

	<div id="wrapper">

		<jsp:include page="header.jsp">
			<jsp:param name="level" value="0" />
		</jsp:include>

		<div id="page-wrapper">

			<div class="container-fluid">
				<!-- Page Heading -->
				<div class="row">
					<div class="col-lg-12">
						<h1 class="page-header">
							Testing Dojo <small>Ejercicios propuestos</small>
						</h1>
						<!--                         <ol class="breadcrumb"> -->
						<!--                             <li class="active"> -->
						<!--                                 <i class="fa fa-dashboard"></i> Dashboard -->
						<!--                             </li> -->
						<!--                         </ol> -->
					</div>
				</div>
				<div class="row">
					<div class="col-md-12">
						<div class="panel panel-default">
							<div class="panel-heading">
								<h3 class="panel-title">
									<i class="fa fa-star fa-fw"></i> F&aacute;cil
								</h3>
							</div>

							<div class="panel-body">
								<div class="row">
									<div class="col-md-4">
										<div class="list-group">
											<a href="addDoctor" class="list-group-item"><i
												class="fa fa-fw fa-tasks"></i> Agregar doctor<i
												class="fa fa-arrow-circle-right pull-right text-success"></i></a>
											<a href="addPatient" class="list-group-item"><i
												class="fa fa-fw fa-tasks"></i> Agregar paciente<i
												class="fa fa-arrow-circle-right pull-right text-success"></i></a>
											<a href="addRoom" class="list-group-item"><i
												class="fa fa-fw fa-tasks"></i> Agregar Habitaci&oacute;n<i
												class="fa fa-arrow-circle-right pull-right text-success"></i></a>
											<a href="doctorList" class="list-group-item"><i
												class="fa fa-fw fa-tasks"></i> Lista de doctores<i
												class="fa fa-arrow-circle-right pull-right text-success"></i></a>
										</div>
									</div>
									<div class="col-md-4"></div>
									<div class="col-md-4"></div>
								</div>

								<div class="text-right">
									<a href="#">Ver m&aacute;s... <i
										class="fa fa-arrow-circle-right"></i></a>
								</div>
							</div>
						</div>
						<div class="panel panel-default">
							<div class="panel-heading">
								<h3 class="panel-title">
									<i class="fa fa-star fa-fw"></i><i class="fa fa-star fa-fw"></i>
									Medio
								</h3>
							</div>

							<div class="panel-body">
								<div class="row">
									<div class="col-md-4">
										<div class="list-group">
											<a href="addHospital" class="list-group-item"><i
												class="fa fa-fw fa-tasks"></i> Agregar hospital<i
												class="fa fa-arrow-circle-right pull-right text-success"></i></a>
											<a href="appointmentScheduling" class="list-group-item"><i
												class="fa fa-fw fa-tasks"></i> Agendar cita<i
												class="fa fa-arrow-circle-right pull-right text-success"></i></a>
											<a href="profileConfig" class="list-group-item"><i
												class="fa fa-fw fa-tasks"></i> Configuraci&oacute;n de
												perfil<i
												class="fa fa-arrow-circle-right pull-right text-success"></i></a>
<!-- 											<a href="updatePersonalInfo" class="list-group-item"><i -->
<!-- 												class="fa fa-fw fa-tasks"></i> Datos personales<i -->
<!-- 												class="fa fa-arrow-circle-right pull-right text-success"></i></a> -->
										</div>
									</div>
									<div class="col-md-4"></div>
									<div class="col-md-4"></div>
								</div>

								<div class="text-right">
									<a href="#">Ver m&aacute;s... <i
										class="fa fa-arrow-circle-right"></i></a>
								</div>
							</div>
						</div>
						<div class="panel panel-default">
							<div class="panel-heading">
								<h3 class="panel-title">
									<i class="fa fa-star fa-fw"></i><i class="fa fa-star fa-fw"></i><i
										class="fa fa-star fa-fw"></i> Dif&iacute;cil
								</h3>
							</div>

							<div class="panel-body">
								<div class="row">
									<div class="col-md-4">
										<div class="list-group">
											<a href="hospitalList" class="list-group-item"><i
												class="fa fa-fw fa-tasks"></i>Lista de Hospital<i
												class="fa fa-arrow-circle-right pull-right text-success"></i></a>
											<a href="searchDoctor" class="list-group-item"><i
												class="fa fa-fw fa-tasks"></i> Buscar doctor<i
												class="fa fa-arrow-circle-right pull-right text-success"></i></a>
											<a href="arrangeAppointments" class="list-group-item"><i
												class="fa fa-fw fa-tasks"></i> Ordenar citas<i
												class="fa fa-arrow-circle-right pull-right text-success"></i></a>
										</div>
									</div>
									<div class="col-md-4"></div>
									<div class="col-md-4"></div>
								</div>

								<div class="text-right">
									<a href="#">Ver m&aacute;s... <i
										class="fa fa-arrow-circle-right"></i></a>
								</div>
							</div>
						</div>
					</div>
				</div>
				<!-- /.row -->

			</div>
			<!-- /.container-fluid -->

		</div>
		<!-- /#page-wrapper -->

	</div>
	<!-- /#wrapper -->

	<!-- jQuery Version 1.11.0 -->
	<script src="../resources/js/jquery-1.11.0.js"></script>

	<!-- Bootstrap Core JavaScript -->
	<script src="../resources/js/bootstrap.min.js"></script>

</body>

</html>