<%--
  Created by IntelliJ IDEA.
  User: ty
  Date: 2018/6/28
  Time: 下午2:43
  To change this template use File | Settings | File Templates.
--%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path;
%>
<%@ page isELIgnored="false" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
<div class="text-center">
    <table class="table table-hover">
        <thead>
            <tr>
                <th class="text-center">编号</th>
                <th class="text-center">姓名</th>
                <th class="text-center">年龄</th>
                <th class="text-center">兴趣</th>
                <th class="text-center">操作</th>
            </tr>
        </thead>
        <tbody>
        <c:forEach items="${list}" var="user">
            <tr class="text-center">
                <td>${user.id}</td>
                <td>${user.name}</td>
                <td>${user.age}</td>
                <td>${user.interest}</td>
                <td>
                    <a href="<%=basePath%>/user/goUpdate.do?id=${user.id}">编辑</a>
                    &nbsp;&nbsp;
                    <a href="<%=basePath%>/user/delete.do?id=${user.id}">删除</a>
                </td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</div>

</body>
</html>
