<%@ page import="javax.lang.model.element.Element" %>
<%@ page import="java.io.PrintWriter" %><%--
  Created by IntelliJ IDEA.
  User: fc751
  Date: 2017/3/3
  Time: 13:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Title</title>
</head>
<body>
    <h1 id="t1">test</h1>
    <%
        PrintWriter writer=response.getWriter();
        writer.write("<span>这是一个内联元素</span>");
        writer.write("<script>");
        writer.write("war a=document.getElementById(t1);");
        writer.write("a.innerHTML='冯楚';");
        writer.write("</script>");
    %>

</body>
</html>
