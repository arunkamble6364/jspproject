<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<c:set var="a" value="10"/>
	<c:set var="b" value="20"/>
	<c:if test="${a>b}">
		<c:out value="${a}"/>
	</c:if>
	<c:if test="${b>a}">
		<c:out value="${b}"/>
	</c:if>
	
	<c:choose>
	<c:when test="${a>b}">
		Greater Number is<c:out value="${a}"/>
		</c:when>
	
	<c:when test="${b>a}">
		Greater Number is<c:out value="${b}"/>
		</c:when>
	

	<c:otherwise>
		Both number are equal
	</c:otherwise>
	</c:choose>
	
	<c:set var="p" value="5"></c:set>
	<c:forEach var="j" begin="2" end="10">
		<c:out value="${j}"/>
	</c:forEach>
	
	<c:forEach var="i" begin="1" end="10">
		<c:if test="${i%2==0}">
		<c:set var="col" value="background-color:grey"/>
		</c:if>
		<c:if test="${i%2!=0}">
		<c:set var="col" value="background-color:white"/>
		</c:if>
		
		<table border="1">
		<tr style="${col}">
		<td><c:out value="${i}*${p}"/></td>
		<td><c:out value="="/></td>
		<td><c:out value="${i*p}"/></td>
		</tr>
		</table>
	</c:forEach>
	
</body>
</html>