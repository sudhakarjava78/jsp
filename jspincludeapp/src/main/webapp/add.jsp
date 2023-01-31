<%@page import="java.sql.*"%>

<%!String pid;
	String pname;
	int pcost;

	static Connection con;
	static Statement st;
	ResultSet rs;
	ResultSetMetaData rsmd;

	static {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/commondb", "root", "Sudha@7878");
			st = con.createStatement();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}%>

<%
try {
	pid = request.getParameter("pid");
	pname = request.getParameter("pname");
	pcost = Integer.parseInt(request.getParameter("pcost"));
	st.executeUpdate("insert into prod values('" + pid + "','" + pname + "'," + pcost + ")");
	rs = st.executeQuery("select * from prod");
	rsmd = rs.getMetaData();
	int count = rsmd.getColumnCount();
%>

<html>
<body>
	<center>
		<table border="1" bgcolor="lightyellow">
			<tr>
				<%
				for (int i = 1; i <= count; i++) {
				%>
				<td><b><font size="6" color="red">
							<center>
								<%=rsmd.getColumnName(i)%>
							</center>
					</font></b></td>
				<%
				}
				%>
			</tr>
			<%
			while (rs.next()) {
			%>
			<tr>
				<%
				for (int i = 1; i <= count; i++) {
				%>
				<td><b><font size="6"> <%=rs.getString(i)%>
					</font></b></td>
				<%
				}
				%>
			</tr>
			<%
			}
			%>

		</table>
	</center>
</body>
</html>
<%
} catch (Exception e) {
e.printStackTrace();
}
%>
<hr>
<jsp:include page="add.html" flush="true" />