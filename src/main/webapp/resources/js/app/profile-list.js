function removeProfile(identification) {
	$.ajax({
		contentType : "text/plain",
	    url: 'removeProfile?identification=' + identification,
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
