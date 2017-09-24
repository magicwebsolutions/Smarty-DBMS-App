<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login</title>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" type="text/css" href="Assets/css/Styling.css">
<link rel="stylesheet" type="text/css" href="Assets/css/bootstrap-select.min.css">
<link rel="stylesheet" type="text/css" href="Assets/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="Assets/css/font-awesome.min.css">
<link rel="stylesheet" type="text/css" href="Assets/css/ripple.min.css">
 <script type="text/javascript" src="Assets/Js/jquery-1.12.0.js"></script>
 <script type="text/javascript" src="JS_Files/Login.js"></script>
</head>
<body onload="LoginOnLoad()">
<div class="login-page fade-in" style="background-color: #689a9c;">
        <div class="login-form">
            <a href="#">
                <img src="Assets/Images/Smarty_DBMS_Logo.png" alt="logo" style="height: 100px;width: 200px;">
            </a>
            <h2>Sign In</h2>
            <form action = "/Smarty-DBMS-PROD/Login" id="loginForm" method="POST">
                <div class="form-row">
                    <div class="form-inner-field input-field">
                      <input for="full_name" type="text" id="UserName" name="UserName" class="validate" autofocus autocomplete="off">
                        <label id="full_name">User Name</label>
                    </div>
                    <p class="form-error fade-in" id="alertUserName" style="margin-right: 148px;">*Please Enter UserName</p>
                </div>
                <div class="form-row">
                    <div class="form-inner-field input-field">
                        <input type="password" id="User_pwd" name="User_pwd" class="validate"  autocomplete="off">
                        <label>Password</label>
                    </div>
                    <p class="form-error fade-in" id="alertPassword" style="margin-right: 148px;">*Please Enter Password</p>
                </div>
                <button type="button" onclick="submitLogin();"  class="red-button w-100 h-50 mb-5 text-uppercase">Login</button>
                <a href="NewPasswordChangejsp.jsp" class="fR gray font-samll">Forgot your password?</a>
            </form>
        </div>
    </div>
<script src="Assets/Js/jquery-3.1.1.min.js"></script>
<script src="Assets/Js/ripple.min.js"></script>
<script src="Assets/Js/materialize.min.js"></script> 

<%
if((String)request.getAttribute("status")=="success")
{
	%>
	<script>    
    DashboardRedirect();
    </script>
<%
}
%>
</body>
</html>