<%@ page isELIgnored="false" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path;
%>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="<%=basePath%>/static/bootstrap.min.css"/>
    <title>首页</title>
<body>
<hr/>
<center><h1>DubboxDemo入门案例</h1></center>
<br/>
<center>
    <a href="<%=basePath%>/user/list.do" style="font-size: 22px;">所有用户</a>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <a href="<%=basePath%>/user/goAdd.do" style="font-size: 22px;">添加用户</a>
</center>
<br/>
<hr/>
</body>
</html>