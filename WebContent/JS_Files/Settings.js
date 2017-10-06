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
alert(URL);
requestOBJ.open("POST",URL,true);
requestOBJ.setRequestHeader("Content-type", "text/xml");
requestOBJ.send();
}catch(e){
alert("Something went wrong");
}

}
function CustomerResponse(){
	alert("11111111111111111");
if(requestOBJ.readyState==4){
	alert("22222222222222222");
if(requestOBJ.status==200){
	alert("3333333333333333333");
var responsetext= requestOBJ.responseText;
alert(responsetext);
responsetext= responsetext.replace("<xml>","");
responsetext= responsetext.replace("<xml>","");      
}
}
}