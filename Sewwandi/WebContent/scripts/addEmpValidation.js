/**
 * 
 */function validateNewEmp() {
    document.getElementById("fnameErro").innerHTML = ""; 
    document.getElementById("lnameErro").innerText = ""; 
    document.getElementById("dateErro").innerHTML = "";
    document.getElementById("genderErro").innerHTML = "";
    document.getElementById("phoneErro").innerHTML = "";
    document.getElementById("emailErro").innerHTML = "";
    document.getElementById("addressErro").innerHTML = "";
    document.getElementById("sectionErro").innerHTML = "";
    document.getElementById("desgnationErro").innerHTML = "";
    document.getElementById("EmpTypeErro").innerHTML = "";
    document.getElementById("bSalErro").innerHTML = "";


    
    var F_name =document.getElementById("fname");
    var L_name  =document.getElementById("lname");
    var Dob = document.getElementById("dob");
    var Male = document.getElementById("male");
    var Female =document.getElementById("female");
    var P_no  =document.getElementById("pNo");
    var Email = document.getElementById("email");
    var Address = document.getElementById("address");
    var Section = document.getElementById("section");
    var Designation = document.getElementById("designation");
    var EmpType = document.getElementById("empType");
    var Basic = document.getElementById("bSal");


    
    
    var emailValidate = /^[\w\-\.\+]+\@[a-zA-Z0-9\.\-]+\.[a-zA-z0-9]{2,4}$/;  
    var numerValidate = /^[0-9]+$/; 
    var alphaValidate = /^[a-zA-Z]+$/; 
    
//  first name  part
    
    if (F_name.value.length == 0)
        {
            document.getElementById("fnameErro").innerHTML = "*Please Input First Name*";
            F_name.focus();
            return false;
            
            
        }
       
    if(F_name.value.length != 0 && !F_name.value.match(alphaValidate))
        {        

            document.getElementById("fnameErro").innerText = "*First Name Should Have Capital Letters*"; 
            F_name.focus();  
            return false;
              
        } 
    
//  last name  part    
    
    if (L_name.value.length == 0)
        {
            document.getElementById("lnameErro").innerHTML = "*Please Input Last Name*";
            L_name.focus();
            return false;
        }
    if(L_name.value.length != 0 && !L_name.value.match(alphaValidate) )
        {
            document.getElementById("lnameErro").innerHTML = "*Last Name Should Have Capital Letters*";
            L_name.focus();
            return false;
        }
    
//  date of birth   part
    
    if (Dob.value.length == 0)
        {
            document.getElementById("dateErro").innerHTML = "*Please Input Birthday*";
            Dob.focus();
            return false;
        }
    
//  gender   part
    
    if (Male.checked==false && Female.checked==false)
        {
            document.getElementById("genderErro").innerHTML = "*Please Choose Gender Type*";
            Male.focus();
            return false;
        }
    
 //  phone number  part
    
    if (P_no.value.length == 0)
        {
            document.getElementById("phoneErro").innerHTML = "*Please Input Phone Number*";
            P_no.focus();
            return false;
        }
    if(P_no.value.length != 0 && !P_no.value.match(numerValidate)   )
        {
            document.getElementById("phoneErro").innerHTML = "*Enter Valid Phone Number*";
            P_no.focus();
            return false;
        }
    
 //  email  part
    
    if (Email.value.length == 0)
        {
            document.getElementById("emailErro").innerHTML = "*Please Input Email*";
            Email.focus();
            return false;
        }
    if(Email.value.length != 0 && !Email.value.match(emailValidate) )
        {
            document.getElementById("emailErro").innerHTML = "*Enter Valid Email*";
            Email.focus();
            return false;
        }
    
//  Address  part
    
    if (Address.value.length == 0)
        {
            document.getElementById("addressErro").innerHTML = "*Please Input Address*";
            Address.focus();
            return false;
            
            
        }
       
    if(Address.value.length != 0 && !Address.value.match(alphaValidate))
        {        

            document.getElementById("addressErro").innerText = "*Address Should Have Letters*"; 
            Address.focus();  
            return false;
              
        } 
//  Basic Salary Part
    
    if (Basic.value.length == 0)
        {
            document.getElementById("bSalErro").innerHTML = "*Please Input Basic Salary*";
            Basic.focus();
            return false;
            
            
        }
   
   

    
    
    
    
}
   