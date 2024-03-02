
<%@page import="java.sql.*"%>
<%@ include file="menu.jsp" %>
<html>
		<body>
			<%
				String userid=request.getParameter("id");
			    String Name=request.getParameter("name");
			    String brandName=request.getParameter("bname");
			    String pquantity=request.getParameter("quantity");
			    String rate=request.getParameter("price");
			    try
			    {
			    	Class.forName("com.mysql.cj.jdbc.Driver");
			    	Connection cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/jdbc2","root","mysql");
			    	PreparedStatement ps=cn.prepareStatement("insert into  productinfo values(?,?,?,?,?)");
			    	ps.setString(1,userid);
			    	ps.setString(2,Name);
			    	ps.setString(3,brandName);
			    	ps.setString(4,pquantity);
			    	ps.setString(5,rate);
			    	ps.executeUpdate();
			    	
			    }catch(Exception ex)
			    {
			    	System.out.println(ex);
			    }
			%>
			<h1 class="dv">Record Saved Successfully</h1>
		</body>
		</html>
