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
		long patient_aadhar=Long.parseLong(request.getParameter("patient_aadhar"));
		
		try
		{
			Class.forName("oracle.jdbc.driver.OracleDriver");
			Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","surendra","surendra");
			String query="select * from patients where patient_aadhar_number=?";
			PreparedStatement ps=con.prepareStatement(query);
			ps.setLong(1, patient_aadhar);
			ResultSet rs=ps.executeQuery();
			ResultSetMetaData rss=rs.getMetaData();
			int n=rss.getColumnCount();
			out.println("<table border=1>");
			out.println("<tr>");
			for(int i=1;i<=n;i++)
			{	
				out.println("<td>"+rss.getColumnName(i)+"</td>");  
			}
		    out.println("</tr>");
			while(rs.next())
			{
				out.println("<tr>");
				for(int i=1;i<=n;i++)
				{
					out.println("<td>"+rs.getString(i)+"</td>");
				}
				out.println("</tr>");
			}
			out.println("</table>");	
			con.close();
		}
		catch(Exception e)
		{
			out.println("Invalid details");
			out.println("Something is Fishy...........");
		}
		 %>
</body>
</html>