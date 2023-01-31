<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">  
<html>  
<head>  
<title>My JSP</title>  
</head>  
<body>  
  
<%@taglib prefix="mytags" uri="/WEB-INF/iterate.tld" %>  
<mytags:iterate times="15"><br>
Java Programming
</mytags:iterate>
  
</body>  
</html>  