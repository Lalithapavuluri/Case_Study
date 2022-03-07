<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>

<body>
<div class="container-fluid">
<div class="row" style="background-color:#FA8072"><h2 style="text-align:center;color:blue">Chandel Book Stores</h2></div>
<div class="row">
<div class="col-sm-4"></div>
<div class="col-sm-4" align ="center">
<h2><b>Login Page</b></h2>
<form action="login_action.jsp" method="post">
<table>
<tr><label>UserName : <input type="text" name="uname" class="form-control"></label></tr><br><br>
<tr><label>Password :  <input type="text" name="pwd" class="form-control"></label></tr><br><br>
</table><br>
<input type="submit" value="Login" class="btn btn-success"><br><br>
</form>

</div>
<div class="col-sm-4"></div>
</div>
</div>
</body>
</html>