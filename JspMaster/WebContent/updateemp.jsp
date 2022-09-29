<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html>
<head>
<title>Bootstrap Example</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
    href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script
    src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script
    src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>

	<c:set var="se" value="${sessionScope.username}"/> 
	


	
	

<c:if test="${se!=null}">
<h2 align="center">Employee Update Form</h2>
    <div class='container'>
    
    <form method="post" action="UpdateEmployeebyid" >
        <div class="form-group">
            <label for="eid">Employee Id</label> <input type="text"
                class="form-control" name="eid" aria-describedby="eid" value="${employee.eid}"
                placeholder="Enter Eid">
        </div>
        <div class="form-group">
            <label for="ename">Employee Name</label> <input type="text"
                class="form-control" name="ename" aria-describedby="ename" value="${employee.ename}"
                placeholder="Enter ename">
        </div>
        <div class="form-group">
            <label for="depid">Employee Department</label> <input type="text"
                class="form-control" name="depid" aria-describedby="depid" value="${employee.depid}"
                placeholder="Enter deptid">
        </div>
        <div class="form-group">
            <label for="salary">Employee Salary</label> <input type="text"
                class="form-control" name="salary" aria-describedby="salary" value="${employee.salary}"
                placeholder="Enter Salary">
        </div>
        <div class="form-group">
            <label for="designation">Employee Designation</label> <input
                type="text" class="form-control" name="designation"  value="${employee.designation}"
                aria-describedby="designation" placeholder="Enter aukaat">
        </div>
        <div class="form-group">
            <label for="manager">Employee Manager</label> <input type="text"
                class="form-control" name="mgrid" aria-describedby="mgrid"  value="${employee.mgrid}"
                placeholder="Khadoos">
        </div>
        <button type="submit" class="btn btn-primary">Update</button> 
        <%-- <form action="UpdateEmployeebyid"><input type=hidden name="emp" value="${employee}"/><button type="submit" class="btn btn-primary">Update</button></form> --%>
    </form>
    </div>
</c:if>

	<c:if test="${se==null}">
			<% request.getRequestDispatcher("/Login.jsp").forward(request, response);%>
		</c:if>
    
</body>
</html>