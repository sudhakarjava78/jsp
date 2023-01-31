<%@taglib uri="http://java.sun.com/jstl/core" prefix="c"%>
<%@page isELIgnored="true"%>
<html>
<body>
	<center>
		<b><font size="7"> <c:set var="a" value="Java"
					scope="request" /> <br> <c:out value="core tag library" /> <br>
			<br> <c:out value="${a}" />
		</font></b>
</body>
</html>