<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div class="register">
      <form action="NewDoctorRegisterCode.jsp" name="register" method="post"> 
      <table width="20%">
          <CAption><h2>New DoctorRegistration Form</h2></CAption>
          <tr>
              <td>Doctor Name</td>
              <td><input type="text" name="doctor_name" placeholder="Doctor Name" required="required"></td><br>
          </tr>
           <tr>
              <td>Password</td>
              <td><input type="password" name="doctor_pwd"  required="required"></td><br>
          </tr>
          <tr>
              <td>Gender</td>
              <td>Male<input type="radio" name="gender" value="Male">
                  Female<input type="radio" name="gender" value="Female"><br>
                  Others<input type="radio" name="gender"  value="Others">
             </td>
          </tr>
          <tr>
              <td>Mobile Number</td>
              <td><input type="number" name="doctor_mobile" placeholder="Mobile number" minimum="6000000000" maximum="9999999999" maxlength="10" required="required"></td>
          </tr>
           <tr>
              <td>E-Mail</td>
              <td><input type="email" name="doctor_email" placeholder="E-Mail" ></td>
          </tr>
          <tr>
              <td>Address</td>
              <td>
                  <input type="text" name="doctor_address" maxlength="50" placeholder="Address" required="required"><br>
                </td>
          </tr>
              <td>&emsp;</td>
              <td><input type="submit" value="Register"></td>
          </tr>
      </table>
    </form>
    </div>
</body>
</html>