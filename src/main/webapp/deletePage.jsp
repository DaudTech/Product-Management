<%@page import="java.sql.*"%>
<%@ include file="menu.jsp" %>
	<html>
	<body>
	<form action="confirm.jsp">
	<table  class="tab">
	<tr>
	<td>Enter Product Id</td>
	<td><input type="text" name="id"  class="box" required></td>
	
	<td><button class="bt">Delete Record</button></td>
	</tr>
	</table>
	</form>
	</body>
	</html>