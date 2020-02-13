<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
	body {
		
			background-image: url("train.jpg");
			background-repeat: no-repeat;
			background-size: cover;
			background-attachment: fixed;
	}
	.tab1{
			margin-left: 0.5%;
			margin-top: 7%;
			width: 40%;
	}
	table, th, td {
  border: 2px solid black;height:50px; width:300px;
  color: red;border-color: yellow;
	}
	.about{
		background-color: #696969;height: 200px;
	}
	h1{
		color: yellow;
	}
</style>
</head>
<body>

<marquee behavior="scroll" direction="left" scrollamount="40"><h1 >Train Project</h1></marquee>
<div class="tab1">
	<table border="5"  align="center" cellpadding="10" style="border-collapse: collapse" >
	<tr>
          <th colspan="3" align="center">Train Project</th>
    </tr>
    <tr>
          <td><a  href="register.jsp">Register</a></td>
          <td><a href="login.jsp">Login</a></td>
          <td><a href="https://en.wikipedia.org/wiki/Train">AboutUs</a></td>
    </tr>
    <!-- <tr>
    	<td colspan="3" align="center">Introduction</td>
    </tr> -->
    </table>
    </div>
</body>
</html>
