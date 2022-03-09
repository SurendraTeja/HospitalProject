<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div class="DoctorNameDescriptionUpdate">
	<form action="DoctorNameDescriptionUpdateCode.jsp" method="post">
	<table>
		<tr>
			<td>Old Doctor Name </td>
			<td><input type="text" name="doctor_name"></td>
			</tr>
			<tr>
			<td>New Doctor name</td>
			<td><input type="text" name="doctor_name2"></td>
			</tr>
	</table>
	<input type="submit" value="UpdateName"><p></p>
	
	</form>
	</div>
</body>
</html>