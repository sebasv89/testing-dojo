<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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

		<jsp:include page="header.jsp">
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
				<c:if test="${not empty errorList}">
					<div class="panel panel-danger">
						<div class="panel-heading">
							<h3 class="panel-title">Error:</h3>
						</div>
						<div class="panel-body">
							<p>
								No se pudo guardar debido a:<br />
								<c:forEach items="${errorList}" var="error">
									<span class="text-danger"><c:out value="${error}" /></span>
									<br />
								</c:forEach>
							</p>

						</div>
					</div>
				</c:if>
				<c:if test="${empty errorList}">
					<div class="panel panel-success">
						<div class="panel-heading">
							<h3 class="panel-title">Guardado:</h3>
						</div>
						<div class="panel-body">
							<p>
								Datos guardados correctamente.
							</p>

						</div>
					</div>
				</c:if>
				<div class="row">
					<div class="col-md-4">
						<table class="table table-bordered table-striped">
							<tbody>
								<tr>
									<td><strong>Nombre</strong></td>
									<td><span class="patientName">${patient.name}</span></td>
								</tr>
								<tr>
									<td><strong>Apellidos</strong></td>
									<td><span class="patientLastName">${patient.lastName}</span></td>
								</tr>
								<tr>
									<td><strong>Tel&eacute;fono</strong></td>
									<td><span class="patientTelephone">${patient.telephone}</span></td>
								</tr>
								<tr>
									<td><strong>Tipo de documento de identidad</strong></td>
									<td><span class="patientId">${patient.identificationType}</span></td>
								</tr>
								<tr>
									<td><strong>Documento de identidad</strong></td>
									<td><span class="patientId">${patient.identification}</span></td>
								</tr>
								<tr>
									<td><strong>Salud prepagada</strong></td>
									<td>${(patient.hasPrepaid)? '<i class="fa fa-fw fa-check"></i>': '<i class="fa fa-fw fa-times"></i>'}</td>
								</tr>
							</tbody>
						</table>
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