var data = [];

function ListCustomers()
{	
var URL = gloablContextURL+"/ListCustomer?Event=LISTCUSTOMER";
if(window.XMLHttpRequest){
requestOBJ = new XMLHttpRequest();
}else if(window.ActiveXObject){
	requestOBJ= new ActivXCObject("Microsoft.XMLHTTP");
}
try{
requestOBJ.onreadystatechange=CustomerResponse;
requestOBJ.open("POST",URL,true);
requestOBJ.setRequestHeader("Content-type", "text/xml");
requestOBJ.send();
}catch(e){
alert("Something went wrong");
}

}
function CustomerResponse(){
	var singleGrid;
	var itemarray;
if(requestOBJ.readyState==4){
if(requestOBJ.status==200){
var responsetext= requestOBJ.responseText;
responsetext= responsetext.replace("<xml>","");
if(responsetext.indexOf("~")>0){
	var finalResponse = responsetext.substring(0, responsetext.lastIndexOf('#'));
	itemarray = finalResponse.split("#");
	for(var i=0; i<itemarray.length;i++){
		data.push(itemarray[i].split('~'));
		debugger;
	}
	data;	
	console.log(data);
	debugger;
	var dataSet = data;
	
	console.log(dataSet);
	
	
	$(document).ready(function() {
		$('#example').DataTable( {
	        data: dataSet,
	        columns: [
	        	 { title: "Customer ID" },
	             { title: "Name" },
	             { title: "Phone" },
	             { title: "Address" }
	        ]
	    } );
		
		
	} );
	
}
}
}
}








