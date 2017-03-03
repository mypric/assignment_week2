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
<%!int i; %>
<%
    application.setAttribute("counter",String.valueOf(++i));
    String status="Log In";
    if (session.getAttribute("access").toString().equals("true")){
        status="Log Out";
    }
%>
<div class="jumbotron">
    <div class="container">
        <h1>XX商城为您服务</h1>
        <p>现在已有<%=application.getAttribute("counter")%>访问页面.</p>
        <p><a class="btn btn-primary btn-lg" href="index.jsp" role="button"><%=status%></a></p>
    </div>
</div>
<article class="container">
    <form action="cart.jsp">
        <div class="checkbox">
            <label>
                <input type="checkbox" name="car" value="1"> 汽车
            </label>
        </div>
        <div class="checkbox">
            <label>
                <input type="checkbox" name="computer" value="1"> 电脑
            </label>
        </div>
        <div class="checkbox">
            <label>
                <input type="checkbox" name="cellphone" value="1"> 手机
            </label>
        </div>
        <button type="submit" class="btn btn-default">立即购买</button>
    </form>
</article>
<%
    session.setAttribute("count","start");
%>
</body>
</html>
