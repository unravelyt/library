<%@ page language="java" contentType="text/html; charset=UTF-8" isELIgnored="false" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<header class="main-header">
    <!-- Logo -->
    <a href="${pageContext.request.contextPath}/statics/index2.html" class="logo">
        <!-- mini logo for sidebar mini 50x50 pixels -->
        <span class="logo-mini"><b>L</b>ib</span>
        <!-- logo for regular state and mobile devices -->
        <span class="logo-lg"><b>L</b>ibray</span>
    </a>
    <!-- Header Navbar: style can be found in header.less -->
    <nav class="navbar navbar-static-top">
        <!-- Sidebar toggle button-->
        <a href="#" class="sidebar-toggle" data-toggle="offcanvas" role="button">

        </a>

        <div class="navbar-custom-menu">
            <ul class="nav navbar-nav">
                <!-- User Account: style can be found in dropdown.less -->
                <li class="dropdown user user-menu">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                        <c:if test="${sessionScope.role == '管理员'}">
                            <img src="${pageContext.request.contextPath}/statics/img/user2-160x160.jpg" class="user-image" alt="User Image">
                        </c:if>
                        <c:if test="${sessionScope.role == '用户'}">
                            <img src="${pageContext.request.contextPath}/statics/img/user3-128x128.jpg" class="user-image" alt="User Image">
                        </c:if>
                        <span class="hidden-xs">${sessionScope.user.name}</span>

                    </a>
                    <c:if test="${sessionScope.user.name != null}">
                    <ul class="dropdown-menu">
                        <!-- User image -->
                        <li class="user-header">
                            <c:if test="${sessionScope.role == '管理员'}">
                                <img src="${pageContext.request.contextPath}/statics/img/user2-160x160.jpg" class="img-circle" alt="User Image">
                            </c:if>
                            <c:if test="${sessionScope.role == '用户'}">
                                <img src="${pageContext.request.contextPath}/statics/img/user3-128x128.jpg" class="img-circle" alt="User Image">
                            </c:if>
                            <p>
                                ${sessionScope.user.name} - ${sessionScope.role}
                            </p>
                        </li>
                        <!-- Menu Footer-->
                        <li class="user-footer">
                            <div class="pull-left">
                                <c:if test="${sessionScope.role == '管理员'}">
                                    <a href="${pageContext.request.contextPath}/admin/updateAdmin?id=${sessionScope.user.id}" class="btn btn-default btn-flat">个人信息</a>
                                </c:if>
                                <c:if test="${sessionScope.role == '用户'}">
                                    <a href="${pageContext.request.contextPath}/reader/updateReader?id=${sessionScope.user.id}" class="btn btn-default btn-flat">个人信息</a>
                                </c:if>
                            </div>
                            <div class="pull-right">
                                <a href="${pageContext.request.contextPath}/login/logout" class="btn btn-default btn-flat">退出</a>
                            </div>
                        </li>
                    </ul>
                    </c:if>
                </li>
            </ul>
        </div>
    </nav>
</header>
