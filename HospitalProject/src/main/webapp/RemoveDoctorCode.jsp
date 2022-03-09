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
		int doctor_id=Integer.parseInt(request.getParameter("doctor_id"));
		try
		{
			Class.forName("oracle.jdbc.driver.OracleDriver");
			Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","surendra","surendra");
			String query="delete doctors where doctor_id=?";
			PreparedStatement ps=con.prepareStatement(query);
			ps.setInt(1, doctor_id);
			ResultSet rs=ps.executeQuery();
			if(rs.next())
				
			{
				
				out.println("You Removed a Doctor Succefully");
				
				
			}
			else
			{
				out.println("Doctor Not Deleted");
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