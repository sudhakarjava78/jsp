<%!int eid;
	String ename;
	float esal;%>

<%
try {
	eid = Integer.parseInt(request.getParameter("eid"));
	ename = request.getParameter("ename");
	esal = Float.parseFloat(request.getParameter("esal"));
} catch (Exception e) {
	e.printStackTrace();
}
%>

<%-- <%@include file="display.html"%> --%>

<jsp:useBean id="emp" class="com.sudha.practice.Employee"
	type="com.sudha.practice.Employee" scope="session">
	<jsp:setProperty name="emp" property="eid" value='<%=eid%>' />
	<jsp:setProperty name="emp" property="ename" value='<%=ename%>' />
	<jsp:setProperty name="emp" property="esal" value='<%=esal%>' />
	<html>
<body>
	<center>
		<h1>Employee Details</h1>
	</center>
	<center>
		Employee Id:<jsp:getProperty name="emp" property="eid" /><br>
		<br> Employee Name:<jsp:getProperty name="emp"
			property="ename" /><br>
		<br> Employee Salary:<jsp:getProperty name="emp"
			property="esal" /><br>
		<br>
	</center>
</body>
	</html>
</jsp:useBean>


