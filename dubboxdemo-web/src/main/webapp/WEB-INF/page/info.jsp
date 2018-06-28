<%--
  Created by IntelliJ IDEA.
  User: ty
  Date: 2018/6/28
  Time: 下午7:08
  To change this template use File | Settings | File Templates.
--%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path;
%>
<%@ page isELIgnored="false" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link rel="stylesheet" href="<%=basePath%>/static/bootstrap.min.css"/>
    <title>Title</title>
</head>
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
<br/>
<br/>
<br/>
<center><h2>${message}</h2></center>

</body>
</html>
