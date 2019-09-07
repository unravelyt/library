<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false" %>
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
                管理书籍
                <small>书籍列表</small>
            </h1>
        </section>
        <!-- Main content -->
        <section class="content">
            <!-- 正文区域 -->
            <section class="content">
                <!-- .box-body -->
                <div class="box box-primary">
                    <div class="box-header with-border">
                        <h3 class="box-title">列表</h3>
                    </div>

                    <div class="box-body">
                        <!-- 数据表格 -->
                        <div class="table-box">

                            <!--工具栏-->
                            <div class="pull-left">
                                <div class="form-group form-inline">
                                    <div class="btn-group">
                                        <button type="button" class="btn btn-default" title="新建"><i class="fa fa-file-o"></i> 新建</button>
                                        <button type="button" class="btn btn-default" title="删除"><i class="fa fa-trash-o"></i> 删除</button>
                                        <button type="button" class="btn btn-default" title="开启"><i class="fa fa-check"></i> 开启</button>
                                        <button type="button" class="btn btn-default" title="屏蔽"><i class="fa fa-ban"></i> 屏蔽</button>
                                        <button type="button" class="btn btn-default" title="刷新"><i class="fa fa-refresh"></i> 刷新</button>
                                    </div>
                                </div>
                            </div>
                            <div class="box-tools pull-right">
                                <div class="has-feedback">
                                    <input type="text" class="form-control input-sm" placeholder="搜索">
                                    <span class="glyphicon glyphicon-search form-control-feedback"></span>
                                </div>
                            </div>
                            <!--工具栏/-->

                            <!--数据列表-->
                            <table id="dataList" class="table table-bordered table-striped table-hover dataTable">
                                <thead>
                                <tr>
                                    <th class="" style="padding-right:0px;">
                                        <input id="selall" type="checkbox" class="icheckbox_square-blue">
                                    </th>
                                    <th>ID</th>
                                    <th>Browser [降序]</th>
                                    <th >Platform(s)</th>
                                    <th>Engine version</th>
                                    <th >CSS grade</th>
                                    <th >屏蔽</th>
                                    <th class="text-center">操作</th>
                                </tr>
                                </thead>
                                <tbody>

                                <tr>
                                    <td><input name="ids" type="checkbox"></td>
                                    <td>1</td>
                                    <td>Internet Explorer 4.0
                                    </td>
                                    <td>Win 95+</td>
                                    <td> 4</td>
                                    <td>X</td>
                                    <td class="text-center">开启</td>
                                    <td class="text-center">
                                        <button type="button" class="btn bg-olive btn-xs">订单</button>
                                        <button type="button" class="btn bg-olive btn-xs">详情</button>
                                        <button type="button" class="btn bg-olive btn-xs">编辑</button>
                                    </td>
                                </tr>
                                <tr>
                                    <td><input name="ids" type="checkbox"></td>
                                    <td>2</td>
                                    <td>Internet Explorer 4.0
                                    </td>
                                    <td>Win 95+</td>
                                    <td> 4</td>
                                    <td>X</td>
                                    <td class="text-center">开启</td>
                                    <td class="text-center">
                                        <button type="button" class="btn bg-olive btn-xs">订单</button>
                                        <button type="button" class="btn bg-olive btn-xs">详情</button>
                                        <button type="button" class="btn bg-olive btn-xs">编辑</button>
                                    </td>
                                </tr>
                                <tr>
                                    <td><input name="ids" type="checkbox"></td>
                                    <td>3</td>
                                    <td>Internet Explorer 4.0
                                    </td>
                                    <td>Win 95+</td>
                                    <td> 4</td>
                                    <td>X</td>
                                    <td class="text-center">开启</td>
                                    <td class="text-center">
                                        <button type="button" class="btn bg-olive btn-xs">订单</button>
                                        <button type="button" class="btn bg-olive btn-xs">详情</button>
                                        <button type="button" class="btn bg-olive btn-xs">编辑</button>
                                    </td>
                                </tr>
                                <tr>
                                    <td><input name="ids" type="checkbox"></td>
                                    <td>4</td>
                                    <td>Internet Explorer 4.0
                                    </td>
                                    <td>Win 95+</td>
                                    <td> 4</td>
                                    <td>X</td>
                                    <td class="text-center">开启</td>
                                    <td class="text-center">
                                        <button type="button" class="btn bg-olive btn-xs">订单</button>
                                        <button type="button" class="btn bg-olive btn-xs">详情</button>
                                        <button type="button" class="btn bg-olive btn-xs">编辑</button>
                                    </td>
                                </tr>
                                <tr>
                                    <td><input name="ids" type="checkbox"></td>
                                    <td>5</td>
                                    <td>Internet Explorer 4.0
                                    </td>
                                    <td>Win 95+</td>
                                    <td> 4</td>
                                    <td>X</td>
                                    <td class="text-center">开启</td>
                                    <td class="text-center">
                                        <button type="button" class="btn bg-olive btn-xs">订单</button>
                                        <button type="button" class="btn bg-olive btn-xs">详情</button>
                                        <button type="button" class="btn bg-olive btn-xs">编辑</button>
                                    </td>
                                </tr>
                                <tr>
                                    <td><input name="ids" type="checkbox"></td>
                                    <td>6</td>
                                    <td>Internet Explorer 4.0
                                    </td>
                                    <td>Win 95+</td>
                                    <td> 4</td>
                                    <td>X</td>
                                    <td class="text-center">开启</td>
                                    <td class="text-center">
                                        <button type="button" class="btn bg-olive btn-xs">订单</button>
                                        <button type="button" class="btn bg-olive btn-xs">详情</button>
                                        <button type="button" class="btn bg-olive btn-xs">编辑</button>
                                    </td>
                                </tr>
                                <tr>
                                    <td><input name="ids" type="checkbox"></td>
                                    <td>7</td>
                                    <td>Internet Explorer 4.0
                                    </td>
                                    <td>Win 95+</td>
                                    <td> 4</td>
                                    <td>X</td>
                                    <td class="text-center">开启</td>
                                    <td class="text-center">
                                        <button type="button" class="btn bg-olive btn-xs">订单</button>
                                        <button type="button" class="btn bg-olive btn-xs">详情</button>
                                        <button type="button" class="btn bg-olive btn-xs">编辑</button>
                                    </td>
                                </tr>

                                </tbody>

                            </table>
                            <!--数据列表/-->

                        </div>
                        <!-- 数据表格 /-->


                    </div>
                    <!-- /.box-body -->

                    <!-- .box-footer-->
                    <div class="box-footer">
                        <div class="pull-left">
                            <div class="form-group form-inline">
                                总共2 页，共14 条数据。 每页
                                <select class="form-control">
                                    <option>1</option>
                                    <option>2</option>
                                    <option>3</option>
                                    <option>4</option>
                                    <option>5</option>
                                </select> 条
                            </div>
                        </div>

                        <div class="box-tools pull-right">
                            <ul class="pagination">
                                <li>
                                    <a href="#" aria-label="Previous">首页</a>
                                </li>
                                <li><a href="#">上一页</a></li>
                                <li><a href="#">1</a></li>
                                <li><a href="#">2</a></li>
                                <li><a href="#">3</a></li>
                                <li><a href="#">4</a></li>
                                <li><a href="#">5</a></li>
                                <li><a href="#">下一页</a></li>
                                <li>
                                    <a href="#" aria-label="Next">尾页</a>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <!-- /.box-footer-->

                </div>


        </section>  <%-- /.content --%>
    </div>  <%-- /.content-wrapper --%>
</div>  <%-- /.wrapper --%>

<jsp:include page="footHREL.jsp"></jsp:include>

</body>
</html>