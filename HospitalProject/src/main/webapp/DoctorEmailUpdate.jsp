<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div class="DoctorEmailUpdateCode">
	<form action="DoctorEmailUpdateCode.jsp" method="post">
	<table>
		<tr>
			<td>Old E-Mail </td>
			<td><input type="email" name="doctor_email"></td>
			</tr>
			<tr>
			<td>New E-Mail </td>
			<td><input type="email" name="doctor_email2"></td>
			</tr>
	</table>
	<input type="submit" value="UpdateEmail"><p></p>
	
	</form>
	</div>
</body>
</html>