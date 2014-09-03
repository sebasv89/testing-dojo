$(function() {
	//init calendar
    $( "#datepicker" ).datepicker();
});

function submitForm(){
	sendData({
		date : $('#datepicker').val(),
		doctorsIdentification: $($('label[for="doctor-identification"]').siblings().get(0)).val(),
		patientsIdentification : $($('label[for="patient-identification"]').siblings().get(0)).val(),
		note:  $($('label[for="note"]').siblings().get(0)).val()
	});
}

function sendData(data) {
	  var name,
	      form = document.createElement("form"),
	      node = document.createElement("input");

	  form.action = "appointmentScheduling";

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