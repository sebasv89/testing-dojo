var filePath = "";
$(function() {
	$("#diseaseHistory").multiselect({minWidth: 'auto'});
	$('input[type="file"]').val('');
	$('input[type="file"]').change( function(event) {
		filePath = URL.createObjectURL(event.target.files[0]);
	});
});

function submitForm(){
	var diseaseHistory = new Array();
	var multiselectArray = $("#diseaseHistory").multiselect("getChecked");
	for (i = 0; i < multiselectArray.length; i++) { 
	    diseaseHistory[i] = multiselectArray[i].defaultValue;
	}
	sendData({
		name : $('#name').val(),
		lastName : $('#last_name').val(),
		telephone: $('input[name="telephone"]').val(),
		diseaseHistory : diseaseHistory,
		identification : $('#identification').val(),
		profileImage:  filePath
	});
}

function sendData(data) {
	  var name,
	      form = document.createElement("form"),
	      node = document.createElement("input");

	  form.action = "editProfile";

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