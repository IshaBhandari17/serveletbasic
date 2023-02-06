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
welcome ${ username}! <br>
<a herf = "video.jsp"> Link to Video</a>
<form action ="Logut">
<input type ="submit" value= 'Logut'>
</form>

</body>
</html>