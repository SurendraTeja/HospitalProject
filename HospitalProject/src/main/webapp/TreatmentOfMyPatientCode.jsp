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
			String patient_treatment=request.getParameter("patient_treatment");
			try
			{
				Class.forName("oracle.jdbc.driver.OracleDriver");
				Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","surendra","surendra");
				String query="update patients set patient_treatment=? where patient_id=?";
				PreparedStatement ps=con.prepareStatement(query);
				ps.setString(1, patient_treatment);
				ps.setInt(2,patient_id);
				ps.executeUpdate();
				out.println("Treatment Report Updated Successfully");
				con.close();
			}
			catch(Exception e)
			{
				out.println("Something is Fishy...........");
			}
	
	 %>
</body>
</html>