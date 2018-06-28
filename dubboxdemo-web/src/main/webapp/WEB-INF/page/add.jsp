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
<div class="text-center">
    <form action="<%=basePath%>/user/add.do" method="POST" class="form-inline">
        <div>
            <label class="">姓名&nbsp;&nbsp;</label>
            <input type="text" name="name" class="form-control"/>
        </div>
        <br/>
        <div>
            <label class="">年龄&nbsp;&nbsp;</label>
            <input type="text" name="age" class="form-control"/>
        </div>
        <br/>
        <div>
            <label class="">兴趣&nbsp;&nbsp;</label>
            <input type="text" name="interest" class="form-control"/>
        </div>
        <br/>
        <div >
            <input type="submit" value="确定" class="btn btn-default"/>
        </div>
    </form>
</div>

</body>
</html>
