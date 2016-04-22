	<html lang="en">
<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">
<link href="../resources/img/favicon.ico" rel="shortcut icon"
	type="image/vnd.microsoft.icon">
<title>Agregar Doctor</title>

<!-- Bootstrap Core CSS -->
<link href="../resources/css/bootstrap.min.css" rel="stylesheet">

<!-- Custom CSS -->
<link href="../resources/css/sb-admin.css" rel="stylesheet">

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
			<jsp:param name="level" value="1" />
		</jsp:include>

       	<div id="page-wrapper">

			<div class="container-fluid">
				<!-- Page Heading -->
				<div class="row">
					<div class="col-lg-12">
						<h1 class="page-header">
							<small> Agregar doctor</small>
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
						<p>Esta pantalla permite agregar doctores a la aplicaci&oacute;n. El nombre y el apellido es obligatorio. El documento de identidad debe ser &uacute;nico.</p>
						<p>Una vez se intente crear un doctor, en la siguiente pantalla se presentan los mensajes de &eacute;xito o de error, junto con una conformaci&oacute;n de los datos ingresados. </p>
						<p>A menos que se le haya indicado algo diferente, dise&ntilde;e y automatice los casos de pruebas que considere convenientes para esta pantalla.</p>
					</div>
				</div>

				<div class="row">
						<div class="col-md-4">
							<div class="form-group">
								<label for="name">Nombre completo<span
									class="text-danger">*</span></label> <input type="text"
									class="form-control" id="name"
									placeholder="Ingrese el nombre">
							</div>
							<div class="form-group">
								<label for="last_name">Apellidos<span
									class="text-danger">*</span></label> <input type="text"
									class="form-control" id="last_name"
									placeholder="Ingrese los apellidos">
							</div>
							<div class="form-group">
								<label for="telephone">Tel&eacute;fono </label> <input
									type="text" class="form-control" id="telephone" placeholder="Ingrese el tel&eacute;fono">
							</div>
							<div class="form-group">
								<label for="identification_type">Tipo de documento de
									identidad </label> <select class="form-control"
									id="identification_type">
									<option value="C&eacute;dula de ciudadan&iacute;a">C&eacute;dula de ciudadan&iacute;a</option>
									<option value="C&eacute;dula de extranger&iacute;a">C&eacute;dula de extranger&iacute;a</option>
									<option value="Pasaportes">Pasaportes</option>
								</select>
							</div>
							<div class="form-group">
								<label for="identification">Documento de identidad<span
									class="text-danger">*</span>
								</label> <input type="text" class="form-control" id="identification"
									placeholder="Ingrese el documento de identidad">
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

	<script src="../resources/js/app/add-doctor.js"></script>

</body>

</html>