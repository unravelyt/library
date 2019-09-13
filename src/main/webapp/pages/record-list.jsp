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
                借阅记录
                <small>advanced tables</small>
            </h1>
        </section>

        <section class="content">

            <div class="box box-success">
                <div class="box-header with-border">
                    <i class="fa fa-book"></i>
                    <h3 class="box-title">借阅信息</h3>

                </div>

                <div class="box-body">

                    <!-- 数据表格 -->
                    <div class="table-box">

                        <!--数据列表-->
                        <table id="dataList" class="table table-bordered table-striped table-hover dataTable">
                            <thead>
                            <tr>
                                <th>序号</th>
                                <th class="text-center">借阅人</th>
                                <th class="text-center">书名</th>
                                <th class="text-center">性别</th>
                                <th class="text-center">电话</th>
                                <th class="text-center">地址</th>
                                <th class="text-center">总借书次数</th>
                                <th class="text-center">借阅时间</th>
                                <th class="text-center">归还时间</th>
                                <th class="text-center">状态</th>
                                <th class="text-center">操作</th>

                            </tr>
                            </thead>

                            <tbody>
                            <c:forEach items="${recordList.list}" var="record" varStatus="status">
                                <tr>
                                    <td>${(recordList.pageNum-1)*recordList.pageSize+status.count}</td>
                                    <td>${record.reader.name}</td>
                                    <td>${record.book.name}</td>
                                    <td>${record.reader.gender}</td>
                                    <td>${record.reader.phone}</td>
                                    <td>${record.reader.address}</td>
                                    <td>${record.reader.borrow}</td>
                                    <td>${record.lend_date}</td>
                                    <c:if test="${record.back_date==null}">
                                        <td>暂未归还</td>
                                    </c:if>
                                    <c:if test="${record.back_date!=null}">
                                        <td>${record.back_date}</td>
                                    </c:if>
                                    <c:if test="${record.due>0}">
                                        <td><span class="badge bg-red">超期${record.due}天</span></td>
                                    </c:if>
                                    <c:if test="${record.due<0}">
                                        <td><span class="badge bg-green">还剩${record.due}天</span></td>
                                    </c:if>
                                    <td class="text-center">
                                        <button type="button" class="btn btn-danger btn-xs" onclick='location.href="${pageContext.request.contextPath}/record/deleteRecord?id=${record.id}"'>删除</button>
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
                            总共${recordList.pages}页，共${recordList.total}条数据。 每页
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
                                <a href="${pageContext.request.contextPath}/book/findAll?pageNum=1&pageSize=${recordList.pageSize}" aria-label="Previous">首页</a>
                            </li>
                            <li><a href="${pageContext.request.contextPath}/book/findAll?pageNum=${recordList.pageNum-1}&pageSize=${recordList.pageSize}">上一页</a></li>

                            <c:forEach begin="1" end="${recordList.pages}" var="num" >
                                <li><a href="${pageContext.request.contextPath}/book/findAll?pageNum=${num}&pageSize=${recordList.pageSize}">${num}</a></li>
                            </c:forEach>

                            <li><a href="${pageContext.request.contextPath}/book/findAll?pageNum=${recordList.pageNum+1}&pageSize=${recordList.pageSize}">下一页</a></li>
                            <li>
                                <a href="${pageContext.request.contextPath}/book/findAll?pageNum=${recordList.pages}&pageSize=${recordList.pageSize}" aria-label="Next">尾页</a>
                            </li>
                        </ul>
                    </div>

                </div>

            </div>

        </section>  <%-- /.content --%>
    </div>  <%-- /.content-wrapper --%>
</div>  <%-- /.wrapper --%>

<jsp:include page="footHREL.jsp"></jsp:include>
<script>
    function changePageSize() {
        //获取下拉框的值
        var pageSize = $("#changePageSize").val();

        //项服务器发送请求，改变每页显示条数
        location.href="${pageContext.request.contextPath}/record/findAllRecord?pageNum=1&pageSize="+pageSize;

    }
</script>

</body>
</html>