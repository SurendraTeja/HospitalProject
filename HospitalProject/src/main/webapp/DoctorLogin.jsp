<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Doctor Login page</title>
</head>
<body>
<div class="Doctorlogin">
	</table>
      <center><div style="border: 3px solid;height: 300px;width: 600px;">
      <form action="DoctorLoginCode.jsp" name="login" method="post">
      <center><h3>Doctor Login</h3>
      <table width="60%">
        <tr>
            <td>Doctor Name</td>
            <td><input type="text" name="doctor_name" required="required"></td>  
        </tr>
        <tr>
            <td>Password</td>
            <td><input type="password" name="doctor_password"></td>
        </tr>
        <tr>
            <td>&emsp;</td>
            <td><input type="submit" value="Login"></td>
        </tr>
      </table></center><br>
  </form>
  </div>
</body>
</html>