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
		String doctor_name=request.getParameter("doctor_name");
		String doctor_password=request.getParameter("doctor_password");
		try
		{
			Class.forName("oracle.jdbc.driver.OracleDriver");
			Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","surendra","surendra");
			String query="select * from doctors where doctor_name=? and doctor_password=?";
			PreparedStatement ps=con.prepareStatement(query);
			ps.setString(1, doctor_name);
			ps.setString(2,doctor_password);
			ResultSet rs=ps.executeQuery();
			if(rs.next())
				
			{
				out.println("Your Login SuccessFully");
				response.sendRedirect("Hospital3.jsp");
				
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