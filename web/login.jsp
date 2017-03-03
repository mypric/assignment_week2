<%--
  Created by IntelliJ IDEA.
  User: fc751
  Date: 2017/3/2
  Time: 20:10
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
    <title>登陆</title>
</head>
<body>
    <%
        Cookie[] cookies =request.getCookies();
        for(Cookie c : cookies){
            if (c.getName().equals("name") && c.getValue().equals("fc")){
                for(Cookie d : cookies) {
                    if (d.getName().equals("psd") && d.getValue().equals("123"))
                    response.sendRedirect("home.jsp");
                    session.setAttribute("access",true);
                }
            }
        }

    %>
    <article class="col-md-4 col-md-offset-4">
        <form action="check.jsp">
            <div class="form-group">
                <label for="usrName">UserName:</label>
                <input type="text" class="form-control" name="usrName" id="usrName" placeholder="UserName">
            </div>
            <div class="form-group">
                <label for="Password">Password</label>
                <input type="password" class="form-control" name="Password" id="Password" placeholder="Password">
            </div>

            <button type="submit" class="btn btn-default">Submit</button>
        </form>
    </article>
</body>
</html>
