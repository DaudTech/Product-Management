
<%@page import="java.sql.*"%>
<%@ include file="menu.jsp" %>
<html>
		<body>
			<%
				String pid=request.getParameter("pid");
			    try
			    {
			    	Class.forName("com.mysql.cj.jdbc.Driver");
			    	Connection cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/jdbc2","root","mysql");
			    	PreparedStatement ps=cn.prepareStatement("delete from productinfo where pid=?");
			    	ps.setString(1,pid);
			    	ps.executeUpdate();
			    }catch(Exception ex)
			    {
			    	System.out.println(ex);
			    }
			%>
			<h1 class="dv">Record deleted Successfully</h1>
		</body>
		</html>
