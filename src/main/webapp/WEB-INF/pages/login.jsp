<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<title>Login Page</title>
 
  <style>
body{
margin: 0 auto;
background-image: url("http://www.yohfroz.com/images/BACKGROUND.png");
background-repeat: no-repeat;
background-size: 1000% 1000px;
} 
.container{

width: 500px;
height: 300px;
text-align: center;
border-radius: 10px;
margin: 0 auto;
margin-left: 400px;
margin-top: 60px;
background-color: #ccffcc;
}

input[type="text"],input[type="password"]{
height: 45px;
width: 300px;
font-size: 18px;
margin-bottom: 20px;
background-color: #fff;
}

.form_input::before{
content: "\f007";
position: absolute;
font-family: "FontAwesome";
font-size: 30px;
}
.btn-login{
padding: 5px 5px;
color: #fff;
background-color: #2ECC71;
cursor: pointer;
}


  </style>

</head>



<body onload='document.loginForm.username.focus();'>


<h1 style="text-align:center; font-size:20px; background-color:rgb(0, 102, 255);">Employee Application</h1>

<div class="container">

    
        



 


		<h2><font color="#333300">Please Enter your Information</font> </h2>

		<c:if test="${not empty error}">
			<div class="error">${error}</div>
		</c:if>
		<c:if test="${not empty msg}">
			<div class="msg">${msg}</div>
		</c:if>
		
		

		<form name='loginForm' action="<c:url value='j_spring_security_check' />" method='POST'>

		  <div class="form-input">
		     <h2 style="color:rgb(153, 102, 51);">USER NAME</h2>
		     <input type="text" name="username">
		  </div>
		  
		  <div class="form-input">
		      <h2 style="color:rgb(153, 102, 51);">PASSWORD</h2> 
		      <input type="password" name="password">
		  </div>
		 
		  
		  <input type="submit" name="submit" value="LOGIN" class="btn-login"> 
		  
		  <input type="hidden" name="${_csrf.parameterName}"
			value="${_csrf.token}" />

		</form>
		
	</div>

	
</body>
</html>