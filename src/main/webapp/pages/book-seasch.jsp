<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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

        <!-- 内容头部 -->
        <section class="content-header">
            <h1>
                搜索结果
            </h1>
        </section>
        <!-- 内容头部 /-->

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
                                    <button type="button" class="btn btn-default" title="新建" onclick='location.href="${pageContext.request.contextPath}/book/findClass"'><i class="fa fa-file-o"></i>新增书籍</button>
                                </div>
                            </div>
                        </div>
                        <form action="${pageContext.request.contextPath}/book/findByCondition" method="post" class="form-horizontal">

                            <!--.form-horizontal很关键，涉及到布局，不添加的话，label的文本不会‘右对齐’，且div.form-group之间没有间隔-->

                            <div class="form-group">
                                <label for="inputText2" class="col-sm-1 control-label">书名：</label>
                                <div class="col-sm-2 data">
                                    <input type="text" name="name" class="form-control" id="inputText2" placeholder="名称">
                                </div>
                            </div>
                            <span class="form-group">
                                <label for="inputText3" class="col-sm-1 control-label title">作者：</label>
                                <div class="col-sm-2 ">
                                    <input type="text" name="author" class="form-control" id="inputText3" placeholder="关键词">
                                </div>
                            </span>
                            <span class="form-group">
                                <label for="inputText4" class="col-sm-1 control-label title">ISBN：</label>
                                <div class="col-sm-2 ">
                                    <input type="text" name="ISBN" class="form-control" id="inputText4" placeholder="ISBN">
                                </div>
                            </span>


                            <button type="submit" class="btn btn-info pull-right">搜索</button>
                        </form>
                        <br/>
                        <!--工具栏/-->

                        <!--数据列表-->
                        <table id="dataList" class="table table-bordered table-striped table-hover dataTable">
                            <thead>
                            <tr>
                                <th class="" style="padding-right:0px;">
                                    <input id="selall" type="checkbox" class="icheckbox_square-blue">
                                </th>
                                <th class="text-center">序号</th>
                                <th class="text-center">书名</th>
                                <th class="text-center">作者</th>
                                <th class="text-center">出版社</th>
                                <th class="text-center">出版日期</th>
                                <th class="text-center">价格</th>
                                <th class="text-center">语言</th>
                                <th class="text-center">馆存</th>
                                <th class="text-center">操作</th>
                            </tr>
                            </thead>
                            <tbody>
                                <c:forEach items="${bookList.list}" var="book" varStatus="status">
                                    <tr>
                                        <td><input name="ids" type="checkbox"></td>
                                        <td class="text-center">${(bookList.pageNum-1)*bookList.pageSize+status.count}</td>
                                        <td class="text-center">${book.name}</td>
                                        <td class="text-center">${book.author}</td>
                                        <td class="text-center">${book.price}</td>
                                        <td class="text-center">${book.publish}</td>
                                        <td class="text-center">${book.pub_date}</td>
                                        <td class="text-center">${book.language}</td>
                                        <td class="text-center">${book.rest_number}</td>
                                        <td class="text-center">
                                            <button type="button" class="btn bg-olive btn-xs" onclick='location.href="${pageContext.request.contextPath}/book/findById?id=${book.id}"'>编辑</button>
                                            <button type="button" class="btn btn-danger btn-xs" onclick='location.href="${pageContext.request.contextPath}/book/deleteBook?id=${book.id}"'>删除</button>
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
                <!-- .box-footer-->
                <div class="box-footer">
                    <div class="pull-left">
                        <div class="form-group form-inline">
                            总共${bookList.pages}页，共${bookList.total}条数据。 每页
                            <select class="form-control" id="changePageSize" onchange="changePageSize()">
                                <option>--</option>
                                <option>5</option>
                                <option>10</option>
                                <option>15</option>
                                <option>20</option>
                            </select> 条
                        </div>
                    </div>

                    <div class="box-tools pull-right">
                        <ul class="pagination">
                            <li>
                                <a href="${pageContext.request.contextPath}/book/findAll?pageNum=1&pageSize=${bookList.pageSize}" aria-label="Previous">首页</a>
                            </li>
                            <li><a href="${pageContext.request.contextPath}/book/findAll?pageNum=${bookList.pageNum-1}&pageSize=${bookList.pageSize}">上一页</a></li>

                            <c:forEach begin="1" end="${bookList.pages}" var="num" >
                                <li><a href="${pageContext.request.contextPath}/book/findAll?pageNum=${num}&pageSize=${bookList.pageSize}">${num}</a></li>
                            </c:forEach>

                            <li><a href="${pageContext.request.contextPath}/book/findAll?pageNum=${bookList.pageNum+1}&pageSize=${bookList.pageSize}">下一页</a></li>
                            <li>
                                <a href="${pageContext.request.contextPath}/book/findAll?pageNum=${bookList.pages}&pageSize=${bookList.pageSize}" aria-label="Next">尾页</a>
                            </li>
                        </ul>
                    </div>

                </div>
                <!-- /.box-footer-->

            </div>

        </section>
        <!-- 正文区域 /-->

    </div>

        <!-- @@close -->
</div>  <%-- /.wrapper --%>

<jsp:include page="footHREL.jsp"></jsp:include>

<script>
    function changePageSize() {
        //获取下拉框的值
        var pageSize = $("#changePageSize").val();

        //项服务器发送请求，改变每页显示条数
        location.href="${pageContext.request.contextPath}/book/findAll?pageNum=1&pageSize="+pageSize;

    }

    $(document).ready(function() {

        // 激活导航位置
        setSidebarActive("travellog-review");

        // 列表按钮
        $("#dataList td input[type='checkbox']").iCheck({
            checkboxClass: 'icheckbox_square-blue',
            increaseArea: '20%'
        });
        // 全选操作
        $("#selall").click(function() {
            var clicks = $(this).is(':checked');
            if (!clicks) {
                $("#dataList td input[type='checkbox']").iCheck("uncheck");
            } else {
                $("#dataList td input[type='checkbox']").iCheck("check");
            }
            $(this).data("clicks", !clicks);
        });
    });
</script>

</body>
</html>