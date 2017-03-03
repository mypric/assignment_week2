<%--
  Created by IntelliJ IDEA.
  User: fc751
  Date: 2017/3/2
  Time: 20:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" errorPage="error.jsp" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>check</title>
</head>
<body>
你不应该看到这个页面

    <%
    String usrname =request.getParameter("usrName");
    Cookie c =new Cookie("name",usrname);
    c.setMaxAge(10*60);
    response.addCookie(c);
    String psd =request.getParameter("Password");
    Cookie d =new Cookie("psd",psd);
    d.setMaxAge(10*60);
    response.addCookie(d);

    session.setAttribute("access",false);
        if (request.getParameter("usrName").equals("fc") && request.getParameter("Password").equals("123")){
            session.setAttribute("access",true);
            response.sendRedirect("home.jsp");
        }
        else{
            throw new Exception("fuck");
        }
    %>
</body>
</html>
