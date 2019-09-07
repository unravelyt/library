<%@ page language="java" contentType="text/html; charset=UTF-8" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html>
<head>

    <jsp:include page="headerHREL.jsp"></jsp:include>

</head>
<body class="hold-transition skin-blue sidebar-mini">
<div class="wrapper" >

    <!-- 页面头部 -->
    <jsp:include page="./header.jsp"></jsp:include>
    <!-- 导航侧栏 -->
    <jsp:include page="./aside.jsp"></jsp:include>

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

            <!-- 待处理游记 -->
            <div class="box box-success">
                <div class="box-header with-border">
                    <i class="fa fa-book"></i>
                    <h3 class="box-title">书库精选书籍</h3>
                </div>

                <div class="box-body">

                    <!-- 数据表格 -->
                    <div class="table-box">

                        <!--数据列表-->
                        <table id="dataList" class="table table-bordered table-striped table-hover dataTable">
                            <thead>
                            <tr>
                                <th class="">书籍名称</th>
                                <th class="">简介</th>
                                <th class="">发布时间</th>
                                <th class="">状态</th>
                                <th class="text-center">操作</th>
                            </tr>
                            </thead>
                            <tbody>

                            <tr>
                                <td>大王叫我来巡山</td>
                                <td>毕大爷带你游西安（附详细攻略）</td>
                                <td>2017-03-07 17:45</td>
                                <td>待审核</td>
                                <td class="text-center">
                                    <button type="button" class="btn bg-olive btn-xs" onclick='location.href="all-travellog-manage-edit.html"'>借阅</button>
                                </td>
                            </tr>

                            <tr>
                                <td>大王叫我来巡山</td>
                                <td>毕大爷带你游西安（附详细攻略）</td>
                                <td>2017-03-07 17:45</td>
                                <td>已发布</td>
                                <td class="text-center">
                                    <button type="button" class="btn bg-olive btn-xs" onclick='location.href="all-travellog-manage-edit.html"'>借阅</button>
                                </td>
                            </tr>

                            <tr>
                                <td>大王叫我来巡山</td>
                                <td>毕大爷带你游西安（附详细攻略）</td>
                                <td>2017-03-07 17:45</td>
                                <td>待审核</td>
                                <td class="text-center">
                                    <button type="button" class="btn bg-olive btn-xs" onclick='location.href="all-travellog-manage-edit.html"'>借阅</button>
                                </td>
                            </tr>

                            <tr>
                                <td>大王叫我来巡山</td>
                                <td>毕大爷带你游西安（附详细攻略）</td>
                                <td>2017-03-07 17:45</td>
                                <td>待审核</td>
                                <td class="text-center">
                                    <button type="button" class="btn bg-olive btn-xs" onclick='location.href="all-travellog-manage-edit.html"'>借阅</button>
                                </td>
                            </tr>

                            <tr>
                                <td>大王叫我来巡山</td>
                                <td>毕大爷带你游西安（附详细攻略）</td>
                                <td>2017-03-07 17:45</td>
                                <td>待审核</td>
                                <td class="text-center">
                                    <button type="button" class="btn bg-olive btn-xs" onclick='location.href="all-travellog-manage-edit.html"'>借阅</button>
                                </td>
                            </tr>

                            <tr>
                                <td>大王叫我来巡山</td>
                                <td>毕大爷带你游西安（附详细攻略）</td>
                                <td>2017-03-07 17:45</td>
                                <td>待审核</td>
                                <td class="text-center">
                                    <button type="button" class="btn bg-olive btn-xs" onclick='location.href="all-travellog-manage-edit.html"'>借阅</button>
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