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
<title>PSL - Lista de Doctores</title>

<!-- Bootstrap Core CSS -->
<link href="../resources/css/bootstrap.min.css" rel="stylesheet">

<!-- Custom CSS -->
<link href="../resources/css/sb-admin.css" rel="stylesheet">

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

		<jsp:include page="header.jsp">
			<jsp:param name="level" value="3" />
		</jsp:include>

		<div id="page-wrapper">

			<div class="container-fluid">
				<!-- Page Heading -->
				<div class="row">
					<div class="col-lg-12">
						<h1 class="page-header">
							Testing Dojo <small> Busqueda de doctores</small>
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
						<p>recorrer la tabla en busca del doctor por query</p>
					</div>
				</div>
				<form class="form-inline" role="form">
					<div class="form-group">
						<div class="input-group">
							<div class="input-group-addon">
								<i class="glyphicon glyphicon-search"></i>
							</div>
							<input id="typeahead" type="text" class="form-control"
								placeholder="Buscar...">
						</div>
					</div>
					<a class="btn btn-default" onclick="performSearch();">Buscar</a>
				</form>
				<div class="row">
					<div class="col-md-12">
						<table class="table table-bordered table-striped">
							<thead>
								<tr>
									<td><strong>Documento de identidad</strong></td>
									<td><strong>Tipo de documento de identidad</strong></td>
									<td><strong>Nombre</strong></td>
									<td><strong>Apellidos</strong></td>
									<td><strong>Tel&eacute;fono</strong></td>
								</tr>
							</thead>
							<tbody>
								<c:forEach var="doctor" items="${doctorList}">
									<tr>
										<td>${doctor.identification}</td>
										<td>${doctor.identificationType}</td>
										<td>${doctor.name}</td>
										<td>${doctor.lastName}</td>
										<td>${doctor.telephone}</td>
									</tr>
								</c:forEach>
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

	<script src="../resources/js/plugins/typeahead/typeahead.js"></script>

	<script src="../resources/js/plugins/jqueryui/jquery-ui.min.js"></script>

	<script type="text/javascript">
		$(document).ready(function() {
			// use this hash to cache search results
			$('#typeahead').autocomplete({
			    source: function (request, response) {
			        $.get("getDoctorList", {
			            query: request.term
			        }, function (data) {
			            // assuming data is a JavaScript array such as
			            // ["one@abc.de", "onf@abc.de","ong@abc.de"]
			            // and not a string
			            response(data);
			        });
			    }
			});
		});
		
		function performSearch(){
			var query = $('#typeahead').val();
			window.location.href = "searchDoctor?query=" + query;
		}
	</script>
</body>

</html>