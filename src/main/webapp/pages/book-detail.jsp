<%@ page language="java" contentType="text/html; charset=UTF-8" isELIgnored="false" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
                书籍信息
                <small>advanced tables</small>
            </h1>
        </section>
        <!-- Main content -->
        <section class="content">
            <div class="col-md-10 col-md-offset-1">
                <div class="box box-info box-solid">
                    <div class="box-header with-border">
                        <h3 class="box-title">信息详情</h3>
                    </div>

                    <form action="#" method="post" class="form-horizontal">
                        <div class="box-body">

                            <div class="form-group">
                                <label for="inputText1" class="col-sm-2 col-sm-offset-2 control-label">书名：</label>

                                <div class="col-sm-5">
                                    <input type="text" name="name" value="${sqlbook.name}" class="form-control" id="inputText1" placeholder="书名">
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="inputText2" class="col-sm-2 col-sm-offset-2 control-label">作者：</label>

                                <div class="col-sm-5">
                                    <input type="text" name="author" value="${sqlbook.author}" class="form-control" id="inputText2" placeholder="作者">
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="inputText3" class="col-sm-2 col-sm-offset-2 control-label">出版社：</label>

                                <div class="col-sm-5">
                                    <input type="text" name="publish" value="${sqlbook.publish}" class="form-control" id="inputText3" placeholder="出版社">
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="inputText4" class="col-sm-2 col-sm-offset-2 control-label">ISBN：</label>

                                <div class="col-sm-5">
                                    <input type="text" name="ISBN" value="${sqlbook.ISBN}" class="form-control" id="inputText4" placeholder="ISBN">
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="inputText5" class="col-sm-2 col-sm-offset-2 control-label">简介：</label>

                                <div class="col-sm-5">
                                    <input type="text" name="introduction" value="${sqlbook.introduction}" class="form-control" id="inputText5" placeholder="简介">
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="inputText6" class="col-sm-2 col-sm-offset-2 control-label">语言：</label>

                                <div class="col-sm-5">
                                    <input type="text" name="language" value="${sqlbook.language}" class="form-control" id="inputText6" placeholder="语言">
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="inputText7" class="col-sm-2 col-sm-offset-2 control-label">价格：</label>

                                <div class="col-sm-5">
                                    <input type="text" name="price" value="${sqlbook.price}" class="form-control" id="inputText7" placeholder="价格">
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="inputText8" class="col-sm-2 col-sm-offset-2 control-label">出版日期：</label>

                                <div class="col-sm-5">
                                    <input type="text" name="pub_date" value="${sqlbook.pub_date}" class="form-control" id="inputText8" placeholder="出版日期">
                                </div>
                            </div>

                            <div class="form-group" >
                                <label  class="col-sm-2 col-sm-offset-2 control-label">类别：</label>
                                <div class="col-sm-5">
                                    <input type="text" name="class_id" value="${sqlbook.classes.className}" class="form-control"  placeholder="类别">
                                </div>

                            </div>

                            <div class="form-group">
                                <label for="inputText10" class="col-sm-2 col-sm-offset-2 control-label">馆存：</label>

                                <div class="col-sm-5">
                                    <input type="text" name="rest_number" value="${sqlbook.rest_number}" class="form-control" id="inputText10" placeholder="馆存">
                                </div>
                            </div>


                        </div>

                        <div class="box-footer">
                            <button type="button" onclick="location.href='${pageContext.request.contextPath}/reader/findAll?pageNum=1&pageSize=5'" class="btn btn-default col-sm-offset-4">取消</button>
                            <button type="button" onclick="location.href='${pageContext.request.contextPath}/reader/borrow?bid=${sqlbook.id}&rid=${sessionScope.user.id}'" class="btn btn-info col-sm-offset-2">借阅</button>
                        </div>

                    </form>

                </div>

            </div>

        </section>
    </div>
</div>

<jsp:include page="footHREL.jsp"></jsp:include>


</body>
</html>
