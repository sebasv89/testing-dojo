<html lang="en">
<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">
<link href="../resources/img/favicon.ico" rel="shortcut icon"
	type="image/vnd.microsoft.icon">
<title>PSL - Agregar Paciente</title>

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

		<jsp:include page="header.jsp" >
			<jsp:param name="level" value="1" />
		</jsp:include>

		<div id="page-wrapper">

			<div class="container-fluid">
				<!-- Page Heading -->
				<div class="row">
					<div class="col-lg-12">
						<h1 class="page-header">
							Testing Dojo <small> Agregar paciente</small>
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
						<p> Intenta usar el tag name de selenium para este ejercicio(input, select, checkbox)</p>
					</div>
				</div>

				<div class="row">
						<div class="col-md-4">
							<div class="form-group">
								<label for="name">Nombre completo<span
									class="text-danger">*</span></label> <input type="text"
									class="form-control" name="name"
									placeholder="Ingrese el nombre">
							</div>
							<div class="form-group">
								<label for="last_name">Apellidos<span
									class="text-danger">*</span></label> <input type="text"
									class="form-control" name="last_name"
									placeholder="Ingrese los apellidos">
							</div>
							<div class="form-group">
								<label for="telephone">Tel&eacute;fono </label> <input
									type="text" class="form-control" name="telephone" placeholder="Ingrese el tel&eacute;fono">
							</div>
							<div class="form-group">
								<label for="identification_type">Tipo de documento de
									identidad </label> <select class="form-control"
									name="identification_type">
									<option value="C&eacute;dula de ciudadan&iacute;a">C&eacute;dula de ciudadan&iacute;a</option>
									<option value="C&eacute;dula de extranger&iacute;a">C&eacute;dula de extranger&iacute;a</option>
									<option value="Pasaportes">Pasaportes</option>
								</select>
							</div>
							<div class="form-group">
								<label for="identification">Documento de identidad<span
									class="text-danger">*</span>
								</label> <input type="text" class="form-control" name="identification"
									placeholder="Ingrese el documento de identidad">
							</div>
							<div class="checkbox">
							    <label>
							      <input type="checkbox" name="prepaid" autocomplete="off"> Salud prepagada
							    </label>
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

	<script src="../resources/js/app/add-patient.js"></script>

</body>

</html>