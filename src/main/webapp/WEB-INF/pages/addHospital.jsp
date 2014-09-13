<html lang="en">
<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">
<link href="../resources/img/favicon.ico" rel="shortcut icon"
	type="image/vnd.microsoft.icon">
<title>PSL - Agregar Hospital</title>

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
			<jsp:param name="level" value="2" />
		</jsp:include>

		<div id="page-wrapper">

			<div class="container-fluid">
				<!-- Page Heading -->
				<div class="row">
					<div class="col-lg-12">
						<h1 class="page-header">
							Testing Dojo <small> Agregar hospital</small>
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
						<p> Este ejercicio tiene 2 select anidados (sin delay). Es necesario definir la jerarqu&iacute;a entre los Selects. Adem&aacute;s, el hospital no puede tener el mismo nombre.</p>
					</div>
				</div>

				<div class="row">
						<div class="col-md-4">
						<div class="form-group">
								<label for="code">C&oacute;digo<span
									class="text-danger">*</span></label> <input type="text"
									class="form-control"
									placeholder="Ingrese el c&oacute;digo">
							</div>
							<div class="form-group">
								<label for="name">Nombre completo<span
									class="text-danger">*</span></label> <input type="text"
									class="form-control"
									placeholder="Ingrese el nombre">
							</div>
							<div class="form-group">
								<label for="address">Direcci&oacute;n<span
									class="text-danger">*</span></label> <input type="text"
									class="form-control"
									placeholder="Ingrese los apellidos">
							</div>
							<div class="form-group">
								<label for="telephone">Tel&eacute;fono </label> <input
									type="text" class="form-control" placeholder="Ingrese el tel&eacute;fono">
							</div>
							<div class="form-group">
								<label for="department">Departamento </label> <select class="form-control"
									id="department" onchange="loadMunicipalitySelect();">
									<option value="Amazonas">Amazonas</option>
									<option value="Antioquia">Antioquia</option>
									<option value="Arauca">Arauca</option>
									<option value="Atl&aacute;ntico">Atl&aacute;ntico</option>
									<option value="Boyac&aacute;">Boyac&aacute;</option>
									<option value="Caldas">Caldas</option>
									<option value="Caquet&aacute;">Caquet&aacute;</option>
									<option value="Cauca">Cauca</option>
								</select>
							</div>
							<div class="form-group">
								<label for="municipality">Municipio </label> <select class="form-control"
									id="municipality">
								</select>
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

	<script src="../resources/js/app/add-hospital.js" charset="UTF-8"></script>

</body>

</html>