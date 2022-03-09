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
			int doctor_id2=Integer.parseInt(request.getParameter("doctor_id2"));
			
			try
			{
				Class.forName("oracle.jdbc.driver.OracleDriver");
				Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","surendra","surendra");
				String query1="update doctor_desc set doctor_id=? where doctor_id=?";
				PreparedStatement ps=con.prepareStatement(query1);
				ps.setInt(1, doctor_id2);
				ps.setInt(2, doctor_id);
				ResultSet rs1=ps.executeQuery();
					if(rs1.next())
					{
						out.println("Id Number Updated SuccessFully");
					}
					else
					{
						out.println("Id Number not Updated");
					}
				con.close();
			}
			catch(Exception e)
			{
				out.println("Id Number not Updated/Record Not Found");
				out.println("Something is Fishy...........");
			}
			 %>
</body>
</html>