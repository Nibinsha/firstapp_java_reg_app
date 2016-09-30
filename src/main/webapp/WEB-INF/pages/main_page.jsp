<%@ page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>

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
input{
height: 45px;
width: 300px;
font-size: 18px;
margin-bottom: 20px;
background-color: #fff;
color:"red";
}

.w3-btn{width:150px;}
</style>
<body>


<div id="main">
  <h1 style="text-align:center; font-size:20px; background-color:rgb(0, 102, 255);">Employee Application <a href="/hellospring/login">LOGOUT</a></h1>
</div>

<form action="welcome.jsp">
    <input style="cursor: pointer;" type="submit" value="Click Here To View Welcome Page">
</form>


<br/>

<p> Hi, this is the page for registering employee details.<br/> We can save Fisrtname, Lastname, Working status and SSN through this application. <br/> And also we can see the List of data already saved.<br/> Thank you...... :)</p> 
<br/>

    <a class="w3-btn w3-red" href="welcome.jsp">WELCOME PAGE</a>
    <br/>
     
</body>
</html>