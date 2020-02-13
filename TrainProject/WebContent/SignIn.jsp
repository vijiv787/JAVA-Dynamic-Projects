<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
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
		ResultSet rs = null;
		
		try 
		{
			Class.forName("com.mysql.jdbc.Driver");
			String dbUrl = "jdbc:mysql://localhost:3306/test";
			con = DriverManager.getConnection(dbUrl,"root","root");
			String quary = "select * from user_info where username = ? and password = ?";
			pstmt = con.prepareStatement(quary);
			
			String username = request.getParameter("username");
			String password = request.getParameter("password");
			pstmt.setString(1, username);
			pstmt.setString(2, password);
			rs = pstmt.executeQuery();
		
			if (rs.next()) 
			{
	
				response.sendRedirect("dashboard.jsp");
		 
			}
		
			else
			
			{
		%>
				<h1>User not found</h1>
		<%
			}
		} 
		catch (SQLException e) 
		{
			e.printStackTrace();
		}
				finally 
				{
					if (rs!=null) 
					{
						try 
						{
							rs.close();
						}
						catch (SQLException e) 
						{
							e.printStackTrace();
						}
					}
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