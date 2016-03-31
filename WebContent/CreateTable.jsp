<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>createtable.html</title>
</head>
<body>
<%if (Integer.parseInt(request.getParameter("columns"))<=0) 
	response.sendRedirect("classexercise.jsp?Error=1&name="+request.getParameter("name"));
  if (Integer.parseInt(request.getParameter("rows"))<=0) 
	response.sendRedirect("classexercise.jsp?Error=2&name="+request.getParameter("name"));%>
</head><body>Hello <%=request.getParameter("name") %>. Here is your table<br>
<table style="text-align: left; width: 100%;" border="1" cellpadding="2" cellspacing="2">
<% int c =Integer.parseInt(request.getParameter("columns"));
   int r =Integer.parseInt(request.getParameter("rows"));
for(int i=1;i<r+1;i++){
	out.print("<tr>");
	for(int v=1;v<c+1;v++){
	out.print("<td>");
	out.print(i+","+v);
	out.print("</td>");
	}
	out.print("</tr>");
	}%>

</table>
<br>
</body>
</html>