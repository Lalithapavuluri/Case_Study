<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div class="row" style="background-color:#FA8072"><h2 style="text-align:center;color:blue">Chandel Book Stores</h2></div>
<div class="col-sm-6">
<div align="right"><a href="index.jsp">Logout</a></div>
<a href="insert.jsp">Add New Book</a>&nbsp;&nbsp;<br>
		<a href="showBooks.jsp">Show All Book</a><br>
		<a href="showBbysubject.jsp">Show All Book by subject</a><br>
<a href="showBbyauthor.jsp">Show All Book by author</a><br>
<a href="showBbyprice.jsp">Show All Book by price</a><br>
<a href="showBooksbyid.jsp">Show All Book by bookid</a><br>
<a href="checkbookbyQty.jsp">Check book is available by Quantity</a><br>
         
 </div>   
    <div class="col-sm-4">
   
       <%
        
   String author=request.getParameter("author");
       
         Connection con=null;
         PreparedStatement ps=null;
         ResultSet rs=null;
         try
         {
             Class.forName("com.mysql.cj.jdbc.Driver");
             //System.out.println("driver loaded");
         }catch(ClassNotFoundException cnfe){ out.print(cnfe.getMessage());}
         
         try
         {
             con=DriverManager.getConnection("jdbc:mysql://localhost:3306/bookdetailsinfo","root","Shiva@123");
             //stmt=con.createStatement();
            	 ps = con.prepareStatement("select * from booksinfo where bauthor=?");
            	 ps.setString(1,author);
            	 rs=ps.executeQuery();
             
            %>
             <div align="center">
        <table border="1" cellpadding="5">
            <caption><h2>List of Books</h2></caption>
            <tr>
                <th>ID</th>
                <th>Book Name</th>
                <th>Book Subject</th>
                <th>Book Author</th>
                <th>Book price</th>
                <th>Quantity</th>
                <th>Action1</th>
                <th>Action2</th>
            </tr>
             <%
              int bookid=0;
             while(rs.next())
             {  
            	 bookid=rs.getInt(1);   
            	
             %>
                <tr><td><%=rs.getInt(1)%></td><td><%=rs.getString(2)%></td><td><%=rs.getString(3)%></td><td><%=rs.getString(4)%></td>
                <td><%=rs.getInt(5)%></td><td><%=rs.getInt(6)%></td>
                <td><a href="Updatebook.jsp?bookid=<%=bookid%>" >Update</a></td>
                <td><a href="Deletebook.jsp?bookid=<%=bookid%>" >Delete</a></td>
                </tr>
                             <%   
             }%>
            
        <% }catch(Exception e){ out.print(e.getMessage());}
%>
    </table>
    </div>
</body>
</html>