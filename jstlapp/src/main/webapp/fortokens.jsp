<%@taglib uri="http://java.sun.com/jstl/core" prefix="c"%>
<%@page isELIgnored="true"%>
<html>
<body>
	<center>
		<b><font size="7"> <c:forTokens var="token"
					items="Jsp JSTL tags info" delims=" ">
					<c:out value="${token}" />
					<br>
				</c:forTokens>
		</font></b>
	</center>
</body>
</html>