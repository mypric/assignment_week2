<%--
  Created by IntelliJ IDEA.
  User: fc751
  Date: 2017/3/3
  Time: 0:51
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
    <title>购物车</title>
</head>
<body>
    <%
        if (request.getParameter("car") == null) {
        }
        else if (request.getParameter("car").equals("1") && session.getAttribute("count").equals("start")) {
                session.setAttribute("car", 1 + Integer.parseInt(session.getAttribute("car").toString()));
        }
        if (request.getParameter("computer") == null) {
        }
        else if (request.getParameter("computer").equals("1") && session.getAttribute("count").equals("start")) {
                session.setAttribute("computer", 1 + Integer.parseInt(session.getAttribute("computer").toString()));
        }
        if (request.getParameter("cellphone") == null) {
        }
        else if (request.getParameter("cellphone").equals("1") && session.getAttribute("count").equals("start")) {
                session.setAttribute("cellphone", 1 + Integer.parseInt(session.getAttribute("cellphone").toString()));
        }
        session.setAttribute("count","stop");
    %>
    <div class="container">
        <table class="table table-striped">
            <tr>
                <th>商品名称</th>
                <th>数量</th>
            </tr>
            <tr>
                <td>汽车</td>
                <td><%=session.getAttribute("car")%></td>
            </tr>
            <tr>
                <td>电脑</td>
                <td><%=session.getAttribute("computer")%></td>
            </tr>
            <tr>
                <td>手机</td>
                <td><%=session.getAttribute("cellphone")%></td>
            </tr>
        </table>
        <a class="btn btn-primary" href="home.jsp" role="button">返回</a>
        <a class="btn btn-primary" href="#" role="button">返回</a>
    </div>

</body>
</html>
