<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div class="row" style="background-color:#FA8072"><h2 style="text-align:center;color:blue">Chandel Book Stores</h2></div>
<%
        
        int bookid=Integer.parseInt(request.getParameter("bookid"));
        int price=Integer.parseInt(request.getParameter("price"));
        int Quantity=Integer.parseInt(request.getParameter("Quantity"));
         Connection con=null;
         PreparedStatement pstmt=null;
         ResultSet rs=null;
         try
         {
             Class.forName("com.mysql.cj.jdbc.Driver");
         }catch(ClassNotFoundException cnfe){ out.print(cnfe.getMessage());}
         
         try
         {
            con=DriverManager.getConnection("jdbc:mysql://localhost:3306/bookdetailsinfo","root","Shiva@123");       
            pstmt=con.prepareStatement("update booksinfo set price=?,Quantity=? where bookid=?");
            
            pstmt.setInt(1,price);
             pstmt.setInt(2,Quantity);
             pstmt.setInt(3,bookid);
             int i=0;
             i=pstmt.executeUpdate();
       
            if(i>0)
            {
             %>
             <table border='2' cellspacing='5' cellpadding='5'>
                 <tr><td>Record Modified </td></tr>
                 <tr><td><a href="adminindex.jsp">go back to menu</a></td></tr>
             </table>
             <%
             }
             
         }catch(Exception e){ out.print(e.getMessage());}
%>

</body>
</html>