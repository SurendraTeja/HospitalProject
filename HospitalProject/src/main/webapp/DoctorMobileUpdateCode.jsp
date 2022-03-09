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
			long doctor_mobile=Long.parseLong(request.getParameter("doctor_mobile"));
			long doctor_mobile2=Long.parseLong(request.getParameter("doctor_mobile2"));
			
			try
			{
				Class.forName("oracle.jdbc.driver.OracleDriver");
				Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","surendra","surendra");
				String query1="update doctors set doctor_mobile=? where doctor_mobile=?";
				PreparedStatement ps=con.prepareStatement(query1);
				ps.setLong(1, doctor_mobile2);
				ps.setLong(2, doctor_mobile);
				ResultSet rs1=ps.executeQuery();
					if(rs1.next())
					{
						out.println("Mobile Number Updated SuccessFully");
					}
					else
					{
						out.println("Mobile Number not Updated");
					}
				con.close();
			}
			catch(Exception e)
			{
				out.println("Mobile Number not Updated/Record Not Found");
				out.println("Something is Fishy...........");
			}
			 %>
</body>
</html>