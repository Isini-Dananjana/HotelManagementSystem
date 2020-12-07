

		
		var numerValidate = /^[0-9]+$/; 
		var cart = [] ;
        var total = 0;
        var items = 0;
        loadCart(); 
        
        
        function get(){ 
        	
        	var cartArray = listCart();	
        	 var cartCpy = [];
			for ( var i in cartArray ){
				
				 cartCpy[i] = [cartArray[i].itemCode,cartArray[i].expir,cartArray[i].quntity];
			}
			 
        	 
        	window.location.replace("addRestaurentStockServlet?cartCpy="+cartCpy);
        	
        	localStorage.removeItem("shoppingCart");
        	/*-------------------------------------------------------------------------------------------------------------------------------------------------
        	 * remove all cart
        			
        				var cartArray = listCart();
        	            for (var i in cartArray)
        	            {
        	               	
        	               if (cart[i].itemCode == cartArray[i].itemCode )
        	                   {
        	                       cart.splice(i,1);
        	                       console.log(cart);
        	                       saveCart();
        	                       //location.reload();                             
        	                       display_item();
        	                       calcarttotal();
        	                        
        	                   }
        	               
        	            }
        	    *---------------------------------------------------------------------------------------------------------------------------------------------------*/
        	
        } 
		 
        
		 
/*-------------------------------------------------------------------------------------------------------------------------------------------------
 * on-click Function
 *---------------------------------------------------------------------------------------------------------------------------------------------------*/
        	        	 
        	
       function myFunction() {           
            var itemCode =document.getElementById("icode");
        	var barcode  =document.getElementById("bcode");
        	var tradeName = document.getElementById("trade");
        	var itemPrice = document.getElementById("iprice");
        	var expir =document.getElementById("exp");
        	var quntity  =document.getElementById("qty");
        	var total  =document.getElementById("tamou");
            
        	if(itemCode.value.length == 0||barcode.value.length == 0||tradeName.value.length == 0||itemPrice.value.length == 0||expir.value.length == 0||quntity.value.length == 0||(quntity.value.length != 0 && !quntity.value.match(numerValidate))||total.value.length == 0) {
        	
        		validate();	
        		 
			}else{ 
				
				
				document.getElementById("CodeError").innerHTML ="";
				document.getElementById("PriceError").innerHTML ="";
				document.getElementById("AmountError").innerHTML ="";
				document.getElementById("BarcodeError").innerHTML ="";
				document.getElementById("exDateError").innerHTML ="";
				document.getElementById("tNameError").innerHTML ="";
				document.getElementById("QtyError").innerHTML =""; 
				
	            addItemToTheCart ( parseInt(itemCode.value), parseInt(barcode.value), tradeName.value, parseInt(itemPrice.value) ,expir.value,parseInt(quntity.value) ,parseInt(total.value));
	            display_item();
	            calcarttotal();
	            console.log(cart);
			}
        }
        
		
/*-------------------------------------------------------------------------------------------------------------------------------------------------
 * pass values to Item from function   
 *---------------------------------------------------------------------------------------------------------------------------------------------- -*/

		var Item = function( itemCode, barcode, tradeName, itemPrice ,expir,quntity ,total )
			{   
				 
                
                this.itemCode = itemCode;
				this.barcode  = barcode;
				this.tradeName =  tradeName;
				this.itemPrice =  itemPrice;
				this.expir = expir;
				this.quntity  = quntity;
				this.total  = total;
			};
		
 /*-----------------------------------------------------------------------------------------------------------------------------------------
  * add item to value and push item object to cart
  * ---------------------------------------------------------------------------------------------------------------------------------------*/
			
		function addItemToTheCart (itemCode, barcode, tradeName, itemPrice ,expir,quntity ,total )   //this function add items to cart 
		 {	
			for ( var i in cart )
			{
				if (cart[i].itemCode === itemCode )
				{
					cart[i].quntity += quntity;
                    saveCart();
                       
					return;
				}
				
			}
				
			var item = new Item(itemCode, barcode, tradeName, itemPrice ,expir,quntity ,total);
			cart.push(item);
            saveCart();
              
				
		}
 /*----------------------------------------------------------------------------------------------------------------------------------------------------
  * make a cart list
  * --------------------------------------------------------------------------------------------------------------------------------------------------*/
		function listCart(){
			var cartCpy = [];
			for (var i in cart) {
				var item = cart[i];
				var itemCpy ={};
				for ( var p in item) {
					itemCpy[p] = item[p];
				}
				cartCpy.push(itemCpy);
			}
			return cartCpy;
		}	   
        
 /*-------------------------------------------------------------------------------------------------------------------------------------------------------
  * display item
  * --------------------------------------------------------------------------------------------------------------------------------------------------------*/    
		   
		function display_item() {
			 
			var cartArray = listCart();
			var output = "";
			for ( var i in cartArray ){
				
				output += "<tr style='margin-top: 20px'><td>"+cartArray[i].itemCode+"</td><td>"+cartArray[i].barcode+"</td><td>"+cartArray[i].tradeName+"</td><td>"+cartArray[i].itemPrice+"</td><td>"+cartArray[i].expir+"</td><td>"+cartArray[i].quntity+"</td><td>"+cartArray[i].quntity*cartArray[i].itemPrice+"</td><td><button type='button' class='btn  btn-danger btn-xs' onclick='removeCartItem("+cartArray[i].itemCode+")'> remove</button>  </td></tr>";	
				
				
			}
			$("#tbody").html(output);
		}
            


/*-------------------------------------------------------------------------------------------------------------------------------------------------
 * calculate total
 *---------------------------------------------------------------------------------------------------------------------------------------------------*/
					 
		
		function calcarttotal(){
           
            if( cart.length > 0){
		        for ( var i in cart)
		            {
		                total += cart[i].itemPrice * cart[i].quntity; 
		            }
		        document.getElementById("netA").value = "Rs."+total.toFixed(2);
		        document.getElementById("totItem").value = cart.length.toFixed(1);
		        total = 0;    
            }else
                document.getElementById("netA").value = " 0 ITEM - Rs.0.00";
            	document.getElementById("totItem").value = cart.length.toFixed(1);
        }
/*-------------------------------------------------------------------------------------------------------------------------------------------------
 * remove cart
 *---------------------------------------------------------------------------------------------------------------------------------------------------*/
		
		function removeCartItem(id){
			
                 for (var i in cart)
                 {
                    if (cart[i].itemCode == id )
                        {
                            cart.splice(i,1);
                            console.log(cart);
                            saveCart();
                            //location.reload();                             
                            display_item();
                            calcarttotal();
                            break;
                        }
                    
                 }
                 
        }	
				

/*-------------------------------------------------------------------------------------------------------------------------------------------------
 * save cart to local storage
 *---------------------------------------------------------------------------------------------------------------------------------------------------*/
					   
		function saveCart()
	     {
	         localStorage.setItem("shoppingCart", JSON.stringify(cart));
	     }	
		
		
/*-------------------------------------------------------------------------------------------------------------------------------------------------
 * load Cart
 *---------------------------------------------------------------------------------------------------------------------------------------------------*/
		
		
		 function loadCart(){
			 
	            cartreturn = JSON.parse( localStorage.getItem("shoppingCart") );
	            if (cartreturn == null )
	                return ;
	            else
	                cart = cartreturn;
	             
	        }   
	           
				 
				
/*-------------------------------------------------------------------------------------------------------------------------------------------------
 * validate function
 *---------------------------------------------------------------------------------------------------------------------------------------------------*/
				
				
				
		function validate() {
					
			document.getElementById("CodeError").innerHTML ="";
			document.getElementById("PriceError").innerHTML ="";
			document.getElementById("AmountError").innerHTML ="";
			document.getElementById("BarcodeError").innerHTML ="";
			document.getElementById("exDateError").innerHTML ="";
			document.getElementById("tNameError").innerHTML ="";
			document.getElementById("QtyError").innerHTML =""; 
			
			var itemCode =document.getElementById("icode");
			var barcode  =document.getElementById("bcode");
			var tradeName = document.getElementById("trade");
			var itemPrice = document.getElementById("iprice");
			var expir =document.getElementById("exp");
			var quntity  =document.getElementById("qty");
			var total  =document.getElementById("tamou");
			
			 
							
			var numerValidate = /^[0-9]+$/; 
			var alphaValidate = /^[a-zA-Z]+$/; 	
			
								 
						
				//Item Code 
						
				if (itemCode.value == "")
				{
					document.getElementById("CodeError").innerHTML = "Item Code empty";
					itemCode.focus();
					return false;
						        
						        
				}
				if(itemCode.value.length != 0 && !itemCode.value.match(numerValidate))
				{        
						
					document.getElementById("CodeError").innerText = "Please enter correct item code"; 
					itemCode.focus();  
					return false;
						          
			   } 
				
			   //barcode number 
				
				if (barcode.value.length == 0)
				{
				   document.getElementById("BarcodeError").innerHTML = "Enter barcode number";
				   barcode.focus();
				   return false;
				}
				//trade name 
				
				if (tradeName.value.length == 0)
				{
				   document.getElementById("tNameError").innerHTML = "Please enter trade name";
				   tradeName.focus();
				   return false;
				}

			//Item price  
							
			   if (itemPrice.value.length == 0)
			   {
					document.getElementById("PriceError").innerHTML = "Please enter price";
					itemPrice.focus();
					return false;
			   }
			   if(itemPrice.value.length != 0 && !itemPrice.value.match(numerValidate) )
			   {
				   document.getElementById("PriceError").innerHTML = "Enter correct price";
				   itemPrice.focus();
				   return false;
			   }
							
					 		
							
			//expire date
							
			   if (expir.value.length == 0)
			   {
				   document.getElementById("exDateError").innerHTML = "Enter expire date";
				   expir.focus();
				   return false;
			   }
			  
			  		
							
			//Quantity
							
			   if (quntity.value == 0)
			   {
				   document.getElementById("QtyError").innerHTML = "Please Enter quntity ";
				   quntity.focus();
				   return false;
			   }
							
							
			   if (quntity.value.length != 0 && !quntity.value.match(numerValidate))
			   {
				   document.getElementById("QtyError").innerHTML = "Enter correct quntity";
				   quntity.focus();
				   return false;
			   }
			   
			 //Total amount
				
			   if (total.value == 0)
			   {
				   document.getElementById("AmountError").innerHTML = "Empty total amount";
				   total.focus();
				   return false;
			   }
							
							
			   if (total.value.length != 0 && !total.value.match(alphaValidate))
			   {
				   document.getElementById("AmountError").innerHTML = "Enter correct amount";
				   total.focus();
				   return false;
			   }
						
			 
		}		
		
		
/*--------------------------------------------------------------------------------------------------------------------------------------------------------
 *  nodejs for add shopping cart to db
 * ------------------------------------------------------------------------------------------------------------------------------------------------------------*/		
			
		function addStock() { 
			var mysql = require('mysql');
	
				var con = mysql.createConnection({
				  host: "localhost",
				  user: "root",
				  password: "12345",
				  database: "yulabeach"
				});
	
				con.connect(function(err) {
				  if (err) throw err;
				  console.log("Connected!");
				  var sql = "INSERT INTO kitchenstock (stock_id, item_code) VALUES ('1', '2')";
				  con.query(sql, function (err, result) {
				    if (err) throw err;
				    console.log("1 record inserted");
				  });
				});
		}
/*--------------------------------------------------------------------------------------------------------------------------------------------------------
 * on-click function for clear button
 * ------------------------------------------------------------------------------------------------------------------------------------------------------------*/		
		function clear_all(){       
			
			var itemCode =document.getElementById("icode");
			var barcode  =document.getElementById("bcode");
			var tradeName = document.getElementById("trade");
			var itemPrice = document.getElementById("iprice");
			var expir =document.getElementById("exp");
			var quntity  =document.getElementById("qty");
			var total  =document.getElementById("tamou");
			
			 itemCode.value = "";
			 barcode.value  = "";
			 tradeName.value =  "";
			 itemPrice.value =  "";
			 expir.value = "";
		     quntity.value  = "";
			 total.value  = "";
			 
			  
			  
		}
	



 