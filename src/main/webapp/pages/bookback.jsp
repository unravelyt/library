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
            <h1>
                首页
                <small>advanced tables</small>
            </h1>
        </section>
        <!-- Main content -->
        <section class="content">

            <div class="box box-solid box-success" align="center">
                <div class="box-header">
                    <h3>书已经还辣，不要再点了</h3>
                </div>
                <div class="box-body">
                    <br/>
                    <h4><a href="${pageContext.request.contextPath}/pages/main.jsp">点 击 此 处 </a>返 回 首 页</h4>
                    <br/>
                    <br/>
                </div>

            </div>

        </section>  <%-- /.content --%>
    </div>  <%-- /.content-wrapper --%>
</div>  <%-- /.wrapper --%>

<jsp:include page="footHREL.jsp"></jsp:include>

</body>
</html>