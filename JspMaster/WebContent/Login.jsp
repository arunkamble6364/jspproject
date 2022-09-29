<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
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
<form method="post" action="credential" >
	<div class='container'>
        <div class="form-group">
            <label for="username">Enter Username</label> <input type="text"
                class="form-control" name="username" aria-describedby="username" value="${username}"
                placeholder="Enter Username">
        </div>
        <div class="form-group">
            <label for="password">Enter Password</label> <input type="password"
                class="form-control" name="password" aria-describedby="password" value="${password}"
                placeholder="Enter password">
                
<!-- <form method="post" action="credential">
Enter Username<input type="text" name="username"/>
<br>
Enter Password<input type="password" name="password"/>
<br>
<input type="submit"> -->

<button type="submit" class="btn btn-primary">Login</button> 
</form>
</div>
</body>
</html>