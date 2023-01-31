<%@taglib uri="http://java.sun.com/jstl/core" prefix="c"%>
<%@page isELIgnored="true"%>
<html>
<body>
	<center>
		<b><font size="7"> 
		<c:catch var="e">
					<jsp:scriptlet>
		java.util.Date d=null;
		out.println(d.toString());
		</jsp:scriptlet>
				</c:catch> <c:out value="${e}" />
		</font></b>
	</center>
</body>
</html>