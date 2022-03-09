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
<%			int doctor_id=Integer.parseInt(request.getParameter("doctor_id"));
			String doctor_name= request.getParameter("doctor_name");
			String doctor_designation=request.getParameter("doctor_designation");
			try
			{
				Class.forName("oracle.jdbc.driver.OracleDriver");
				Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","surendra","surendra");
				String query="insert into doctor_desc values(?,?,?)";
				PreparedStatement ps=con.prepareStatement(query);
				ps.setInt(1,doctor_id);
				ps.setString(2, doctor_name);
				ps.setString(3,doctor_designation);
				
				ps.executeUpdate();
				out.println("Doctor Description Registerd Successfully");
				con.close();
			}
			catch(Exception e)
			{
				out.println("Doctor Description Not Registerd ");
				out.println("Something is Fishy...........");
			}
	
	 %>
</body>
</html>