<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div class="GetDoctorId">
	<h1 style=color:red>Display Patient Id</h1>
	<form action="GetDoctorIdCode.jsp" method="post">
		Doctor Mobile Number :<input type="number" name="doctor_mobile" required="required"><p></p>
		<input type="submit" value="GetDoctorId">
	</form>
	</div>
</body>
</html>