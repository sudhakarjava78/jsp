<%@taglib uri="http://java.sun.com/jstl/core" prefix="c"%>
<%@page isELIgnored="true"%>
<html>
<body>
	<center>
		<b><font size="7"> <c:set var="a" value="20" />
		<c:choose>
		<c:when test="${a==10}">
		TEN
		</c:when>
		<c:when test="${a==15}">
		FIFTEEN
		</c:when>
		<c:when test="${a==20}">
		TWENTY
		</c:when>
		<c:otherwise>
		Number is not in 10,15, and 20
		</c:otherwise>
		</c:choose>
		</font></b>
	</center>
</body>
</html>