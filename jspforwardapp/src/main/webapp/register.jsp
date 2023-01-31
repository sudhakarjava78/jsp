<%@page import="java.sql.*"%>

<%!String uname;
	int uage;
	String uaddr;

	static Connection con;
	static Statement st;
	ResultSet rs;


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
	uname = request.getParameter("uname");
	uage = Integer.parseInt(request.getParameter("uage"));
	uaddr = request.getParameter("uaddr");
	rs = st.executeQuery("select * from reg_users where uname='" + uname + "'");
	boolean b = rs.next();
	if (b == true) {
%>
<jsp:forward page="existed.jsp" />
<%
} else {
int rowCount = st.executeUpdate("insert into reg_users values('" + uname + "'," + uage + ",'" + uaddr + "')");
if (rowCount == 1) {
%>
<jsp:forward page="success.jsp" />
<%
} else {
%>
<jsp:forward page="failure.jsp" />
<%
}
}
} catch (Exception e) {
%>
<jsp:forward page="failure.jsp" />
<%
e.printStackTrace();
}
%>