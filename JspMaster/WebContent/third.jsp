<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   <%@page import ="com.pd.model.*,java.util.*,com.pd.DAO.*,com.pd.connection.*"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>
<form action="Logout">
	<div  align="right" >
    <button type="submit" class="btn btn-primary">LogOut</button>
    </div>
    </form>
<table class="container style="margin-top:350px" border=1>

<h2 align="center">Employee Information</h2>
<thead>
	<th>Name</th>
	<th>Depid</th>
	<th>Salary</th>
	<th>Designation</th>
	<th>Mgrid</th>
	<th>Update</th>
	<th>Delete</th>
	</thead>
	
<c:forEach items="${em}" var="emp">
	<tr>
	<td><c:out value="${emp.ename}"/></td>
	<td><c:out value="${emp.depid}"/></td>
	<td><c:out value="${emp.salary}"/></td>
	<td><c:out value="${emp.designation}"/></td>
	<td><c:out value="${emp.mgrid}"/></td>

	<td><form action="EmployeeUpdate"><input type=hidden name="id" value="${emp.eid}"/><button type="submit" class="btn btn-warning">Update</button></form></td>
	<td><form action="EmployeeDelete"><input type=hidden name="id" value="${emp.eid}"/><button type="submit" class="btn btn-danger">Delete</button></form></td>
	</tr>
	
</c:forEach>
</table>
</body>
</html>