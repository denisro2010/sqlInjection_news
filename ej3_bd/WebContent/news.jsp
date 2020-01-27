<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<html>
<body>
<%
String id = request.getParameter("userId");
String driverName = "com.mysql.cj.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String dbName = "ej2_bd?useTimezone=true&serverTimezone=UTC";
String userId = "root";
String password = "root";

try {
Class.forName(driverName);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}

Connection connection = null;
Statement statement = null;
%>
<h2 align="center"><font><strong>Noticias</strong></font></h2>

<table align="center" cellpadding="5" cellspacing="5" border="1">
<tr bgcolor="#A52A2A">
<td><b>ID</b></td>
<td><b>Titulo</b></td>
<td><b>Noticia</b></td>
<td><b>Fecha</b></td>
</tr>
<%
try{ 
connection = DriverManager.getConnection(connectionUrl+dbName, userId, password);
statement=connection.createStatement();
String sql ="SELECT * FROM news WHERE Id ="+"'"+request.getParameter("Id")+"';";
Statement stmt = connection.createStatement();
ResultSet rs = stmt.executeQuery(sql);
while(rs.next()){
%>
<tr bgcolor="#DEB887">
<td><%=rs.getInt("Id")%></td>
<td><%=rs.getString("Title") %></td>
<td><%=rs.getString("Body") %></td>
<td><%=rs.getString("DateTime") %></td>
</tr>
<%
}

} catch (Exception e) {
e.printStackTrace();
}
%>
</table>
</body>
</html>