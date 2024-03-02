<%@page import="java.sql.*"%>
<%@ include file="menu.jsp" %>


	<html>
		<body>
			<table border="1" class="tar">
				<tr>
				    <th>Product Id</th>
					<th>Product Name</th>
					<th>Product BrandName</th>
					<th>Product Quantity</th>
					<th>Product Price</th>
				</tr>
<% 
                   try 
				    {

				    	Class.forName("com.mysql.cj.jdbc.Driver");
				    	Connection cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/jdbc2","root","mysql");
				    	Statement st=cn.createStatement();
				    	ResultSet rst=st.executeQuery("select * from productinfo");
				    	while(rst.next())
				    	{
				    	  %>
				    	  <tr>
				    	   <td><%=rst.getString(1)%></td>
				    	   <td><%=rst.getString(2)%></td>
				    	    <td><%=rst.getString(3)%></td>
				    	     <td><%=rst.getString(4)%></td>
				    	      <td><%=rst.getString(5)%></td>
				    	      </tr>
				    		<% 
				    	}

					}catch(Exception ex)
				    {
						System.out.println(ex); 
					}
%>
			</table>
		</body>
	</html>