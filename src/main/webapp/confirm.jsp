<%@page import="java.sql.*"%>
	
	<html>
		<body>
		<%
	String uid=request.getParameter("id");
		try
		{
			Class.forName("com.mysql.cj.jdbc.Driver");
	    	Connection cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/jdbc2","root","mysql");
	    	PreparedStatement ps=cn.prepareStatement("select * from productinfo where pid=?");
	    	ps.setString(1,uid);
	    	ResultSet rst=ps.executeQuery();
	    	if(rst.next())
	    	{
	    		%>
	    		<%@ include file="menu.jsp" %>
	    		<form action="confirmDelete.jsp">
	    		<table border="1" class="tar" width="45%">
				<tr style='background-color:red;color:white'>
				<th colspan="2" align="center">Product Details</th>
				</tr>
				<tr>
				    <th align="left">Product Id</th>
				     <td>
				     <input type="hidden" value="<%=uid%>" name="pid">
				     <%=uid%>
				     </td>
				</tr>
				<tr>
				    <th align="left">Product Name</th>
				     <td><%=rst.getString(2)%></td>
				</tr>
				<tr>
				    <th align="left">Product BrandName</th>
				     <td><%=rst.getString(3)%></td>
				</tr> 
				<tr>
				    <th align="left">Product Quantity</th>
				     <td><%=rst.getString(4)%></td>
				</tr>
				<tr>
				    <th align="left">Product Price</th>
				     <td><%=rst.getString(5)%></td>
				</tr>
				<tr>
				<td colspan="2" align="right">
				<button class="bt">Confirm Delete</button>
				</table>
	            </form>	 
				 <% 
	    	}
	    	else
	    	{
	    		%>
	    		<%@ include file="deletePage.jsp"%>
	    		<h1 style="color:red"  class="dv">Product <%=uid%> id does not exist</h1>
	    		<%
	    		
	    	}
		}catch(Exception ex)
		{
			System.out.println(ex);
		}
	%> 
		</body>
	</html>
