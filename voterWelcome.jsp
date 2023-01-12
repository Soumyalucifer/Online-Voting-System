<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Welcome Voter</title>
</head>
<%@ include file="navbar.jsp"%>
<body>

<div class="form-container">
<form action="Vote" method="post">
<h3>Please fill the required details</h3>
<label for="voterNumber">Voter ID :</label>
<br>
<input style="font-size:23px" name="VoterNumber" id="voterNumber" type="text">
<br>
<br>
<label for="partie">Choose a Partie:</label>
<select name="partie" id="partie">

  <option value="aap">Aam Admi Party</option>
  <option value="bjp">BJP</option>
  <option value="bsp">BSP</option>
  <option value="congress">Congress</option>
  <option value="cpi">CPI</option>
</select>
<br>
<br>
<button type="submit">Submit</button>


</form>
</div>

</body>
</html>