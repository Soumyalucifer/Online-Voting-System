<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@page import="java.sql.DriverManager"%>   
 <%@page import="java.sql.ResultSet"%>
 <%@page import="java.sql.Statement"%>  
 <%@page import="java.sql.Connection"%>  
 <%@page import="java.sql.PreparedStatement"%>    
 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Results</title>
<link rel="stylesheet" type="text/css" href="styles.css">

<% 
	Integer a[]=new Integer[100];
	
	Class.forName("com.mysql.cj.jdbc.Driver");
	java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/onlineVoting","root","PFH#23kgrw9");
	PreparedStatement preparedStatement = con.prepareStatement("select partie,count(partie) as c from vote group by partie");
	ResultSet rs =((java.sql.Statement)preparedStatement).executeQuery("select partie,count(partie) as c from vote group by partie");
	
	int i=0;
	while(rs.next()){
		int temp=Integer.valueOf(rs.getString("c"));
		a[i] = temp-1;
		i++;
	}
%>


</head>
<%@ include file="adminNavbar.jsp"%>
<body>

<div class="checkTable">
<table>
<tr>
<th>
Parties
</th>
<th>
Names
</th>
<th>
Votes
</th>
</tr>

<tr>
<td>
<img src="https://spiderimg.amarujala.com/assets/images/2016/09/23/aam-aadmi-party_1474636491.jpeg"alt="Aam Asdmi Party">
</td>
<td>Aam Aadmi Party</td>
<td><%=a[0]%></td>
</tr>

<tr>
<td>
<img src="https://th.bing.com/th/id/R.0e5be7d76f7b426d7900abe02611fd82?rik=2%2bfZ8dEcY7uSpA&pid=ImgRaw&r=0"alt="BJP">
</td>
<td>BJP</td>
<td><%=a[1] %></td>
</tr>

<tr>
<td>
<img src="https://th.bing.com/th/id/R.92a99015e38090a48f7b87b9eab81611?rik=53BHNQj3ELWJ1w&pid=ImgRaw&r=0"alt="BSP">
</td>
<td>BSP</td>
<td><%=a[2]%></td>
</tr>

<tr>
<td>
<img src="https://th.bing.com/th/id/OIP.qO_9Key5uXQKWBiMObVzHgHaGh?pid=ImgDet&rs=1"alt="Congress">
</td>
<td>Congress</td>
<td><%=a[3]%></td>
</tr>

<tr>
<td>
<img src="https://th.bing.com/th/id/OIP.OnJX5RYp-d4301-S3I2D9wHaE8?pid=ImgDet&rs=1"alt="CPI">
</td>
<td>CPI</td>
<td><%=3%></td>
</tr>


</table>
</div>

</body>
</html>