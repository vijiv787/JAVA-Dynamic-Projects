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
	
			height: 400px;width: 20%;top: 50%;left: 20%;
			margin-left: 10%;margin-top: 7%;
	
	}
	input[type=text], input[type=password] {
			  width: 100%;
			  padding: 12px 20px;
			  margin: 10px 0;
			  display: inline-block;
			  border: 1px solid #000;
			  box-sizing: border-box;
	}
	button {
			  background-color: #f8aeae;
			  color: white;
			  padding: 14px 20px;
			  margin: 10px 0;
			  border: none;
			  width: 100%;
	}
	button:hover {
 			 opacity: 0.8;
}
</style>
</head>
<body>
	<h1 style="text-align: center;background-color: yellow;">Train Project</h1>
	<form action="search">
		<input type="text" placeholder="Enter the train_id" name="train_id"><br>
		<button type="submit" vaule="Search">Search</button>
	</form>
</body>
</html>
