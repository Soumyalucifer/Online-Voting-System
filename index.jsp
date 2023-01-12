<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Online Voting System</title>
<link rel="stylesheet" type="text/css" href="styles.css">

</head>
<body>

<%@ include file="navbar.jsp"%>

<div class="form-container">
<form action="VoterLogin" method="post">
<h1>Enter your voter card number</h1>
<label for="voterNumber">Voter ID :</label>
<br>
<br>
<input style="font-size:23px" name="VoterNumber" id="voterNumber" type="text">
<br>
<br>
<button type="submit">Login</button>
<br>
<a href="adminlogin.jsp"><h3>Admin</h3></a>
</form>
</div>

</body>
</html>