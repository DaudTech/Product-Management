<%@page import="java.sql.*"%>
	
	<html>
		<body>
		<%
	     String uid=request.getParameter("newid");
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
	    		<form action="confirmEdit2.jsp">
	    		<table border="1" class="tar" width="45%">
				<tr style='background-color:red;color:white'>
				<th colspan="2" align="center">Product Details</th>
				</tr>
		<tr>
				    <td class="pa"  color="orange">Product Id</td>
				     <td>
				     <input type="hidden" value="<%=uid%>" name="pid">
				     <%=uid%>
				     </td>
	  </tr>		   
	 <tr>
	<td class="pa">Enter Product Name</td>
	<td><input type="text" name="Newname"  class="box" required></td>
	</tr>
	<tr>
	<td  class="pa">Enter Product Brand Name</td>
	<td><input type="text" name="Newbname"  class="box" required></td>
	</tr>
	<tr>
	<td  class="pa">Enter Product Quantity</td>
	<td><input type="text" name="Newquantity"  class="box" required></td>
	</tr>
	<tr>
	<td  class="pa">Enter Product Price</td>
	<td><input type="text" name="Newprice"  class="box" required></td>
	</tr>
				<tr>
				<td colspan="2" align="right">
				<button class="bt">Confirm Edit</button>
				</td></tr>
				</table>
	            </form>	 
				 <% 
	    	}
	    	else
	    	{
	    		%>
	    		<%@ include file="editPage.jsp"%>
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
