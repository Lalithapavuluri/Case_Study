<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div class="container-fluid">
<div class="row" style="background-color:#FA8072"><h2 style="text-align:center;color:blue">Chandel Book Stores</h2></div>
<div class="row">
<div class="col-sm-4"></div>
<div class="col-sm-4" align ="center">
<h2><b>Book Details</b></h2>
<form method="post" action="savebookinform">
<table>
<tr><label>Book title :  <input type="text" name="bname" class="form-control"></label></tr><br><br>
<tr><label>Book subject : <input type="text" name="bsubject" class="form-control"></label></tr><br><br>
<tr><label>Book author : <input type="text" name="bauthor" class="form-control"></label></tr><br><br>
<tr><label>Book price : <input type="text" name="bprice" class="form-control"></label></tr><br><br>
<tr><label>Book Quantity : <input type="text" name="quantity" class="form-control"></label></tr><br><br>
<tr>
				<td colspan="2" align="center">
					<input type="submit" value="Submit" />
					<input type="reset" value="Refresh" />
				</td>
			</tr>

</table><br>

</div>
<div class="col-sm-4"></div>
</div>
</div>
</body>
</html>