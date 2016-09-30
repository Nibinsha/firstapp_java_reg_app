<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %> 
<%@ page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>  

<html>
<title>LIST OF EMPLOYEE DEATIL</title>
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
table {
    border-collapse: collapse;
}

table, td, th {
    border: 1px solid black;
}
</style>

<body>
<div id="main">
  <h1 style="text-align:center; font-size:20px; background-color:rgb(0, 102, 255);">Employee Application <a href="/hellospring/login">LOGOUT</a></h1>
</div>
  
<title>JSP List Users Records</title>
    <sql:setDataSource
        var="myDS"
        driver="com.mysql.jdbc.Driver"
        url="jdbc:mysql://localhost:3306/employee"
        user="root" password="1234!@#$"
    />
     
    <sql:query var="listUsers"   dataSource="${myDS}">
        SELECT * FROM employee.emp_detail;
    </sql:query>
     
    <div align="center">
        <table>
            <caption><h2>List of users</h2></caption>
            <tr>
                <th>First Name</th>
                <th>Last Name</th>
                <th>Working status</th>
                <th>SSN</th>
              
            </tr>
            <c:forEach var="user" items="${listUsers.rows}">
                <tr>
                    <td><c:out value="${user.fname}" /></td>
                    <td><c:out value="${user.lname}" /></td>
                    <td><c:out value="${user.work}" /></td>
                   <td><c:out value="${user.ssn}" /></td>
                   
                </tr>
            </c:forEach>
        </table>
    </div>
    <form action="welcome.jsp">
    <input style="cursor: pointer;" type="submit" value="Click Here To View Welcome Page">
</form>
    
</body>
</html>