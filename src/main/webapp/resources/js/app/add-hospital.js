var municipalityMap = {};
municipalityMap["Amazonas"] = ["Puerto Nariño", "Leticia"];
municipalityMap["Antioquia"] = ["Medellín", "Abejorral", "Armenia"];
municipalityMap["Arauca"] = ["Cravo Norte", "Fortul"];
municipalityMap["Atlántico"] = ["Baranoa", "Galapa"];
municipalityMap["Boyacá"] = ["Tunja", "Almeida"];
municipalityMap["Caldas"] = ["Manizales", "Aguadas"];
municipalityMap["Caquetá"] = ["Florencia", "El Paujil", "Solano", "Solita"];
municipalityMap["Cauca"] = ["Popayán", "Almaguer", "Caldono"];
$( document ).ready(function() {
	loadMunicipalitySelect();
});
function submitForm(){
	sendData({
		code : $($('label[for="code"]').siblings().get(0)).val(),
		name : $($('label[for="name"]').siblings().get(0)).val(),
		address: $($('label[for="address"]').siblings().get(0)).val(),
		telephone : $($('label[for="telephone"]').siblings().get(0)).val(),
		department: $('#department').val(),
		municipality : $('#municipality').val()
	});
}

function sendData(data) {
	  var name,
	      form = document.createElement("form"),
	      node = document.createElement("input");

	  form.action = "addHospital";

	  for(name in data) {
	    node.name  = name;
	    node.value = data[name].toString();
	    form.appendChild(node.cloneNode());
	  }

	  // To be sent, the form needs to be attached to the main document.
	  form.style.display = "none";
	  document.body.appendChild(form);
	  form.method = "post";
	  form.submit();

	  // But once the form is sent, it's useless to keep it.
	  document.body.removeChild(form);
}

function loadMunicipalitySelect(){
	$('#municipality').empty();
	$.each(municipalityMap[$('#department').val()], function(key, value) {   
	     $('#municipality')
	         .append($("<option></option>")
	         .attr("value",value)
	         .text(value)); 
	});
}