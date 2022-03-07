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


<div class="row" style="">
<div class="col-sm-3"></div>
<div class="col-sm-6">
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
            pstmt = con.prepareStatement("select * from booksinfo where bookid=?");
            pstmt.setInt(1,bookid);
             rs=pstmt.executeQuery();
                     
            if(rs.next())
            {
            	 int price=rs.getInt(5);
                 int Quantity=rs.getInt(6);
                
                 
                 
             %>
             <form action='Updatebook_action.jsp'>
            <table border='2' cellspacing='5' cellpadding='5'>
                  <tr><td>price</td><td><input type='text' name='price' value='<%=price%>' size='15'></td></tr>
                 <tr><td>Quantity</td><td><input type='text' name='Quantity' value='<%=Quantity%>' size='15'></td></tr>
                 <tr><td><a href="index.jsp">go back to menu</a></td>
                        <td><input type="submit" value="Modify Record"></td></tr>
                        <tr><td><input type="hidden" name='bookid' value='<%=bookid%>'></td></tr>
             </table>
                </form>
             <%
             }
             
         }catch(Exception e){ out.print(e.getMessage());}
%>
</div>
<div class="col-sm-3"></div>
</div>
</div>

</body>
</html>