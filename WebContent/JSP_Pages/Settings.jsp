<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">


<title>Settings</title>
</head>
<body onload="ListCustomers();">
<%@ include file = "Header.jsp" %>
<div class="Maincontainer" style="margin-top: 51px;">
	<nav class="innerNavigation navbar-default">
	 <div id="navbarCollapse" class="collapse navbar-collapse">
           <ul class="nav navbar-nav">
               <li class="active"><a href="#">Customers</a></li>
               <li><a href="#">Customer Types</a></li>
               <li><a href="#">Items</a></li>
			<li><a href="#">Profile</a></li>
           </ul>
       </div>
	</nav>
		
	<div style="margin-top: 201px;">
		<table id="example" class="display" width="100%">
		</table>
	</div>
</div>


</body>
<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.16/css/jquery.dataTables.min.css">
<script src="https://cdn.datatables.net/1.10.16/js/jquery.dataTables.min.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/JS_Files/Settings.js"></script>
<script>
var gloablContextURL = "<%=request.getContextPath()%>";
</script>

</html>