<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Chandel Book Stores</title>
</head>
<body>
<form action="showBbybook_action.jsp" method="post">
<div class="container-fluid">
<div class="row" style="background-color:#FA8072"><h2 style="text-align:center;color:blue">Chandel Book Stores</h2></div>
<div class="col-sm-4"></div>
<div class="col-sm-6">
<a href="insert.jsp">Add New Book</a>&nbsp;&nbsp;<br>
<a href="showBooks.jsp">Show All Book</a><br>
<a href="showBbysubject.jsp">Show All Book by subject</a><br>
<a href="showBbyauthor.jsp">Show All Book by author</a><br>
<a href="showBbyprice.jsp">Show All Book by price</a><br>
<a href="showBooksbyid.jsp">Show All Book by bookid</a><br>
<a href="checkbookbyQty.jsp">Check book is available by Quantity</a><br>
<label>Show All by book based by bookrefer</label>

<input type="text" name="bookid" class="form-control">

<input type="submit" value="select" class="btn btn-success">

</div>
<div class="col-sm-2"></div>
</div>
</form>
</body>
</html>