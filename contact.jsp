<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Contact Us</title>
<link rel="stylesheet" type="text/css" href="styles.css">
</head>
<%@ include file="navbar.jsp"%>
<body>

<div class="form-container">
<form action="Contact" method="post">
<h3>Please fill the required details</h3>
<label for="uName">Name</label>
<br>
<input style="font-size:23px" name="uName" id="uName" type="text">
<br>
<br>
<label for="pNumber">Phone Number</label>
<br>
<input style="font-size:23px" name="pNumber" id="pNumber" type="number">
<br>
<br>
<label for="email">Email</label>
<br>
<input style="font-size:18px" name="email" id="email" type="email">
<br>
<br>
<label for="cmnt">Comment</label>
<br>
<textarea for="cmnt" id="cmnt" name="cmnt" rows="4" cols="8"></textarea>
<br>
<br>
<button type="submit">Submit</button>

</form>
</div>

</body>
</html>