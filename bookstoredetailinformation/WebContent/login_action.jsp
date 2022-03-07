<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
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
String name=request.getParameter("uname");
String pwd=request.getParameter("pwd");
Connection con=null;
PreparedStatement ps=null;
ResultSet rs=null;
if(name.equals("admin") && pwd.equals("admin")){

try
{
	
	Class.forName("com.mysql.cj.jdbc.Driver");
	con=DriverManager.getConnection("jdbc:mysql://localhost:3306/bookdetailsinfo","root","Shiva@123");
    //stmt=con.createStatement();
   	 ps = con.prepareStatement("select * from credentials where username=? and password=?");
   	 ps.setString(1,name);
   	 ps.setString(2,pwd);
        rs=ps.executeQuery();
	while(rs.next())
	{
		//session.setAttribute("myid", rs.getString("dept"));
	out.println("successfully logged");
	response.sendRedirect("adminindex.jsp");
	}
	con.close();
}
catch(Exception e){
	e.printStackTrace();
}
}else{
	try
	{
		
		Class.forName("com.mysql.cj.jdbc.Driver");
		con=DriverManager.getConnection("jdbc:mysql://localhost:3306/bookdetailsinfo","root","Shiva@123");
	    //stmt=con.createStatement();
	   	 ps = con.prepareStatement("select * from credentials where username=? and password=?");
	   	 ps.setString(1,name);
	   	 ps.setString(2,pwd);
	     rs=ps.executeQuery();
		while(rs.next())
		{
			//session.setAttribute("myid", rs.getString("dept"));
		out.println("successfully logged");
		response.sendRedirect("userindex.jsp");
		}
		con.close();
	}
	catch(Exception e){
		e.printStackTrace();
	}
}

%>

</body>
</html>