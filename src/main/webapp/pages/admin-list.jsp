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
        </section>  <%-- /.content --%>
        <!-- Main content -->
        <section class="content">

            <!-- 待处理游记 -->
            <div class="box box-success">
                <div class="box-header with-border">
                    <i class="fa fa-book"></i>
                    <h3 class="box-title">管理员信息</h3>
                </div>

                <div class="box-body">

                    <!-- 数据表格 -->
                    <div class="table-box">

                        <!--数据列表-->
                        <table id="dataList" class="table table-bordered table-striped table-hover dataTable">
                            <thead>
                            <tr>
                                <th class="">帐号</th>
                                <th class="">密码</th>
                                <th class="">姓名</th>
                                <th class="">性别</th>
                                <th class="">电话</th>
                                <th class="text-center">操作</th>
                            </tr>
                            </thead>
                            <tbody>

                            <tr>
                                <td>admin1</td>
                                <td>1234</td>
                                <td>张三</td>
                                <td>null</td>
                                <td>null</td>
                                <td class="text-center">
                                    <button type="button" class="btn btn-primary btn-xs" onclick='location.href="./admin-edit.jsp"'>编辑</button>
                                    <button type="button" class="btn btn-danger btn-xs" onclick='location.href="#"'>删除</button>
                                </td>
                            </tr>
                            <tr>
                                <td>admin2</td>
                                <td>1234</td>
                                <td>李四</td>
                                <td>null</td>
                                <td>null</td>
                                <td class="text-center">
                                    <button type="button" class="btn btn-primary btn-xs" onclick='location.href="./admin-edit.jsp"'>编辑</button>
                                    <button type="button" class="btn btn-danger btn-xs" onclick='location.href="#"'>删除</button>
                                </td>
                            </tr>
                            <tr>
                                <td>admin3</td>
                                <td>1234</td>
                                <td>李四</td>
                                <td>null</td>
                                <td>null</td>
                                <td class="text-center">
                                    <button type="button" class="btn btn-primary btn-xs" onclick='location.href="./admin-edit.jsp"'>编辑</button>
                                    <button type="button" class="btn btn-danger btn-xs" onclick='location.href="#"'>删除</button>
                                </td>
                            </tr>

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