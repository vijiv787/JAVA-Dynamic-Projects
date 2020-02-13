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
	input[type=text], input[type=password] {
			  width: 100%;
			  padding: 12px 20px;
			  margin: 10px 0;
			  display: inline-block;
			  border: 1px solid #000;
			  box-sizing: border-box;
	}
	.border-box{
	
			margin-left: 8%;
			margin-top: 5%;
			width: 40%;
	}
	button {
			  background-color: #4CAF50;
			  color: white;
			  padding: 14px 20px;
			  margin: 10px 0;
			  border: none;
			  width: 100%;
	}

	button:hover {
	 			 opacity: 0.8;
	}
	.container{
				padding: 20px;
				width: 300px;
				margin: auto; 
	}
	 #signup{
			background-color: rgba(240,240,240, 0.4);
		
	} 
	</style>
</head>
<body>
<h1 style="text-align: center;background-color: yellow;">Train Project</h1>
	<div id="signup" class="border-box">
	<form action="register">
		<div class="container">
		<input type="text" placeholder="Enter the train_id" name="train_id"><br>
		<input type="text" placeholder="Enter the train name" name="name"><br>
		<input type="text" placeholder="Enter the train src" name="src"><br>
		<input type="text" placeholder="Enter the train dest" name="dest"><br>
		<button type="submit" vaule="register">register</button>
		</div>
	</form>
	</div>
</body>
</html>
