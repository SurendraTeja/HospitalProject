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
			String doctor_name= request.getParameter("doctor_name");
			String doctor_pwd= request.getParameter("doctor_pwd");
			String doctor_gender=request.getParameter("gender");
			long doctor_mobile=Long.parseLong(request.getParameter("doctor_mobile"));
			String doctor_email=request.getParameter("doctor_email");
			String doctor_address=request.getParameter("doctor_address");
			try
			{
				Class.forName("oracle.jdbc.driver.OracleDriver");
				Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","surendra","surendra");
				String query="insert into doctors(doctor_id,doctor_name,doctor_password,doctor_gender,doctor_mobile,doctor_email,doctor_address)values(did.nextval,?,?,?,?,?,?)";
				PreparedStatement ps=con.prepareStatement(query);
				ps.setString(1, doctor_name);
				ps.setString(2,doctor_pwd);
				ps.setString(3,doctor_gender);
				ps.setLong(4, doctor_mobile);
				ps.setString(5, doctor_email);
				ps.setString(6, doctor_address);
				ps.executeUpdate();
				out.println("New Doctor Registerd Successfully");
				con.close();
			}
			catch(Exception e)
			{
				out.println("Something is Fishy...........");
			}
	
	 %>
</body>
</html>