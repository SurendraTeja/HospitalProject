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
			String doctor_password= request.getParameter("doctor_password");
			String doctor_password2= request.getParameter("doctor_password2");
			
			try
			{
				Class.forName("oracle.jdbc.driver.OracleDriver");
				Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","surendra","surendra");
				String query1="update doctors set doctor_password=? where doctor_password=?";
				PreparedStatement ps=con.prepareStatement(query1);
				ps.setString(1, doctor_password2);
				ps.setString(2, doctor_password);
				ResultSet rs1=ps.executeQuery();
					if(rs1.next())
					{
						out.println("Password Updated SuccessFully");
					}
					else
					{
						out.println("Password not Updated");
					}
				con.close();
			}
			catch(Exception e)
			{
				out.println("Password not Updated/Record Not Found");
				out.println("Something is Fishy...........");
			}
			 %>
</body>
</html>