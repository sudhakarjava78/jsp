<%@taglib uri="http://java.sun.com/jstl/core" prefix="c"%>
<%@page isELIgnored="true"%>
<html>
<body>
	<center>
		<b><font size="7"> 
		<c:set var="a" value="30" /> 
		<c:set var="b" value="40" /> 
		<c:if test="${a<b}">
		condition is true
		</c:if>
		 <br> out of if
		</font></b>
	</center>
</body>
</html>