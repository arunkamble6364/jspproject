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

<%
	List<Employee> employees=new ArrayList<Employee>();

	employees.add(new Employee(8,"Mr.Tim",123,200000,"SE",2));
	employees.add(new Employee(9,"Mr.Tom",124,250000,"SDE",1));
	employees.add(new Employee(10,"Mr.Alex",123,500000,"Manager",1));
	employees.add(new Employee(11,"Mrs.Divisha",125,260000,"SDE",2));
	request.setAttribute("employees", employees);

%>


	<table border=1>
	<tr>
	<td>Name</td>
	<td>Length</td>
	<td>Gender</td>
	<td>Depid</td>
	<td>Salary</td>
	<td>Designation</td>
	<td>Mgrid</td>
	</tr>
	<c:forEach items="${employees}" var="e">
	
<%-- 	<c:if test="${e.salary/12<20000}">
		<c:set var="col" value="background-color:red"/>
	</c:if>
	
	<c:if test="${e.salary/12>20000}">
		<c:set var="col" value="background-color:white"/>
	</c:if> --%>
	
	<c:choose>
	<c:when test="${e.designation.equals('Manager')}">
		<c:set var="col" value="background-color:red"/>
	</c:when>
	
	<c:when test="${e.designation.equals('SE')}">
		<c:set var="col" value="background-color:orange"/>
	</c:when>
	
	<c:otherwise>
		<c:set var="col" value="background-color:blue"/>
	</c:otherwise>
	
	</c:choose>
	
	<c:if test="${fn:startsWith(e.ename,'Mr')}">
	<c:set var="g" value='Male'/>
	</c:if>
	
	<c:if test="${fn:startsWith(e.ename,'Mrs')}">
	<c:set var="g" value='Female'/>
	</c:if>
	
	<tr style="${col}">
	<td><c:out value="${e.ename}"/></td>
	<td>${fn:length(e.ename)}</td>
	<td>"${g}"</td>
	<td><c:out value="${e.depid}"/></td>
	<td><c:out value="${e.salary}"/></td>
	<td><c:out value="${e.designation}"/></td>
	<td><c:out value="${e.mgrid}"/></td>
	</tr>
	
</c:forEach>
</table>

<%-- 
<%
 	List<Employee> em=new EmployeedaoImpl().getall();
	request.setAttribute("em", em);
%>
 --%>
 
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
	<td><button class="btn btn-warning">Update</button></td>
	<td><button class="btn btn-danger">Delete</button></td>
	</tr>
	
</c:forEach>
</table>


</body>
</html>