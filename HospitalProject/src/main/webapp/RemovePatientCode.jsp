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
		int patient_id=Integer.parseInt(request.getParameter("patient_id"));
		try
		{
			Class.forName("oracle.jdbc.driver.OracleDriver");
			Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","surendra","surendra");
			String query="delete patients where patient_id=?";
			PreparedStatement ps=con.prepareStatement(query);
			ps.setInt(1, patient_id);
			ResultSet rs=ps.executeQuery();
			if(rs.next())
				
			{
				
				out.println("You Removed a Patient Succefully");
				
				
			}
			else
			{
				out.println("Patient Not Deleted");
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