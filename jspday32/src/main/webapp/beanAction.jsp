<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Bean Action</title>
</head>
<body>
<h3>check...</h3>

<h2>Enter Your Data</h2>
<form action="beanAction.jsp" method="post">
Enter first name:<input type="text" name= "fname"><br>
Enter email:<input type="text" name="email"><br>
Enter mobile no<input type="text" name="mobile"><br>
submit<input type="submit" value="send"><br>
</form>

<jsp:useBean id="userBean" class="ai.jobiak.model.User"></jsp:useBean>
<jsp:setProperty property="fname" name="userBean" param="fname"/>
<jsp:setProperty property="email" name="userBean" param="email"/>
<jsp:setProperty property="mobile" name="userBean" param="mobile"/>


<jsp:forward page="showBeanData.jsp"></jsp:forward>
<hr>
</body>
</html>