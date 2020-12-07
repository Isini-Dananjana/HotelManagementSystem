function addSupplierValidation() {
    
    var companyName =  document.getElementById("companyName").value;
    var contactPerson =  document.getElementById("contactPerson").value;
    var phoneOne =  document.getElementById("phoneOne").value;
    var phoneTwo =  document.getElementById("phoneTwo").value;
    var fax =  document.getElementById("fax").value;
    var email =  document.getElementById("t1").value;
    var address =  document.getElementById("address").value;
    var creditLimit =  document.getElementById("creditLimit").value;
    var note =  document.getElementById("note").value;
   
    var phoneno = /^\+?([0-9]{2})\)?[-. ]?([0-9]{4})[-. ]?([0-9]{4})$/;
    var emailval = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;
   
  
  var Error = 0;

  if ( companyName == null || companyName == "") {
    document.getElementById("companyNameError").innerText = " *Requiered Company Name";
    Error++;
  } else {
    document.getElementById("companyNameError").innerText = "";
  }

  if ( contactPerson == null || contactPerson == "") {
    document.getElementById("contactPersonError").innerText = " *Requiered Contact Person";
    Error++;
  } else {
    document.getElementById("contactPersonError").innerText = "";
  }
  if ( phoneOne == null || phoneOne == "") {
    document.getElementById("phoneOneError").innerText = " *Requiered Phone Number 01";
    Error++;
  } else if( !phoneOne.match(phoneno) ) {
    document.getElementById("phoneOneError").innerText = "*Required Valid Phone Number";
    Error++;
  } else{
    document.getElementById("phoneOneError").innerText = "";
  }

  if ( phoneTwo == null || phoneTwo == "") {
    document.getElementById("phoneTwoError").innerText = " *Requiered Phone Number 02";
    Error++;
  } else if( !phoneTwo.match(phoneno) ) {
    document.getElementById("phoneTwoError").innerText = "*Required Valid Phone Number";
    Error++;
  } else{
    document.getElementById("phoneTwoError").innerText = "";
  }

  if ( fax == null || fax == "") {
    document.getElementById("faxError").innerText = " *Requiered Fax";
    Error++;
  }else if( !fax.match(phoneno) ) {
    document.getElementById("faxError").innerText = "*Required Valid Fax";
    Error++;
  } else{
    document.getElementById("faxError").innerText = "";
  }

  if ( email == null || email == "") {
    document.getElementById("emailError").innerText = " *Requiered Email";
    Error++;
  }else if( !email.match(emailval) ) {
    document.getElementById("emailError").innerText = "*Required Valid Email";
    Error++;
  } else{
    document.getElementById("emailError").innerText = "";
  }

 //  -------------------------------------------------
 if ( address == null || address == "") {
    document.getElementById("addressError").innerText = " *Requiered Address";
    Error++;
  } else {
    document.getElementById("addressError").innerText = "";
  }
  
  if ( creditLimit == null || creditLimit == "") {
    document.getElementById("creditLimitError").innerText = " *Requiered Credit Limit";
    Error++;
  } else {
    document.getElementById("creditLimitError").innerText = "";
  }

  if ( note == null || note == "") {
    document.getElementById("noteError").innerText = " *Requiered Note";
    Error++;
  } else {
    document.getElementById("noteError").innerText = "";
  }

   if (Error > 0) 
   return  false;
   else 
    return true;
 }