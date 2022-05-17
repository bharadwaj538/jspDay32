<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="ai.jobiak.model.StudentsData"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Show Data</title>
</head>
<body>
	<%@page import="java.util.ArrayList"%>
	<%@page import="java.sql.*"%>
	<%!
	{
		String userName = "root";
		String password = "admin";
		String url = "jdbc:mysql://localhost:3306/examples";
		ArrayList<StudentsData> studentdetails=new ArrayList<>();
	
		try {
				Class.forName("com.mysql.cj.jdbc.Driver");
				Connection con = DriverManager.getConnection(url,userName,password);
				Statement stmt=con.createStatement();
				String sql="select * from students";
				ResultSet rs=stmt.executeQuery(sql);
				while(rs.next()) {
					System.out.println(rs.getString(1)+" "+rs.getString(2)+"  "+rs.getString(3)+" "+rs.getString(4));
				}
		}catch(Exception e){
			e.printStackTrace();
		}
	}
	%>

</body>
</html>