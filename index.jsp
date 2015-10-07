<%--
  Created by IntelliJ IDEA.
  User: Caterina
  Date: 2015/5/6
  Time: 21:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="include.inc.jsp" %>
<html lang="en">
<head>
    <META HTTP-EQUIV="Pragma" CONTENT="no-cache">
    <META HTTP-EQUIV="Cache-Control" CONTENT="no-cache">
    <META HTTP-EQUIV="Expires" CONTENT="0">
    <meta charset="utf-8">
    <meta content="IE=edge,chrome=1" http-equiv="X-UA-Compatible">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>奥坦科石油设备有限公司资源管理系统</title>

    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/lib/bootstrap/css/bootstrap.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/stylesheets/theme.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/lib/font-awesome/css/font-awesome.css">

    <script src="${pageContext.request.contextPath}/lib/jquery-2.1.4.min.js" type="text/javascript"></script>

    <script type="text/javascript">
        function warn(name) {
            alert("请先以" + name + "身份登录!");
        }
    </script>

    <style type="text/css">
        #line-chart {
            height: 300px;
            width: 800px;
            margin: 0px auto;
            margin-top: 1em;
        }

        .brand {
            font-family: georgia, serif;
        }

        .brand .first {
            color: #ccc;
            font-style: italic;
            font-size: 34px;
        }

        .brand .second {
            color: #fff;
            font-weight: bold;
            font-size: 24px;
        }

        a:focus {
            outline: none;
        }

        a {
            text-decoration: none;
        }
    </style>


</head>

<!--[if lt IE 7 ]>
<body class="ie ie6"> <![endif]-->
<!--[if IE 7 ]>
<body class="ie ie7 "> <![endif]-->
<!--[if IE 8 ]>
<body class="ie ie8 "> <![endif]-->
<!--[if IE 9 ]>
<body class="ie ie9 "> <![endif]-->
<!--[if (gt IE 9)|!(IE)]><!-->
<body class="">
<!--<![endif]-->

<!--顶部导航栏开始-->
<div class="navbar">
    <div class="navbar-inner">

        <a class="brand" href="${pageContext.request.contextPath}/index.jsp">
            <span class="first">Oiltech</span>
            <span class="second">资源管理系统</span>
        </a>

        <ul class="nav navbar-nav navbar-right">
            <%--<li><a href="#" class="hidden-phone visible-tablet visible-desktop" role="button">账户管理</a></li>--%>

            <c:if test="${sessionScope.user==null}">

                <li><a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true"
                       aria-expanded="false">
                    登录
                    <span class="caret"></span>
                </a>
                    <ul class="dropdown-menu" aria-labelledby="dropdownMenuDivider">
                        <li><a href="manager_login">经理</a></li>
                        <li role="separator" class="divider"></li>
                        <li><a href="salesman_login">业务员</a></li>
                        <li role="separator" class="divider"></li>
                        <li><a href="treasurer_login">财务</a></li>
                    </ul>
                </li>

            </c:if>
            <c:if test="${ !empty sessionScope.user}">

                <li id="fat-menu" class="dropdown">

                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true"
                       aria-expanded="false">
                            ${sessionScope.user.name}
                        <span class="caret"></span>
                    </a>

                    <ul class="dropdown-menu" aria-labelledby="dropdownMenuDivider">
                        <li><a href="${sessionScope.influence}_update">修改密码</a></li>
                        <li role="separator" class="divider"></li>
                        <li><a href="${sessionScope.influence}_logout">注销</a></li>
                    </ul>

                </li>

            </c:if>

        </ul>
    </div>
</div>
<!--顶部导航栏结束-->

<!--左侧下拉菜单开始-->
<div class="sidebar-nav">

    <!--总经理菜单开始-->
    <c:if test="${ !empty sessionScope.manager}">
    <a href="#dashboard-menu" class="nav-header" data-toggle="collapse">
        <i class="glyphicon glyphicon-briefcase"></i>
        总经理
        <i class="icon-chevron-up"></i>
    </a>
    <ul id="dashboard-menu" class="nav nav-list collapse in">
        </c:if>
        <c:if test="${ empty sessionScope.manager}">
        <a href="javascript:void(0)" class="nav-header" data-toggle="collapse" onclick="warn('总经理')">
            <i class="glyphicon glyphicon-briefcase"></i>
            总经理
            <i class="icon-chevron-up"></i>
        </a>
        <ul id="dashboard-menu" class="nav nav-list collapse">
            </c:if>
            <li><a href="${pageContext.request.contextPath}/scan_order">订单整体进度</a></li>
            <li><a href="${pageContext.request.contextPath}/consums">业务员提成金额</a></li>
            <li><a href="${pageContext.request.contextPath}/user.jsp">管理账户</a></li>
        </ul>
        <!--总经理菜单结束-->

        <!--业务员菜单开始-->
        <c:if test="${ empty sessionScope.salesman}"><a href="javascript:void(0)" class="nav-header"
                                                        data-toggle="collapse"
                                                        onclick="warn('业务员')">
        <i class="glyphicon glyphicon-earphone"></i>
        业务员
        <i class="icon-chevron-up"></i>
    </a>
            <%--<span class="label label-info">+3</span>--%>
        <ul id="accounts-menu" class="nav nav-list collapse">
            </c:if>
            <c:if test="${ !empty sessionScope.salesman}"><a href="#accounts-menu" class="nav-header"
                                                             data-toggle="collapse">
            <i class="glyphicon glyphicon-earphone"></i>
            业务员
            <i class="icon-chevron-up"></i>
        </a>
                <%--<span class="label label-info">+3</span>--%>
            <ul id="accounts-menu" class="nav nav-list collapse in">
                </c:if>
                <li><a href="create_order">创建订单</a></li>
                <li><a href="sales_order">销售情况</a></li>
                <li><a href="reset-password.jsp">预付款</a></li>
                <li role="separator" class="divider"></li>
                <li><a href="reset-password.jsp">采购</a></li>
                <li><a href="reset-password.jsp">追踪工厂生产进度</a></li>
                <li role="separator" class="divider"></li>
                <li><a href="reset-password.jsp">运输和港杂</a></li>
                <li><a href="reset-password.jsp">尾款</a></li>
                <li><a href="reset-password.jsp">发票情况</a></li>
            </ul>
            <!--业务员菜单结束-->

            <!--财务菜单开始-->
            <c:if test="${ empty sessionScope.treasurer}">
            <a href="javascript:void(0)" class="nav-header collapsed" data-toggle="collapse" onclick="warn('财务')">
                <i class="glyphicon glyphicon-jpy"></i>
                财务
                <i class="icon-chevron-up"></i>
            </a>
            <ul id="error-menu" class="nav nav-list collapse">
                </c:if>
                <c:if test="${ !empty sessionScope.treasurer}">
                <a href="#error-menu" class="nav-header collapsed" data-toggle="collapse">
                    <i class="glyphicon glyphicon-jpy"></i>
                    财务
                    <i class="icon-chevron-up"></i>
                </a>
                <ul id="error-menu" class="nav nav-list collapse in">
                    </c:if>
                    <li><a href="403.jsp">利润</a></li>
                    <li><a href="404.jsp">退税</a></li>
                </ul>
                <!--财务菜单结束-->

</div>
<!--左侧下拉菜单结束-->


<!--右侧正文开始-->
<div class="content">

    <div class="header">

        <div class="stats">
            <p class="stat"><span class="number" style="color: red">5</span>份运输中订单</p>

            <p class="stat"><span class="number" style="color: red">7</span>份在生产订单</p>

            <p class="stat"><span class="number" style="color: red">3</span>份预约订单</p>
        </div>

        <h1 class="page-title">业务一览</h1>

    </div>

    <ul class="breadcrumb">
        <li><a href="${pageContext.request.contextPath}/index.jsp">主页</a> <span class="divider">/</span></li>
        <li class="active">业务一览</li>
    </ul>

    <div class="container-fluid">
        <div class="row-fluid">

            <div class="row-fluid">

                <div class="alert alert-info">
                    <button type="button" class="close" data-dismiss="alert">×</button>
                    <strong>每日箴言:</strong> 哈哈哈哈哈哈哈哈哈哈哈!
                </div>

            </div>


            <div class="row-fluid">
                <c:if test="${ !empty sessionScope.user}">
                    <div class="block span6">
                        <a href="#tablewidget" class="block-heading" data-toggle="collapse">订单列表<span
                                class="label label-warning">+10</span></a>

                        <div id="tablewidget" class="block-body collapse in">
                            <table class="table">
                                <thead>
                                <tr>
                                    <th>客户信息</th>
                                    <th>产品信息</th>
                                    <th>约定交货时间</th>
                                    <th>贸易方式</th>
                                    <th>订单进度</th>
                                    <c:if test="${ !empty sessionScope.salesman|| !empty sessionScope.treasure}">
                                        <th>编辑</th>
                                    </c:if>

                                </tr>
                                </thead>

                                <tbody>
                                <c:forEach items="${sessionScope.orders}" var="order">
                                    <tr>
                                        <td>${order.customerName}</td>
                                        <td>${order.productionInfo}</td>
                                        <td>${order.agreedDeliveryDate}</td>
                                        <td>${order.tradeWay}</td>
                                        <td>${order.orderState}</td>
                                        <c:if test="${ !empty sessionScope.salesman|| !empty sessionScope.treasure}">
                                            <td><a href="update_order/${order.id}"><span
                                                    class="glyphicon glyphicon-pencil"
                                                    aria-hidden="true"></span></a></td>
                                        </c:if>
                                    </tr>
                                </c:forEach>
                                </tbody>
                            </table>
                            <p><a href="users.jsp">详细信息...</a></p>
                        </div>
                    </div>
                </c:if>
            </div>


            <footer style="margin-bottom: 0px">
                <hr>

                <p class="pull-right">&copy; 2015 <a href="#" target="_blank">Chw</a></p>

            </footer>

        </div>
    </div>
</div>
<!--右侧正文结束-->

<script src="${pageContext.request.contextPath}/lib/bootstrap/js/bootstrap.js"></script>
<script type="text/javascript">
    $("[rel=tooltip]").tooltip();
    $(function () {
        $('.demo-cancel-click').click(function () {
            return false;
        });
    });
</script>

</body>
</html>


