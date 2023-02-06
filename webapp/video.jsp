<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<% 
response.setHeader("Cache-Control","no-catch ,no control,must-revalid");
response.setHeader("Pragma","no-catch");
response.setHeader("Expires","0");
if(session.getAttribute("username")==null){
	response.sendRedirect("login.jsp");
}
%>
<iFrame>https://www.youtube.com/watch?v=G7KNmW9a75Y</iFrame>

</body>
</html>