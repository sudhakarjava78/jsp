<%@page import="java.util.*"%>

<%!Date dt = null;
	String date = null;%>

<%
dt = new Date();
date = dt.toString();
%>


<html>
<body bgcolor="lightyellow">
	<center>
		<b> <font size="7" color="red"><br>
			<b>Today Date:<%=date%></b></font>
		</b>
	</center>
</body>
</html>