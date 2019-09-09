<%@ page language="java" contentType="text/html; charset=UTF-8" isELIgnored="false" %>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>AdminLTE 2 | Log in</title>
    <!-- Tell the browser to be responsive to screen width -->
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/statics/plugins/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/statics/plugins/font-awesome/css/font-awesome.min.css">
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/statics/plugins/ionicons/css/ionicons.min.css">
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/statics/plugins/adminLTE/css/AdminLTE.css">
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/statics/plugins/iCheck/square/blue.css">

</head>
<body class="hold-transition login-page" style="background:url('../statics/img/d9.jpg');background-size:100% 100%">
<div class="login-box">
    <div class="login-logo">
        <a href="#"><b>网上图书馆</b></a>
    </div>
    <!-- /.login-logo -->
    <div class="login-box-body">
        <h1> 登录失败！</h1>
        <div class="error-content">
            <h3><i class="fa fa-warning text-yellow"></i>
                Oops! 用户不存在！
            </h3>
            <h4 align="center">
                请再次检查帐号和密码，<a href="${pageContext.request.contextPath}/login.jsp">重新登录</a>
            </h4>
        </div>

    </div>
    <!-- /.login-box-body -->
</div>
<!-- /.login-box -->
<script src="${pageContext.request.contextPath}/statics/plugins/jQuery/jquery-2.2.3.min.js"></script>
<script src="${pageContext.request.contextPath}/statics/plugins/bootstrap/js/bootstrap.min.js"></script>
<script src="${pageContext.request.contextPath}/statics/plugins/iCheck/icheck.min.js"></script>

<script>
    $(function () {
        $('input').iCheck({
            checkboxClass: 'icheckbox_square-blue',
            radioClass: 'iradio_square-blue',
            increaseArea: '20%' /* optional */
        });
    });
</script>
</body>
</html>


