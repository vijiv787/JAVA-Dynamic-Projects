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
		
		try 
		{
			Class.forName("com.mysql.jdbc.Driver");
			String dbUrl = "jdbc:mysql://localhost:3306/train_project_db";
			con = DriverManager.getConnection(dbUrl,"root","root");
			String quary = "insert into train_info values (?,?,?,?)";
			pstmt = con.prepareStatement(quary);
			
			String trainid = request.getParameter("train_id");
			String name = request.getParameter("name");
			String src = request.getParameter("src");
			String dest = request.getParameter("dest");
			pstmt.setString(1, trainid);
			pstmt.setString(2, name);
			pstmt.setString(3, src);
			pstmt.setString(4, dest);
			int count = pstmt.executeUpdate();
			con.commit();
			out.println("<h1>Registered Successfully</h1>");
			//con.commit();
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