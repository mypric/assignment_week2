<%--
  Created by IntelliJ IDEA.
  User: fc751
  Date: 2017/3/2
  Time: 20:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
    <script src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
    <title>首页</title>
</head>
<body>
<%!int i=-1; %>
<%
    application.setAttribute("counter",String.valueOf(i++));
    String status="Log In";
    session.setAttribute("access",false);
    if (session.getAttribute("access").toString().equals("true")){
        status="Log Out";
    }
    session.setAttribute("car",0);
    session.setAttribute("computer",0);
    session.setAttribute("cellphone",0);
%>
<div class="jumbotron">
    <div class="container">
        <h1>XX商城为您服务</h1>
        <p>现在已有<%=application.getAttribute("counter")%>访问页面.</p>
        <p><a class="btn btn-primary btn-lg" href="login.jsp" role="button"><%=status%></a></p>
    </div>
</div>
<article class="container">
    <form>
        <div class="checkbox">
            <label>
                <input type="checkbox"> 汽车
            </label>
        </div>
        <div class="checkbox">
            <label>
                <input type="checkbox"> 电脑
            </label>
        </div>
        <div class="checkbox">
            <label>
                <input type="checkbox"> 手机
            </label>
        </div>
        <button type="button" class="btn btn-danger" onClick="window.location.href='login.jsp'">立即购买</button>
    </form>
</article>
</body>
</html>
