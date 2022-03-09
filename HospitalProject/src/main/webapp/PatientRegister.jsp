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
      <form action="PatientRegisterCode.jsp" name="register" method="post"> 
      <table width="20%">
          <CAption><h2>Patient Registration Form</h2></CAption>
          <tr>
              <td>Patient Name</td>
              <td><input type="text" name="patient_name" placeholder="Patient Name" required="required"></td><br>
          </tr>
          <tr>
              <td>Gender</td>
              <td>Male<input type="radio" name="gender" value="Male">
                  Female<input type="radio" name="gender" value="Female"><br>
                  Others<input type="radio" name="gender"  value="Others">
             </td>
          </tr>
         
          <tr>
              <td>Date Of Birth</td>
              <td><input type="date" name="patient_dob" required="required"></td>
          </tr>
          <tr>
              <td>Aadhar Number</td>
              <td><input type="number" name="patient_aadhar" placeholder="Aadhar Number"  required="required"></td>
          </tr>
          <tr>
              <td>Mobile Number</td>
              <td><input type="number" name="patient_mobile" placeholder="Mobile number" minimum="6000000000" maximum="9999999999" maxlength="10" required="required"></td>
          </tr>
           <tr>
              <td>E-Mail</td>
              <td><input type="email" name="patient_email" placeholder="E-Mail" ></td>
          </tr>
          <tr>
              <td>Address</td>
              <td>
                  <input type="text" name="patient_address" maxlength="50" placeholder="Address" required="required"><br>
                </td>
          </tr>
        
              <td>State</td>
              <td><input type="text" name="patient_state" maxlength="30" required="required" placeholder="State" required="required"></td>
          </tr>
           <tr>
              <td>Doctor Id.No</td>
              <td><input type="number" name="doctor_id" placeholder="Doctor Id.No" required="required"></td>
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