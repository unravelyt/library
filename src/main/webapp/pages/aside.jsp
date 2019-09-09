<%@ page language="java" contentType="text/html; charset=UTF-8" isELIgnored="false" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<aside class="main-sidebar">
    <!-- sidebar: style can be found in sidebar.less -->
    <section class="sidebar">
        <!-- Sidebar user panel -->
        <div class="user-panel">
            <div class="pull-left image">
                <c:if test="${sessionScope.role == '管理员'}">
                    <img src="${pageContext.request.contextPath}/statics/img/user2-160x160.jpg" class="img-circle" alt="User Image">
                </c:if>
                <c:if test="${sessionScope.role == '用户'}">
                    <img src="${pageContext.request.contextPath}/statics/img/user3-128x128.jpg" class="img-circle" alt="User Image">
                </c:if>
            </div>
            <div class="pull-left info">
                <br/>
                <p property="principal.username">${sessionScope.user.name}</p>
            </div>
        </div>

        <ul class="sidebar-menu" data-widget="tree">
            <li class="header" style="alignment: center">菜单</li>
            <li class="treeview">
                <a href="${pageContext.request.contextPath}/pages/main.jsp">
                    <i class="fa fa-dashboard"></i> <span>首页</span>
                </a>
            </li>

            <li class="treeview">
                <a href="#">
                    <i class="fa fa-book"></i>
                    <span>搜索书籍</span>
                    <span class="pull-right-container">
                        <i class="fa fa-angle-left pull-right"></i>
                    </span>
                </a>
                <ul class="treeview-menu">
                    <li>
                        <a href="../../index.html"><i class="fa fa-circle-o"></i>查询书籍</a>
                    </li>
                    <li>
                        <a href="../../index2.html"><i class="fa fa-circle-o"></i>借阅记录</a>
                    </li>
                </ul>
            </li>
            <c:if test="${sessionScope.role == '管理员'}">
                <li class="treeview ac">
                    <a href="#">
                        <i class="fa  fa-user"></i>
                        <span>管理员权限</span>
                        <span class="pull-right-container">
                        <i class="fa fa-angle-left pull-right"></i>
                    </span>
                    </a>
                    <ul class="treeview-menu">
                        <li><a href="../../index2.html"><i class="fa fa-circle-o"></i>管理书籍</a></li>
                        <li><a href="../../index2.html"><i class="fa fa-circle-o"></i>借阅记录</a></li>
                        <li><a href="../../index.html"><i class="fa fa-circle-o"></i>编辑读者</a></li>
                        <li><a href="admin-list.jsp"><i class="fa fa-circle-o"></i>编辑管理员</a></li>
                    </ul>
                </li>
            </c:if>


        </ul>

    </section>

</aside>

