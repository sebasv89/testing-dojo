function submitForm(){
	sendData({
		name : $( "input[name='name']").val(),
		last_name: $( "input[name='last_name']").val(),
		telephone : $( "input[name='telephone']").val(),
		identification_type: $( "select[name='identification_type']").val(),
		identification : $( "input[name='identification']").val(),
		prepaid : $( "input[name='prepaid']").prop( "checked" ),
	});
}

function sendData(data) {
	  var name,
	      form = document.createElement("form"),
	      node = document.createElement("input");

	  form.action = "addPatient";

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