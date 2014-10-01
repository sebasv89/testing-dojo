<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
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
			<jsp:param name="level" value="3" />
		</jsp:include>

		<div id="page-wrapper">

			<div class="container-fluid">
				<!-- Page Heading -->
				<div class="row">
					<div class="col-lg-12">
						<h1 class="page-header">
							Testing Dojo <small> Lista de perfiles</small>
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
						<p>recorrer la tabla en busca del perfil recien creado, dropdown, alerts, ajax (para remover) y link para EDITAR (otro punto distinto)</p>
					</div>
				</div>
				<div class="row">
					<div class="col-md-12">
						<table class="table table-bordered table-striped">
							<thead>
								<tr>
									<td><strong>Image</strong></td>
									<td><strong>Identificaci&oacute;n</strong></td>
									<td><strong>Nombre</strong></td>
									<td><strong>Apellido</strong></td>
									<td><strong>Tel&eacute;fono</strong></td>
									<td><strong>Enfermedades</strong></td>
								</tr>
							</thead>
							<tbody>
								<c:forEach var="entry" items="${profileList}">
									<tr>
										<td><img alt="profile image" src="${entry.value.profileImage}" width="50px" height="50px"></td>
										<td>${entry.value.identification}</td>
										<td>${entry.value.name}</td>
										<td>${entry.value.lastName}</td>
										<td>${entry.value.telephone}</td>
										<td>${fn:join(entry.value.diseaseHistory, ", ")}</td>
										<td>
											<div class="dropdown">
												<button class="btn btn-default dropdown-toggle"
													type="button" id="dropdownMenu1" data-toggle="dropdown">
													Dropdown <span class="caret"></span>
												</button>
												<ul class="dropdown-menu" role="menu"
													aria-labelledby="dropdownMenu1">
													<li role="presentation"><a role="menuitem"
														tabindex="-1" href="editProfile?identification=${entry.value.identification}">Editar</a></li>
													<li role="presentation"><a role="menuitem"
														tabindex="-1" onclick="removeProfile('${entry.value.identification}')">Eliminar</a></li>
													<li role="presentation" class="divider"></li>
													<li role="presentation"><a role="menuitem"
														tabindex="-1" href="#">Cancel</a></li>
												</ul>
											</div>
										</td>
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
	
	<script src="../resources/js/app/profile-list.js" charset="UTF-8"></script>

</body>

</html>