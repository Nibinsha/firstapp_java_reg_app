<%@ page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<title>EMPLOYEE DEATIL</title>
  
 <style>
body{
margin: 0 auto;
background-image: url("http://www.yohfroz.com/images/BACKGROUND.png");
background-repeat: no-repeat;
background-size: 100% 720px;
} 
p{
width: 500px;
height: 300px;
text-align: center;
margin: 0 auto;
margin-left: 400px;
margin-top: 60px;

}
#main {
  width: auto;
  border: 1px dotted black;
}
h1 {
  margin: 0;
    display: inline-block;
}
a {
  float: right;
  color:"#fff";
  
}
input[type="text"]{
height: 25px;
width: 200px;
font-size: 18px;
margin-bottom: 20px;
background-color: #fff;
color:"red";
}

.w3-btn{width:150px;}
</style> 
  
</head>
<body>


<div id="main">
  <h1 style="text-align:center; font-size:20px; background-color:rgb(0, 102, 255);">Employee Application <a href="/hellospring/login">LOGOUT</a></h1>
</div>
<center>

<div class="container">
  <div class="jumbotron">
    <h1>EMPLOYEE DETAIL</h1>
    
  </div>
  </div>
    <form action="register" method="post">
        <div class="form-group"></br>
    <label>First Name:</label>
    <input type="text" class="form-control" name="fname"/></br>
  </div>
        
        <div class="form-group">
        </br>
    <label>Last Name:</label>
    <input type="text" class="form-control" name="lname"/>
  </div>
  
  <div class="checkbox"></br>
   
    <label>STATUS<input type="checkbox"> WORK </label>
    <label><input type="checkbox">NON WORK </label>
  </div>
        
        <div class="form-group">
        </br>
    <label>SSN:</label>
    <input type="text" class="form-control" name="ssn"/>
  </div>
  
        <div class="container"></br>
         <button type="submit" class="btn btn-primary">SUBMIT</button>
         </div>              
  </form>
  </center>
    
    <br/>
    <a class="w3-btn w3-red" href="welcome.jsp">WELCOME PAGE</a>
    <br/>
    <br/>
    <a class="w3-btn" href="/hellospring/login">Logout</a><br/>
</body>
</html>
