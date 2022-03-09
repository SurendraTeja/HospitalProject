<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Dean Login page</title>
</head>
<body>
<div class="Deanlogin">
	</table>
      <center><div style="border: 3px solid;height: 300px;width: 600px;">
      <form action="DeanLoginCode.jsp" name="login" method="post">
      <center><h3>Dean Login</h3>
      <table width="60%">
        <tr>
            <td>User Name</td>
            <td><input type="text" name="dean_name" required="required"></td>  
        </tr>
        <tr>
            <td>Password</td>
            <td><input type="password" name="dean_password"></td>
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