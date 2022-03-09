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
			String patient_name= request.getParameter("patient_name");
			String patient_gender=request.getParameter("gender");
			String patient_dob=request.getParameter("patient_dob");
			long patient_aadhar=Long.parseLong(request.getParameter("patient_aadhar"));
			long patient_mobile=Long.parseLong(request.getParameter("patient_mobile"));
			String patient_email=request.getParameter("patient_email");
			String patient_address=request.getParameter("patient_address");
			String patient_state=request.getParameter("patient_state");
			int doctor_id=Integer.parseInt(request.getParameter("doctor_id"));
			try
			{
				Class.forName("oracle.jdbc.driver.OracleDriver");
				Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","surendra","surendra");
				String query="insert into patients(patient_id,patient_name,patient_gender,patient_dob,patient_aadhar_number,patient_mobile_number,patient_email,patient_address,patient_state,doctor_id,date_of_join)values(pid.nextval,?,?,?,?,?,?,?,?,?,sysdate)";
				PreparedStatement ps=con.prepareStatement(query);
				ps.setString(1, patient_name);
				ps.setString(2,patient_gender);
				ps.setString(3,patient_dob);
				ps.setLong(4, patient_aadhar);
				ps.setLong(5, patient_mobile);
				ps.setString(6, patient_email);
				ps.setString(7, patient_address);
				ps.setString(8,patient_state);
				ps.setInt(9,doctor_id);
				ps.executeUpdate();
				out.println("New Patient Registerd Successfully");
				con.close();
			}
			catch(Exception e)
			{
				out.println("Check details once Aadhar and Mobile Number Should be Unique");
				out.println("Something is Fishy...........");
			}
	
	 %>
</body>
</html>