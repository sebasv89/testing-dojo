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
<title>PSL - Editar Perfil</title>

<!-- Bootstrap Core CSS -->
<link href="../resources/css/bootstrap.min.css" rel="stylesheet">

<!-- Custom CSS -->
<link href="../resources/css/sb-admin.css" rel="stylesheet">
<link href="../resources/css/plugins/jquery-ui.min.css" rel="stylesheet">
<!-- Morris Charts CSS -->
<link href="../resources/css/plugins/jquery.multiselect.css" rel="stylesheet">

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
							Testing Dojo <small> Editar perfil</small>
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
						<p>combinacion de id y xpath, plugin de multiselect(creado desde javascript, inputFile)</p>
					</div>
				</div>

				<div class="row">
						<div class="col-md-4">
							<div class="form-group">
								<label for="name">Nombre completo<span
									class="text-danger">*</span></label> <input type="text"
									class="form-control" id="name"
									placeholder="Ingrese el nombre" value="${profile.name}">
							</div>
							<div class="form-group">
								<label for="last_name">Apellidos</label> <input type="text"
									class="form-control" id="last_name"
									placeholder="Ingrese los apellidos" value="${profile.lastName}">
							</div>
							<div class="form-group">
								<label for="telephone">Tel&eacute;fono </label> <input
									type="text" class="form-control" name="telephone" placeholder="Ingrese el tel&eacute;fono" value="${profile.telephone}">
							</div>
							<div class="form-group">
								<label for="diseaseHistory">Historial de enfermedades: </label> <select class="form-control"
									id="diseaseHistory" autocomplete="off" multiple="multiple">
										<c:set var="contains" value="false" />
										<c:forEach var="disease" items="${profile.diseaseHistory}">
										  <c:if test="${disease eq 'Sarampión'}">
										    <c:set var="contains" value="true" />
										  </c:if>
										</c:forEach>
									<option ${contains? 'selected="selected"' : ''}>Sarampi&oacute;n</option>
										<c:set var="contains" value="false" />
										<c:forEach var="disease" items="${profile.diseaseHistory}">
										  <c:if test="${disease eq 'Otitis'}">
										    <c:set var="contains" value="true" />
										  </c:if>
										</c:forEach>
									<option ${contains? 'selected="selected"' : ''}>Otitis</option>
										<c:set var="contains" value="false" />
										<c:forEach var="disease" items="${profile.diseaseHistory}">
										  <c:if test="${disease eq 'Varicela'}">
										    <c:set var="contains" value="true" />
										  </c:if>
										</c:forEach>
									<option ${contains? 'selected="selected"' : ''}>Varicela</option>
										<c:set var="contains" value="false" />
										<c:forEach var="disease" items="${profile.diseaseHistory}">
										  <c:if test="${disease eq 'Varicela'}">
										    <c:set var="contains" value="true" />
										  </c:if>
										</c:forEach>
									<option ${contains? 'selected="selected"' : ''}>C&oacute;lera</option>
										<c:set var="contains" value="false" />
										<c:forEach var="disease" items="${profile.diseaseHistory}">
										  <c:if test="${disease eq 'Gripa'}">
										    <c:set var="contains" value="true" />
										  </c:if>
										</c:forEach>
									<option ${contains? 'selected="selected"' : ''}>Gripa</option>
										<c:set var="contains" value="false" />
										<c:forEach var="disease" items="${profile.diseaseHistory}">
										  <c:if test="${disease eq 'Gastritis'}">
										    <c:set var="contains" value="true" />
										  </c:if>
										</c:forEach>
									<option ${contains? 'selected="selected"' : ''}>Gastritis</option>
										<c:set var="contains" value="false" />
										<c:forEach var="disease" items="${profile.diseaseHistory}">
										  <c:if test="${disease eq 'Diarrea'}">
										    <c:set var="contains" value="true" />
										  </c:if>
										</c:forEach>
									<option ${contains? 'selected="selected"' : ''}>Diarrea</option>
								</select>
							</div>
							
							
							<div class="form-group">
								<label for="identification">Documento de identidad<span
									class="text-danger">*</span>
								</label> <input type="text" class="form-control" id="identification"
									placeholder="Ingrese el documento de identidad" value="${profile.identification}">
							</div>
							<div class="form-group">
							    <label class="sr-only" for="profileImage">Foto de perfil</label>
							    <input type="file" title="Buscar archivo" id="profileImage" class="btn btn-default">
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
	<script src="../resources/js/plugins/multiselect/jquery.multiselect.js"></script>
	<script src="../resources/js/app/edit-profile.js"></script>

</body>

</html>