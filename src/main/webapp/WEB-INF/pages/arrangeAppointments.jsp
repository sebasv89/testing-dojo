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
<style type="text/css">
/* show the move cursor as the user moves the mouse over the panel header.*/
#draggablePanelList .panel-heading {
	cursor: move;
}
</style>
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
							Testing Dojo <small> Ordenar citas</small>
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
						<p>ordenar la lista de citas (ajax, modales, drag and drop
							(necesita crear citas))</p>
					</div>
				</div>
				<div class="row">
					<div class="col-md-12">
						<ul id="draggablePanelList" class="list-unstyled">
							<c:forEach items="${appointmentList}" var="appointment"
								varStatus="status">
								<li class="panel panel-info" data-index="${status.count}">
									<div class="panel-heading">${appointment.date}-
										${appointment.patientsIdentification}</div>
									<div class="panel-body">${appointment.doctorsIdentification}
										: ${appointment.note}</div>
								</li>
							</c:forEach>
						</ul>
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

	<div class="modal fade" id="modal">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">
						<span aria-hidden="true">&times;</span><span class="sr-only">Close</span>
					</button>
					<h4 class="modal-title" id="modal_title"></h4>
				</div>
				<div class="modal-body">
					<p id="modal_content"></p>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal" onclick="location.reload();">Close</button>
<!-- 					<button type="button" class="btn btn-primary">Save changes</button> -->
				</div>
			</div>
			<!-- /.modal-content -->
		</div>
		<!-- /.modal-dialog -->
	</div>
	<!-- /.modal -->

	<!-- jQuery Version 1.11.0 -->
	<script src="../resources/js/jquery-1.11.0.js"></script>

	<!-- Bootstrap Core JavaScript -->
	<script src="../resources/js/bootstrap.min.js"></script>

	<script src="../resources/js/plugins/jqueryui/jquery-ui.min.js"></script>

	<script type="text/javascript">
		jQuery(function($) {
			var panelList = $('#draggablePanelList');

			panelList.sortable({
				// Only make the .panel-heading child elements support dragging.
				// Omit this to make then entire <li>...</li> draggable.
				handle : '.panel-heading',
				update : function() {
					$('.panel', panelList).each(function(index, elem) {
						var $listItem = $(elem), newIndex = $listItem.index();

						// Persist the new indices.
					});
				}
			});
		});
		function submitForm() {
			var indexArray = new Array();
			$('#draggablePanelList .panel').each(function(index, elem) {
				var $listItem = $(elem);
				indexArray[$listItem.index()] = $listItem.attr('data-index');

				// Persist the new indices.
			});
			$.ajax({
				type : "POST",
				url : 'arrangeAppointments',
				data : JSON.stringify(indexArray),
				dataType : 'text/plain',
				headers : {
					'Content-Type' : 'application/json'
				},
				success : function(result) {
					$('#modal_title').html('Guardar Cambios');
					$('#modal_content').html('Guardado exitosamente');
					$('#modal').modal('show');
					
				},
				error : function(result) {
					if(result.statusText == "OK"){
						$('#modal_title').html('Guardar Cambios');
						$('#modal_content').html('Guardado exitosamente');
						$('#modal').modal('show');
					}else{
						$('#modal_title').html('Guardar Cambios');
						$('#modal_content').html('Hubo un error al intentar guardar.');
						$('#modal').modal('show');
					}
				}

			});
		}
	</script>
</body>

</html>