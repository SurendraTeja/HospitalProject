<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div class="DoctorIdsRegister">
      <form action="DoctorIdsRegisterCode.jsp" name="register" method="post"> 
      <table width="20%">
          <CAption><h2>Doctor Description Form</h2></CAption>
          <tr>
              <td>Doctor Id Number</td>
              <td><input type="number" name="doctor_id"  required="required" placeholder="Doctor Id"></td>
          </tr>
          <tr>
              <td>Doctor Name</td>
              <td><input type="text" name="doctor_name" placeholder="Doctor Name" required="required"></td><br>
          </tr>
           <tr>
              <td>Doctor Designation</td>
              <td><input type="text" name="doctor_designation" placeholder="Doctor Designation" ></td>
          </tr>
         <tr>
              <td>&emsp;</td>
              <td><input type="submit" value="Register"></td>
          </tr>
      </table>
    </form>
    </div>
</body>
</html>