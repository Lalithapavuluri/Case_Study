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
<%
        
        int bookid=Integer.parseInt(request.getParameter("bookid"));
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
            pstmt=con.prepareStatement("delete from booksinfo where bookid=?");
             pstmt.setInt(1,bookid);
             int i=pstmt.executeUpdate();
                     
            if(i>0)
            {
             %>
               <h1>Old books which syllabus has been changed is Removed Successfully</h1>
               <a href="index.jsp">go back to main page</a>
             <%
             }
             
         }catch(Exception e){ out.print(e.getMessage());}
%>

</body>
</html>