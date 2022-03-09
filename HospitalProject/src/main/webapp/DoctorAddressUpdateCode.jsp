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
			String doctor_address= request.getParameter("doctor_address");
			String doctor_address2= request.getParameter("doctor_address2");
			
			try
			{
				Class.forName("oracle.jdbc.driver.OracleDriver");
				Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","surendra","surendra");
				String query1="update doctors set doctor_address=? where doctor_address=?";
				PreparedStatement ps=con.prepareStatement(query1);
				ps.setString(1, doctor_address2);
				ps.setString(2, doctor_address);
				ResultSet rs1=ps.executeQuery();
					if(rs1.next())
					{
						out.println("Address Updated SuccessFully");
					}
					else
					{
						out.println("Address not Updated");
					}
				con.close();
			}
			catch(Exception e)
			{
				out.println("Address not Updated/Record Not Found");
				out.println("Something is Fishy...........");
			}
			 %>
</body>
</html>