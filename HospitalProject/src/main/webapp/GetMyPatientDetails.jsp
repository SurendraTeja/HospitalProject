<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div class="GetMyPatientDetails">
	<h1 style=color:red>Display Patient Id</h1>
	<form action="GetMyPatientDetailsCode.jsp" method="post">
		Enter Your ID Number :<input type="number" name="doctor_id" required="required"><p></p>
		<input type="submit" value="GetMyPatientDetailsCode">
	</form>
	</div>
</body>
</html>