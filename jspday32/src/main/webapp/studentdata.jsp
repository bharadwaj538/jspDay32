<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Student Details</title>
</head>
<body>
	<%@page import="java.sql.*"%>
	<%!
	{
		String userName = "root";
		String password = "admin";
		String url = "jdbc:mysql://localhost:3306/examples";
	
		try {
				Class.forName("com.mysql.cj.jdbc.Driver");
				Connection con = DriverManager.getConnection(url,userName,password);
				String sql="insert into student values(?,?,?)";
				PreparedStatement st=con.prepareStatement(sql);
		}catch(Exception e){
			e.printStackTrace();
		}
	}
	%>
	<form action="studentdata.jsp" method="post">
Enter studentid:<input type="text" name= "studentid"><br>
Enter name:<input type="text" name="name"><br>
Enter gender<input type="text" name="gender"><br>
submit<input type="submit" value="send"><br>
</form>
	<jsp:useBean id="userBean" class="ai.jobiak.model.StudentData"></jsp:useBean>
<h3>your Data is:
	First Name:<jsp:getProperty name="userBean" property="studentid"/><br>
	Email:<jsp:getProperty name="userBean" property="name"/><br>
	Mobile#:<jsp:getProperty name="userBean" property="gender"/>

</h3>
</body>
</html>