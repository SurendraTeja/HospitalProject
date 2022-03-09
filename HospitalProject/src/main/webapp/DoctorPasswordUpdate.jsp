<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div class="DoctorPasswordUpdateCode">
	<form action="DoctorPasswordUpdateCode.jsp" method="post">
	<table>
		<tr>
			<td>Old User Password </td>
			<td><input type="text" name="doctor_password"></td>
			</tr>
			<tr>
			<td>New User Password </td>
			<td><input type="text" name="doctor_password2"></td>
			</tr>
	</table>
	<input type="submit" value="UpdatePassword"><p></p>
	
	</form>
	</div>
</body>
</html>