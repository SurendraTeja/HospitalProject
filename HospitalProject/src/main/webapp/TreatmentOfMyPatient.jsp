<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div class="TreatmentOfMyPatient">
	<h1 style=color:red>Display Patient Id</h1>
	<form action="TreatmentOfMyPatientCode.jsp" method="post">
		Patient ID Number :<input type="number" name="patient_id" required="required"><p></p>
		Treatment Report:<input type="text" name="patient_treatment" required="required"><p></p>
		<input type="submit" value="SubmitReport">
	</form>
	</div>
</body>
</html>