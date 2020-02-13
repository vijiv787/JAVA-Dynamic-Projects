<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.SQLException"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<% 	
		Connection con = null;
		PreparedStatement pstmt = null;
		
		try 
		{
			Class.forName("com.mysql.jdbc.Driver");
			String dbUrl = "jdbc:mysql://localhost:3306/train_project_db";
			con = DriverManager.getConnection(dbUrl,"root","root");
			String quary = "insert into user_info values (?,?,?,?)";
			pstmt = con.prepareStatement(quary);
			
			String username = request.getParameter("username");
			String password = request.getParameter("password");
			String email = request.getParameter("Email");
			String phone = request.getParameter("phone");
			pstmt.setString(1, username);
			pstmt.setString(2, password);
			pstmt.setString(3, email);
			pstmt.setString(4, phone);
			int count = pstmt.executeUpdate();
		if(count>0){
			out.println("<h1>Registered Successfully</h1>");
		}
		else{
			out.println("<h1>Registered Unsuccessfull</h1>");
		}
		} 
		catch (SQLException e) 
		{
			e.printStackTrace();
		}
				finally 
				{
					if (pstmt!=null) 
					{
						try 
						{
							pstmt.close();
						}
						catch (SQLException e) 
						{
							e.printStackTrace();
						}
					}
					if (con!=null) 
					{
						try 
						{
							con.close();
						}
						catch (SQLException e) 
						{
							e.printStackTrace();
						}
					}
				}
		%>
</body>
</html>