<%@ page language="java" contentType="text/html; charset=UTF-8" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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

        <section class="content-header">
            <h1>
                管理员权限
                <small>advanced tables</small>
            </h1>
        </section>

        <section class="content">

            <div class="box box-success">
                <div class="box-header with-border">
                    <i class="fa fa-book"></i>
                    <h3 class="box-title">管理员信息</h3>

                    <a class="btn col-sm-offset-1">
                        <i class="fa  fa-user-plus"></i><a href="${pageContext.request.contextPath}/pages/admin-save.jsp">添加用户</a>
                    </a>

                </div>

                <div class="box-body">

                    <!-- 数据表格 -->
                    <div class="table-box">

                        <!--数据列表-->
                        <table id="dataList" class="table table-bordered table-striped table-hover dataTable">
                            <thead>
                            <tr>
                                <th class="">序号</th>
                                <th class="">帐号</th>
                                <th class="">密码</th>
                                <th class="">姓名</th>
                                <th class="">性别</th>
                                <th class="">电话</th>
                                <th class="text-center">操作</th>
                            </tr>
                            </thead>

                            <tbody>
                            <c:forEach items="${Adminlist}" var="admin" varStatus="status">
                                <tr>
                                    <td>${status.count}</td>
                                    <td>
                                        ${admin.username}
                                        <c:if test="${admin.id ==sessionScope.user.id}">
                                            <span class="badge bg-green">Current</span>
                                        </c:if>
                                    </td>
                                    <td>${admin.password}</td>
                                    <td>${admin.name}</td>
                                    <td>${admin.gender}</td>
                                    <td>${admin.phone}</td>
                                    <td class="text-center">
                                        <button type="button" class="btn btn-primary btn-xs" onclick='location.href="${pageContext.request.contextPath}/admin/findAdmin?id=${admin.id}"'>编辑</button>
                                        <button type="button" class="btn btn-danger btn-xs" onclick='location.href="${pageContext.request.contextPath}/admin/deleteAdmin?id=${admin.id}"'>删除</button>
                                    </td>
                                </tr>
                            </c:forEach>

                            </tbody>
                        </table>
                        <!--数据列表/-->

                    </div>
                    <!-- 数据表格 /-->

                </div>
                <!-- /.box-body -->

            </div>
            <!-- 待处理游记 /-->
        </section>  <%-- /.content --%>
    </div>  <%-- /.content-wrapper --%>
</div>  <%-- /.wrapper --%>

<jsp:include page="footHREL.jsp"></jsp:include>

</body>
</html>