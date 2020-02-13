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
	form {
	
			height: 400px;width: 30%;top: 50%;left: 50%;
			margin-left: 20%;margin-top: 10%;
	
	}
	.border-box{
	
			margin-left: 8%;
			margin-top: 5%;
			width: 30%;
	}
	button {
			  background-color: 83;
			  color: black;
			  padding: 14px 20px;
			  margin: 10px 0;
			  border: 1px solid #000;
			  width: 50%;
	}
	button:hover {
 			 opacity: 0.8;
	}
	.container{
			padding: 20px;
			width: 300px;
			margin: auto; 
} 
</style>
</head>
<body>
	<h1 style="text-align: center;background-color: yellow;">Train Project</h1>
	<div id="signup" class="border-box">
	<form>
		<div class="container">
		<button type="submit" href="search.jsp"><a href="Search.jsp">search</a></button><br>
		<button type="submit" href="displayall.jsp"><a href="DisplayAll.jsp">Display All</a></button><br>
		<button type="submit" href="dashboard.jsp"><a href="AddTrain.jsp">Add Train</a></button>
		</div>
	</form>
	</div>
</body>
</html>
