window.onload = function(){
	document.getElemetById("download").addEventListner("click",()=>{
		const invoice = this.doucument.getElementById("come");
		console.log(come);
		console.log(window);
		
		var opt = {
				  margin:       1,
				  filename:     'myfile.pdf',
				  image:        { type: 'jpeg', quality: 0.98 },
				  html2canvas:  { scale: 2 },
				  jsPDF:        { unit: 'in', format: 'letter', orientation: 'portrait' }
				};
		
		
		html2pdf().from(come).set(option).save;
		
		
	})
}