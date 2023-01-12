<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>New Register</title>
<link rel="stylesheet" type="text/css" href="styles.css">
</head>
<%@ include file="navbar.jsp"%>
<body>

<div class="form-container">
<form action="RegisterVoter" method="post">

<label for="uName">Name:</label>
<br>
<input style="font-size:23px" name="uName" id="uName" type="text">
<br>
<br>
<label for="pNumber">Phone Number:</label>
<br>
<input style="font-size:23px" name="pNumber" id="pnumber" type="number">
<br>
<br>
<label for="email">Email:</label>
<br>
<input style="font-size:18px" name="email" id="email" type="email">
<br>
<br>
<label for="votercardnumber">Voter Card Number:</label>
<br>
<input style="font-size:18px" name="votercardnumber" id="votercardnumber" type="text">
<br>
<br>
<label for="address">Address</label>
<br>
<textarea name="address" id="address" rows="4" cols="8"></textarea>
<br>
<br>
<label for="dob">Date Of Birth</label>
<br>
<input style="font-size:18px" name="dob" id="dob" type="date">
<br>
<br>
<button type="submit">Register</button>

</form>
</div>

</body>
</html>