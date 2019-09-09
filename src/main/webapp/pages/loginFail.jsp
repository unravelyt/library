<%@ page language="java" contentType="text/html; charset=UTF-8" isELIgnored="false" %>
<%--<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>--%>
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

    <div class="content-wrapper">
        <!-- Content Header (Page header) -->
        <section class="content-header">
            <h1> 登录失败！</h1>
        </section>
        <!-- Main content -->
        <section class="content">
            <div class="error-page">
                <div class="error-content">
                    <h3><i class="fa fa-warning text-yellow"></i>
                        Oops! 用户不存在！
                    </h3>
                    <h4 align="center">
                        再次检查帐号和密码, 你可以 <a href="${pageContext.request.contextPath}/login.jsp">重新登录</a>
                    </h4>
                </div>
                <!-- /.error-content -->
            </div>
            <!-- /.error-page -->
        </section>
        <!-- /.content -->
    </div>


</div>  <%-- /.wrapper --%>

<jsp:include page="footHREL.jsp"></jsp:include>

</body>
</html>