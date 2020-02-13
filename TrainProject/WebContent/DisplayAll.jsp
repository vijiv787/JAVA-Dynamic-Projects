<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.SQLException"%>
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
	table {
  			
  			color: yellow;
	}
	
</style>
</head>
<body>
<% 
		Connection con = null;
		java.sql.Statement stmt= null;
		ResultSet rs = null;
		try 
		{
			// load Driver
			Class.forName("com.mysql.jdbc.Driver");
			
			// get the connection via Driver
			String dbUrl = "jdbc:mysql://localhost:3306/train_project_db";
			con = DriverManager.getConnection(dbUrl,"root","root");
			
			// create sql quaries and select JDCB statement
			String quary = "select* from train_info";
			
			stmt = con.createStatement();
			
			// Execute the query
			rs = stmt.executeQuery(quary);
		
			// process the result
			while (rs.next()) 
			{
		%>
				<html>
					<body>
						<table >
							<tr>
								<td><h2> <% 
								out.println("Train Id---> "+rs.getString(1));
								%>
								</td>
							
								<td><h2> <% 
								
								out.println("Name---> "+rs.getString(2));
								%>
								</td>
							
								<td><h2> <% 
								
								out.println("Src---> "+rs.getString(3));
								%>
								</td>
							
								<td><h2> <% 
							
								out.println("Dest---> "+rs.getString(4));%>
								</td>
							</tr>
						</table>
					</body>
				</html>
			<%	 
			}
		} 
		catch (ClassNotFoundException | SQLException e) 
		{
			e.printStackTrace();
		}
		//Close All JDBC Object
		finally 
		{
			if (rs!=null) 
			{
				try {
					rs.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
			if (stmt!=null) 
			{
				try {
					stmt.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
			if (con!=null) 
			{
				try {
					con.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
		}
		%>
</body>
</html>
