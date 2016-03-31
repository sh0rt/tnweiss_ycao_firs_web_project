<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title></title>
</head>
<body>

  
</head><body>
<% String error = request.getParameter("Error");
   if (error != null){
		if(error.equals("1")){
			out.print("<p>Hello:"+ request.getParameter("name")+ ", please provide a column value >0</p>");
			}else if(error.equals("2")){
			out.print("<p>Hello:"+ request.getParameter("name")+ ", please provide a row value >0</p>");
			}
		}%>
<form action="CreateTable.jsp"><br>
<table style="text-align: left; width: 463px; height: 116px;" border="1" cellpadding="2" cellspacing="2">
  <tbody>
    <tr>
      <td style="vertical-align: top;">Enter your name<br>
      </td>
      <td style="vertical-align: top;"><input name="name"><br>
      </td>
    </tr>
    <tr>
      <td style="vertical-align: top;">Enter number of rows<br>
      </td>
      <td style="vertical-align: top;"><input name="rows" value="1"><br>
      </td>
    </tr>
    <tr>
      <td style="vertical-align: top;">Enter number of columns<br>
      </td>
      <td style="vertical-align: top;"><input name="columns" value="1"><br>
      </td>
    </tr>
    <tr>
      <td style="vertical-align: top;"><input value="Submit" name="Submit" type="submit"><br>
      </td>
      <td style="vertical-align: top;"><input name="reset" value="Reset" type="reset"><br>
      </td>
    </tr>
  </tbody>
</table>
<br>

</form>
</body>
</html>