<%@ page language="java" contentType="text/html; charset=UTF-8" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html>
<head>

    <jsp:include page="headerHREL.jsp"></jsp:include>

</head>
<body class="hold-transition skin-blue sidebar-mini">
<div class="wrapper" >

    <!-- 页面头部 -->
    <jsp:include page="header.jsp"></jsp:include>
    <!-- 导航侧栏 -->
    <jsp:include page="aside.jsp"></jsp:include>

    <div class="content-wrapper" style="background:url('../statics/img/d9.jpg');background-size:100% 100%">

        <!-- Content Header (Page header) -->
        <section class="content-header">
            <h1>
                欢迎登录网上图书管理系统
                <small>advanced tables</small>
            </h1>
        </section>


    </div>  <%-- /.content-wrapper --%>

    <!-- 底部导航 -->
    <footer class="main-footer">
        <div class="pull-right hidden-xs">
            <b>Version</b> 1.0.0
        </div>
        <strong>Copyright &copy; 2014-2019 <a href="http://www.itcast.cn">图书管理系统</a>.</strong> All rights reserved.
    </footer>
    <!-- 底部导航 /-->

</div>  <%-- /.wrapper --%>

<jsp:include page="footHREL.jsp"></jsp:include>


</body>
</html>