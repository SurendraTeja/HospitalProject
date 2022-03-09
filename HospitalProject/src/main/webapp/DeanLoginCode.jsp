<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   <%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<% 
		String dean_name=request.getParameter("dean_name");
		String dean_password=request.getParameter("dean_password");
		try
		{
			Class.forName("oracle.jdbc.driver.OracleDriver");
			Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","surendra","surendra");
			String query="select * from dean where dean_name=? and dean_password=?";
			PreparedStatement ps=con.prepareStatement(query);
			ps.setString(1, dean_name);
			ps.setString(2,dean_password);
			ResultSet rs=ps.executeQuery();
			if(rs.next())
				
			{
				out.println("Your Login SuccessFully");
				response.sendRedirect("Hospital2.jsp");
				
			}
			else
			{
				out.println("Invalid deanname/password");
			}
			con.close();
		}
		catch(Exception e)
		{
			out.println("Something is Fishy...........");
		}
		%>
</body>
</html>