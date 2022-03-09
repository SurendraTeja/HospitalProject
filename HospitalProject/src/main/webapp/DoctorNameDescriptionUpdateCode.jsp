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
			String doctor_name2=request.getParameter("doctor_name2");
			
			try
			{
				Class.forName("oracle.jdbc.driver.OracleDriver");
				Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","surendra","surendra");
				String query1="update doctor_desc set doctor_name=? where doctor_name=?";
				PreparedStatement ps=con.prepareStatement(query1);
				ps.setString(1, doctor_name2);
				ps.setString(2, doctor_name);
				ResultSet rs1=ps.executeQuery();
					if(rs1.next())
					{
						out.println("Doctor Name Updated SuccessFully");
					}
					else
					{
						out.println("Doctor Name not Updated");
					}
				con.close();
			}
			catch(Exception e)
			{
				out.println("Doctor Name not Updated/Record Not Found");
				out.println("Something is Fishy...........");
			}
			 %>
</body>
</html>