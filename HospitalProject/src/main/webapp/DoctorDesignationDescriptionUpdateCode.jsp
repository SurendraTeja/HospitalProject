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
			String doctor_desg=request.getParameter("doctor_desg");
			String doctor_desg2=request.getParameter("doctor_desg2");
			
			try
			{
				Class.forName("oracle.jdbc.driver.OracleDriver");
				Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","surendra","surendra");
				String query1="update doctor_desc set doctor_designation=? where doctor_designation=?";
				PreparedStatement ps=con.prepareStatement(query1);
				ps.setString(1, doctor_desg2);
				ps.setString(2, doctor_desg);
				ResultSet rs1=ps.executeQuery();
					if(rs1.next())
					{
						out.println("Doctor Designation Updated SuccessFully");
					}
					else
					{
						out.println("Doctor Designation not Updated");
					}
				con.close();
			}
			catch(Exception e)
			{
				out.println("Doctor Designation not Updated/Record Not Found");
				out.println("Something is Fishy...........");
			}
			 %>
</body>
</html>