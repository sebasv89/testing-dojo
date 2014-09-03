<html lang="en">
<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">
<link href="../resources/img/favicon.ico" rel="shortcut icon"
	type="image/vnd.microsoft.icon">
<title>PSL - Agendar Cita</title>

<!-- Bootstrap Core CSS -->
<link href="../resources/css/bootstrap.min.css" rel="stylesheet">

<!-- Custom CSS -->
<link href="../resources/css/sb-admin.css" rel="stylesheet">

<!-- Morris Charts CSS -->
<link href="../resources/css/plugins/morris.css" rel="stylesheet">

<!-- JQUERY-UI CSS -->
<link href="../resources/css/plugins/jquery-ui.min.css" rel="stylesheet">

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

		<jsp:include page="header.jsp" >
			<jsp:param name="level" value="2" />
		</jsp:include>

		<div id="page-wrapper">

			<div class="container-fluid">
				<!-- Page Heading -->
				<div class="row">
					<div class="col-lg-12">
						<h1 class="page-header">
							Testing Dojo <small> Agendar cita</small>
						</h1>
						<!--                         <ol class="breadcrumb"> -->
						<!--                             <li class="active"> -->
						<!--                                 <i class="fa fa-dashboard"></i> Dashboard -->
						<!--                             </li> -->
						<!--                         </ol> -->
					</div>
				</div>
				<div class="panel panel-warning">
					<div class="panel-heading">
						<h3 class="panel-title">Informaci&oacute;n:</h3>
					</div>
					<div class="panel-body">
						<p> (esto si le toca
							llenarlo a sebas :P)...utulizar plugings para usar un calendar sencillo, las cedulas de doctor y paciente ya creados</p>
					</div>
				</div>

				<div class="row">
						<div class="col-md-4">
							<div class="form-group">
								<label for="datepicker">D&iacute;a de la cita<span
									class="text-danger">*</span></label> <input type="text"
									class="form-control" id="datepicker">
							</div>
							<div class="form-group">
								<label for="patient-identification">Documento de identidad del paciente<span
									class="text-danger">*</span>
								</label> <input type="text" class="form-control" 
									placeholder="Ingrese el documento de identidad del paciente">
							</div>
							<div class="form-group">
								<label for="doctor-identification">Documento de identidad del doctor<span
									class="text-danger">*</span>
								</label> <input type="text" class="form-control"
									placeholder="Ingrese el documento de identidad del doctor">
							</div>
							<div class="form-group">
								<label for="note">Observaciones
								</label> <textarea class="form-control"
									placeholder="" rows="3"></textarea>
							</div>

							<a style="margin-bottom: 20px;" onclick="submitForm()"
								class="btn btn-primary pull-right">Guardar</a>
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
	
	<script src="../resources/js/plugins/jqueryui/jquery-ui.min.js"></script>
	
	<script src="../resources/js/app/appointment-scheduling.js"></script>
	

</body>

</html>