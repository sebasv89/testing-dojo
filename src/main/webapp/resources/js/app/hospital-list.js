function removeHospital(code) {
	$.ajax({
		contentType : "text/plain",
	    url: 'removeHospital?code=' + code,
	    type: 'DELETE',
	    success: function(result) {
	        alert("Borrado exitosamente");
	        location.reload();
	    },
	    error: function(result){
	    	alert("Error en el borrado");
	    }
	});
}
