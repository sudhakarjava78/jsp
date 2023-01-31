<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>My JSP</title>
</head>
<body>

	<%@taglib prefix="m" uri="/WEB-INF/nested.tld"%>
	<h1>
		<center>
			<m:if condition='<%=30>20 %>'>
				
				<m:true>condition is true</m:true>
				<m:false>condition is false</m:false>
			</m:if>
		</center>
	</h1>
</body>
</html>
