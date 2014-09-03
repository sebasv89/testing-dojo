function submitForm(){
	sendData({
		roomNumber : $( "input[name='name']").val(),
		roomType: $('input[name=optionsRadios]:checked').val(),
		isDoubleRoom : $( '.simple .checkbox input[type="checkbox"]').prop( "checked"),
		hasDirecTV : $( '.luxury .checkbox input[type="checkbox"]').prop( "checked")

	});
}

function simpleSelected(evt){
    //enable checkbox
	$('.simple .checkbox').removeClass('disabled');
	$('.simple .checkbox input[type="checkbox"]').removeAttr('disabled');
	//disable checkbox
	$('.luxury .checkbox').addClass('disabled');
	$('.luxury .checkbox input[type="checkbox"]').attr('disabled', 'disabled');
	$('.luxury .checkbox input[type="checkbox"]').attr('checked', false);

}

function luxurySelected(evt){
	//enable checkbox
	$('.luxury .checkbox').removeClass('disabled');
	$('.luxury .checkbox input[type="checkbox"]').removeAttr('disabled');
	//disable checkbox
	$('.simple .checkbox').addClass('disabled');
	$('.simple .checkbox input[type="checkbox"]').attr('disabled', 'disabled');
	$('.simple .checkbox input[type="checkbox"]').attr('checked', false);
}


function isNumberKey(evt){
    var charCode = (evt.which) ? evt.which : event.keyCode
    if (charCode > 31 && (charCode < 48 || charCode > 57))
        return false;
    return true;
}

function sendData(data) {
	  var name,
	      form = document.createElement("form"),
	      node = document.createElement("input");

	  form.action = "addRoom";

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