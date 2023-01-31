<%@taglib uri="http://java.sun.com/jstl/core" prefix="c"%>
<%@page isELIgnored="true"%>
<html>
<body>
	<center>
		<b><font size="7"> 
		<c:forEach var="a" begin="0" end="10"
					step="2">
					<c:out value="${a}" />
					<br>
				</c:forEach> <%
		String[] s={"A","B","C"};
		request.setAttribute("s", s);
		%> <br> <c:forEach var="x" items="${s}">
					<c:out value="${x}" />
					<br>
				</c:forEach>
		</font></b>
	</center>
</body>
</html>