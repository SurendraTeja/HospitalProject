<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div class="GetPatientId">
	<h1 style=color:red>Display Patient Id</h1>
	<form action="GetpatientIdCode.jsp" method="post">
		Patient Aadhar Number :<input type="number" name="patient_aadhar" required="required"><p></p>
		<input type="submit" value="GetPatientId">
	</form>
	</div>
</body>
</html>