<%@page import="java.sql.*"%>
<%@ include file="menu.jsp" %>
<html>
		<body>
			<%
		     	String pid=request.getParameter("pid");
			    String name=request.getParameter("Newname");
			    String bname=request.getParameter("Newbname");
			    String quantity=request.getParameter("Newquantity");
			    String price=request.getParameter("Newprice");
			    try
			    {
			    	Class.forName("com.mysql.cj.jdbc.Driver");
			    	Connection cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/jdbc2","root","mysql");
			    	PreparedStatement ps=cn.prepareStatement("update  productinfo set name=?, brand=?, quantity=?, price=? where pid=?");
			    	
			    	ps.setString(1,name);
			    	ps.setString(2,bname);
			    	ps.setString(3,quantity);
			    	ps.setString(4,price);
			    	ps.setString(5,pid);
			    	ps.executeUpdate();
			    }catch(Exception ex)
			    {
			    	System.out.println(ex);
			    }
			%>
			<h1 class="dv">Record updated Successfully</h1>
		</body>
		</html>
