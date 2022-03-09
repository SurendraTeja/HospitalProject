<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<div class="DoctorDesignationDescriptionUpdate">
	<form action="DoctorDesignationDescriptionUpdateCode.jsp" method="post">
	<table>
		<tr>
			<td>Old Doctor Designation </td>
			<td><input type="text" name="doctor_desg"></td>
			</tr>
			<tr>
			<td>New Doctor Designation</td>
			<td><input type="text" name="doctor_desg2"></td>
			</tr>
	</table>
	<input type="submit" value="UpdateDesignation"><p></p>
	
	</form>
	</div>
</body>
</html>