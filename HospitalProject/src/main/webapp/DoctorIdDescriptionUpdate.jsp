<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div class="DoctorIdsDescriptionUpdate">
	<form action="DoctorIdsDescriptionUpdateCode.jsp" method="post">
	<table>
		<tr>
			<td>Old Id Number </td>
			<td><input type="number" name="doctor_id"></td>
			</tr>
			<tr>
			<td>New Id Number</td>
			<td><input type="number" name="doctor_id2"></td>
			</tr>
	</table>
	<input type="submit" value="UpdateId"><p></p>
	
	</form>
	</div>
</body>
</html>