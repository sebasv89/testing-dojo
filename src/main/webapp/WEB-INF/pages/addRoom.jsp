<html lang="en">
<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">
<link href="../resources/img/favicon.ico" rel="shortcut icon"
	type="image/vnd.microsoft.icon">
<title>PSL - Agregar Habitaci&oacute;n</title>

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
			<jsp:param name="level" value="1" />
		</jsp:include>

		<div id="page-wrapper">

			<div class="container-fluid">
				<!-- Page Heading -->
				<div class="row">
					<div class="col-lg-12">
						<h1 class="page-header">
							Testing Dojo <small> Agregar habitaci&oacute;n</small>
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
						<p>Esta pantalla permite agregar habitaciones a la aplicaci&oacute;n. No se permiten caracteres alfab&eacute;ticos en el c&oacute;digo de la habitaci&oacute;n.</p>
						<p>DirecTV solo se permite en habitaciones de lujo. Sin embargo las habitaciones de lujo no permiten ser dobles. El n&uacute;mero de habitaci&oacute;n debe ser &uacute;nico.</p>
						<p>Una vez se intente crear una habitaci&oacute;n, en la siguiente pantalla se presentan los mensajes de &eacute;xito o de error, junto con una confirmaci&oacute;n de los datos ingresados. </p>
						<p>A menos que se le haya indicado algo diferente, dise&ntilde;e y automatice los casos de pruebas que considere convenientes para esta pantalla.</p>
					</div>
				</div>

				<div class="row">
					<div class="col-md-4">
						<div class="form-group">
							<label for="name">N&uacute;mero de habitaci&oacute;n<span
								class="text-danger">*</span></label> <input type="text"
								onkeypress="return isNumberKey(event)" class="form-control"
								name="name" placeholder="Ingrese el n&uacute;mero de habitaci&oacute;n">
						</div>
						<p>Tipo de habitaci&oacute;n:</p>
						<div class="radio">
							<label> <input type="radio" name="optionsRadios"
								class="radio" value="Habitaci&oacute;n sencilla" checked onclick="simpleSelected();"> Habitaci&oacute;n
								sencilla
							</label>
						</div>
						<div class="radio">
							<label> <input type="radio" name="optionsRadios" onclick="luxurySelected();"
								class="radio" value="Habitaci&oacute;n de lujo"> Habitaci&oacute;n de lujo
							</label>
						</div>
						<div class="radio disabled">
							<label> <input type="radio" name="optionsRadios"
								class="radio" value="option3" disabled> Personalizada
								(sin implementar)
							</label>
						</div>



						<a style="margin-bottom: 20px;" onclick="submitForm();"
							class="btn btn-primary pull-right">Guardar</a>
					</div>
					<div class="col-md-4">
						<p>Caracteristicas de la habitaci&oacute;n</p>
						<div class="simple">
							<div class="checkbox">
								<label> <input type="checkbox" value=""> Habitaci&oacute;n doble
								</label>
							</div>
						</div>
						<div class="luxury">
							<div class="checkbox disabled">
								<label> <input type="checkbox" value="" disabled> DirecTV
								</label>
							</div>
						</div>
					</div>
					<div class="col-md-4"></div>
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

	<script src="../resources/js/app/add-room.js"></script>

</body>

</html>