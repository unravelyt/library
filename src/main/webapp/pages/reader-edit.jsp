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
                修改用户信息
                <small>advanced tables</small>
            </h1>
        </section>
        <!-- Main content -->
        <section class="content">
            <div class="col-md-10 col-md-offset-1">
                <div class="box box-info box-solid">
                    <div class="box-header with-border">
                        <h3 class="box-title">信息编辑</h3>
                    </div>

                    <form method="post" action="${pageContext.request.contextPath}/admin/updateReader" class="form-horizontal">
                        <div class="box-body">
                            <input type="hidden" name="id" value="${sqlReader.id}">
                            <div class="form-group">
                                <label for="inputText1" class="col-sm-2 col-sm-offset-2 control-label">帐号：</label>

                                <div class="col-sm-5">
                                    <input type="text" name="username" value="${sqlReader.username}" class="form-control" id="inputText1" placeholder="帐号">
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="inputText2" class="col-sm-2 col-sm-offset-2 control-label">密码：</label>

                                <div class="col-sm-5">
                                    <input type="text" name="password" value="${sqlReader.password}" class="form-control" id="inputText2" placeholder="密码">
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="inputText3" class="col-sm-2 col-sm-offset-2 control-label">姓名：</label>

                                <div class="col-sm-5">
                                    <input type="text" name="name" value="${sqlReader.name}" class="form-control" id="inputText3" placeholder="姓名">
                                </div>
                            </div>
                            <div class="form-group" >
                                <label for="inputText4" class="col-sm-2 col-sm-offset-2 control-label">性别：</label>
                                <div class="col-sm-5">
                                    <select id="inputText4" class="form-control" name="gender">
                                        <c:if test="${sqlReader.gender=='男'}">
                                            <option value="男" selected>男</option>
                                            <option value="女">女</option>
                                        </c:if>
                                        <c:if test="${sqlReader.gender=='女'}">
                                            <option value="男">男</option>
                                            <option value="女" selected>女</option>
                                        </c:if>
                                    </select>
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="inputText5" class="col-sm-2 col-sm-offset-2 control-label">电话：</label>

                                <div class="col-sm-5">
                                    <input type="text" name="phone" value="${sqlReader.phone}" class="form-control" id="inputText5" placeholder="电话">
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="inputText6" class="col-sm-2 col-sm-offset-2 control-label">地址：</label>

                                <div class="col-sm-5">
                                    <input type="text" name="address" value="${sqlReader.address}" class="form-control" id="inputText6" placeholder="地址">
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="datepicker" class="col-sm-2 col-sm-offset-2 control-label">生日：</label>
                                <div class="input-group date col-sm-5">
                                    <div class="input-group-addon">
                                        <i class="fa fa-calendar"></i>
                                    </div>
                                    <input type="text" name="birthday" value="${sqlReader.birthday}" class="form-control pull-right" id="datepicker">
                                </div>
                            </div>

                            <!-- /.form group -->
                        </div>
                        <!-- /.box-body -->

                        <div class="box-footer">
                            <button type="button" onclick="location.href='${pageContext.request.contextPath}/pages/main.jsp'" class="btn btn-default col-sm-offset-4">取消</button>
                            <button type="submit" class="btn btn-info col-sm-offset-2">提交</button>
                        </div>
                        <!-- /.box-footer -->
                    </form>

                </div>

            </div>

            <%-- /.maincontent--%>
        </section>  <%-- /.content --%>
    </div>  <%-- /.content-wrapper --%>
</div>  <%-- /.wrapper --%>

<jsp:include page="footHREL.jsp"></jsp:include>

<script>
    $('#datepicker').datepicker({
        autoclose: true,
        format: 'mm/dd/yyyy'
    });
</script>

</body>
</html>
