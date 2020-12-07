function validateSignUp() {
    document.getElementById("fnameErro").innerHTML = ""; 
    document.getElementById("lnameErro").innerText = ""; 
    document.getElementById("dateErro").innerHTML = "";
    document.getElementById("genderErro").innerHTML = "";
    document.getElementById("phoneErro").innerHTML = "";
    document.getElementById("emailErro").innerHTML = "";
    document.getElementById("nicErro").innerHTML = "";
    document.getElementById("provinceErro").innerHTML = "";
    document.getElementById("addressErro").innerHTML = null;
    
    var F_name =document.getElementById("fname");
    var L_name  =document.getElementById("lname");
    var Dob = document.getElementById("dob");
    var Male = document.getElementById("male");
    var Female =document.getElementById("Female");
    var P_no  =document.getElementById("pNo");
    var Email = document.getElementById("email");
    var NIC = document.getElementById("nic");
    var Province = document.getElementById("province");
    var Address = document.getElementById("address");
    
    
    var emailValidate = /^[\w\-\.\+]+\@[a-zA-Z0-9\.\-]+\.[a-zA-z0-9]{2,4}$/;  
    var numerValidate = /^[0-9]+$/; 
    var alphaValidate = /^[a-zA-Z]+$/; 
    
//  first name  part
    
    if (F_name.value.length == 0)
        {
            document.getElementById("fnameErro").innerHTML = "Please Enter your first name";
            F_name.focus();
            return false;
            
            
        }
       
    if(F_name.value.length != 0 && !F_name.value.match(alphaValidate))
        {        

            document.getElementById("fnameErro").innerText = "first name should have letters"; 
            F_name.focus();  
            return false;
              
        } 
    
//  last name  part    
    
    if (L_name.value.length == 0)
        {
            document.getElementById("lnameErro").innerHTML = "Please enter your last name";
            L_name.focus();
            return false;
        }
    if(L_name.value.length != 0 && !L_name.value.match(alphaValidate) )
        {
            document.getElementById("lnameErro").innerHTML = "last name should have letters";
            L_name.focus();
            return false;
        }
 //  phone number  part
    
    if (P_no.value.length == 0)
        {
            document.getElementById("phoneErro").innerHTML = "Please enter your Phone number";
            P_no.focus();
            return false;
        }
    if(P_no.value.length != 0 && !P_no.value.match(numerValidate)   )
        {
            document.getElementById("phoneErro").innerHTML = "Enter valid phone number";
            P_no.focus();
            return false;
        }
    
//  date of birth   part
    
    if (Dob.value.length == 0)
        {
            document.getElementById("dateErro").innerHTML = "Please enter your Birthday";
            Dob.focus();
            return false;
        }
    
//  gender   part
    
    if (Male.checked==false && Female.checked==false)
        {
            document.getElementById("genderErro").innerHTML = "Please choose your gender type";
            Male.focus();
            return false;
        }
    

    
 //  email  part
    
    if (Email.value.length == 0)
        {
            document.getElementById("emailErro").innerHTML = "Please enter your email address";
            Email.focus();
            return false;
        }
    if(Email.value.length != 0 && !Email.value.match(emailValidate) )
        {
            document.getElementById("emailErro").innerHTML = "Enter Valid email address";
            Email.focus();
            return false;
        }
    
 //  NIC  part
    
    if (NIC.value.length == 0)
        {
            document.getElementById("nicErro").innerHTML = "Please enter National Identity Card No";
            NIC.focus();
            return false;
        }
    if (NIC.value.length != 0 && NIC.value.length < 10 )
        {
            document.getElementById("nicErro").innerHTML = "Please Enter Valid National Identity Card No";
            NIC.focus();
            return false;
        }
    
 //  Province  part
    
    if (Province.value.length == 0)
        {
            document.getElementById("provinceErro").innerHTML = "Please Enter Province";
            Province.focus();
            return false;
        }
    
//  Address  part
    
    if (Address.value.length == 0)
        {
            document.getElementById("addressErro").innerHTML = "Please Enter Address";
            Address.focus();
            return false;
        }
    
    
    
     
    
    
    
    
}
   