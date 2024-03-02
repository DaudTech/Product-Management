<%@ include file="menu.jsp" %>
	<html>
	<body>
	<form action="save.jsp" method="post">
	<table class="tab">
	<tr>
	<td class="pa">Enter Product Id</td>
	<td><input type="text" name="id"  class="box" required></td>
	</tr>
	<tr>
	<td class="pa">Enter Product Name</td>
	<td><input type="text" name="name"  class="box" required></td>
	</tr>
	<tr>
	<td  class="pa">Enter Product Brand Name</td>
	<td><input type="text" name="bname"  class="box" required></td>
	</tr>
	<tr>
	<td  class="pa">Enter Product Quantity</td>
	<td><input type="text" name="quantity"  class="box" required></td>
	</tr>
	<tr>
	<td  class="pa">Enter Product Price</td>
	<td><input type="text" name="price"  class="box" required></td>
	</tr>
	<tr>
	<td colspan="2" align="right"><button class="bt">Save Record</button></td>
	</tr>
	</table>
	</form>
	</body>
	</html>