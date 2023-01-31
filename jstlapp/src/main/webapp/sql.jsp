<%@taglib uri="http://java.sun.com/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jstl/sql" prefix="sql"%>
<%@page isELIgnored="true"%>
<html>
<body>
	<center>
		<b><font size="7"> <sql:setDataSource
					driver="com.mysql.cj.jdbc.Driver"
					url="jdbc:mysql://localhost:3306/commondb" user="root"
					password="Sudha@7878" />
					
				<%-- <sql:update var="result"
					sql="create table employ(eid integer primary key,ename varchar(20),esal integer)" />  
					
					<sql:update var="result" sql="insert into employ values(101,'AAA',1000)"/>  --%>
					
					<%--  <sql:update var="result" sql="insert into employ values(?,?,?)">
					<sql:param value="102" />
					<sql:param>CCC</sql:param>
					<sql:param value="2000" />
					</sql:update>  --%>
					
					 <%-- <sql:update var="result">
					 update employ set esal=esal+? where esal>?
					<sql:param>1000</sql:param>
					<sql:param>500</sql:param>
					</sql:update> 
					 --%>
					<sql:update var="result">
				delete from employ where esal>2000
				</sql:update>
					
					 <sql:query var="result" sql="select * from product" />
				<table border="1" bgcolor="lightyellow">
					<tr>
						<c:forEach var="columnName" items="${result.columnNames}">
							<td><center>
									<b><font size="6" color="red"> <c:out
												value="${columnName}" />
									</font></b>
								</center></td>
						</c:forEach>
					</tr>
					<c:forEach var="row" items="${result.rowsByIndex}">
						<tr>
							<c:forEach var="column" items="${row}">
								<td><b><font size=5> <c:out value="${column}" />
									</font></b>
							</c:forEach>
						</tr>
					</c:forEach>
				</table>
					
					
					<%-- Row Count......<c:out value="${result}"></c:out>
				 --%>
		</font></b>
	</center>
</body>
</html>