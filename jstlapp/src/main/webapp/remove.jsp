<%@taglib uri="http://java.sun.com/jstl/core" prefix="c"%>
<%@page isELIgnored="true"%>
<html>
<body>
	<center>
		<b><font size="7"> <c:set var="a" value="Sudhakar"
					scope="request" /> <br> <c:out value="core tag library" /> <br>
				<br> a------><c:out value="${a}" /> <br>
			<br> <c:remove var="a" scope="request" /> a------><c:out
					value="${a}" /> 
		</font></b>
	</center>
</body>
</html>