<%--
  Created by IntelliJ IDEA.
  User: Caterina
  Date: 2015/5/6
  Time: 21:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/include.inc.jsp" %>
<!DOCTYPE html>
<head>
    <META HTTP-EQUIV="Pragma" CONTENT="no-cache">
    <META HTTP-EQUIV="Cache-Control" CONTENT="no-cache">
    <META HTTP-EQUIV="Expires" CONTENT="0">
    <meta charset="utf-8">
    <meta content="IE=edge,chrome=1" http-equiv="X-UA-Compatible">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>订单列表————奥坦科石油设备有限公司资源管理系统</title>

    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/lib/bootstrap/css/bootstrap.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/stylesheets/theme.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/lib/font-awesome/css/font-awesome.css">

    <script src="${pageContext.request.contextPath}/lib/jquery-2.1.4.min.js" type="text/javascript"></script>

    <script type="text/javascript">
        function warn(name) {
            alert("请先以" + name + "身份登录!");
        }
    </script>

    <script type="text/javascript"
            src="${pageContext.request.contextPath}/lib/datepicker/javascript/zebra_datepicker.js"></script>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/lib/datepicker/css/default.css" type="text/css">

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

    <script type="text/javascript">
        $(document).ready(function () {
            $("#deliverDate").Zebra_DatePicker();
        });
    </script>


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
    <c:if test="${ !empty sessionScope.manager}"><a href="#dashboard-menu" class="nav-header"
                                                    data-toggle="collapse"></c:if>
    <c:if test="${ empty sessionScope.manager}"><a href="javascript:void(0)" class="nav-header" data-toggle="collapse"
                                                   onclick="warn('总经理')"></c:if>
        <i class="glyphicon glyphicon-briefcase"></i>
        总经理
        <i class="icon-chevron-up"></i>
    </a>
    <ul id="dashboard-menu" class="nav nav-list collapse">
        <li><a href="${pageContext.request.contextPath}/scan_order">订单整体进度</a></li>
        <li><a href="${pageContext.request.contextPath}/consums">业务员提成金额</a></li>
        <li><a href="${pageContext.request.contextPath}/user.jsp">管理账户</a></li>
    </ul>
    <!--总经理菜单结束-->

    <!--业务员菜单开始-->
    <c:if test="${ empty sessionScope.salesman}"><a href="javascript:void(0)" class="nav-header" data-toggle="collapse"
                                                    onclick="warn('业务员')"></c:if>
        <c:if test="${ !empty sessionScope.salesman}"><a href="#accounts-menu" class="nav-header"
                                                         data-toggle="collapse"></c:if>
            <i class="glyphicon glyphicon-earphone"></i>
            业务员
            <i class="icon-chevron-up"></i>
        </a>
        <%--<span class="label label-info">+3</span>--%>
        <ul id="accounts-menu" class="nav nav-list collapse">
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
            </c:if>
            <c:if test="${ !empty sessionScope.treasurer}">
            <a href="#error-menu" class="nav-header collapsed" data-toggle="collapse">
                </c:if>
                <i class="glyphicon glyphicon-jpy"></i>
                财务
                <i class="icon-chevron-up"></i>
            </a>
            <ul id="error-menu" class="nav nav-list collapse">
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

            <div class="panel-group" id="accordion" role="tablist" aria-multiselectable="true">
                <div class="panel panel-default">
                    <div class="panel-heading" role="tab" id="headingOne">
                        <h4 class="panel-title">
                            <a role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseOne"
                               aria-expanded="true" aria-controls="collapseOne">
                                <span>XXX公司</span><span style="margin-left: 20px">XXX管材</span><span
                                    style="margin-left: 20px">X月X日约定交货</span><span
                                    style="margin-left: 20px">贸易方式：XXXX</span>

                                <div class="progress" style="float: right;min-width: 500px">
                                    <div class="progress-bar" role="progressbar" aria-valuenow="60" aria-valuemin="0"
                                         aria-valuemax="100" style="width: 60%;">
                                        运输中
                                    </div>
                                </div>
                            </a>
                        </h4>
                    </div>
                    <div id="collapseOne" class="panel-collapse collapse" role="tabpanel"
                         aria-labelledby="headingOne">
                        <div class="panel-body">
                            <table class="table table-striped">
                                <thead>
                                <tr>
                                    <th>销售单价</th>
                                    <th>销售总价</th>
                                    <th>预付款数目</th>
                                    <th>预付款状态</th>
                                </tr>
                                </thead>
                                <tbody>
                                <tr>
                                    <td>123</td>
                                    <td>12345</td>
                                    <td>214512</td>
                                    <td>已收到</td>
                                </tr>
                                </tbody>
                                <thead>
                                <tr>
                                    <th>采购单价</th>
                                    <th>采购总价</th>
                                    <th>供应商信息</th>
                                    <th>工厂生产状态</th>
                                </tr>
                                </thead>
                                <tbody>
                                <tr>
                                    <td>45124</td>
                                    <td>1234545</td>
                                    <td>XXX公司</td>
                                    <td>正在生产</td>
                                </tr>
                                </tbody>
                                <thead>
                                <tr>
                                    <th>订舱状态</th>
                                    <th>船期</th>
                                    <th>运输费用</th>
                                    <th>港杂费</th>
                                    <th>是否完成报关</th>
                                </tr>
                                </thead>
                                <tbody>
                                <tr>
                                    <td>未订</td>
                                    <td>1月3日</td>
                                    <td>5123</td>
                                    <td>123</td>
                                    <td>未完成报关</td>
                                </tr>
                                </tbody>
                                <thead>
                                <tr>
                                    <th>尾款数目</th>
                                    <th>尾款是否付清</th>
                                    <th>发票状态</th>
                                    <th>税前利润</th>
                                    <th>税后利润</th>
                                    <th>退税金额</th>
                                    <th>退税是否申报</th>
                                </tr>
                                </thead>
                                <tbody>
                                <tr>
                                    <td>3214</td>
                                    <td>否</td>
                                    <td>未寄到</td>
                                    <td>123</td>
                                    <td>未完成报关</td>
                                    <td>未完成报关</td>
                                    <td>未完成报关</td>
                                </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
                <div class="panel panel-default">
                    <div class="panel-heading" role="tab" id="headingTwo">
                        <h4 class="panel-title">
                            <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion"
                               href="#collapseTwo"
                               aria-expanded="false" aria-controls="collapseTwo">
                                Collapsible Group Item #2
                            </a>
                        </h4>
                    </div>
                    <div id="collapseTwo" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingTwo">
                        <div class="panel-body">
                            Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad
                            squid. 3 wolf
                            moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum
                            eiusmod.
                            Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla
                            assumenda
                            shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt
                            sapiente ea
                            proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table,
                            raw denim
                            aesthetic synth nesciunt you probably haven't heard of them accusamus labore sustainable
                            VHS.
                        </div>
                    </div>
                </div>
                <div class="panel panel-default">
                    <div class="panel-heading" role="tab" id="headingThree">
                        <h4 class="panel-title">
                            <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion"
                               href="#collapseThree"
                               aria-expanded="false" aria-controls="collapseThree">
                                Collapsible Group Item #3
                            </a>
                        </h4>
                    </div>
                    <div id="collapseThree" class="panel-collapse collapse" role="tabpanel"
                         aria-labelledby="headingThree">
                        <div class="panel-body">
                            Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad
                            squid. 3 wolf
                            moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum
                            eiusmod.
                            Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla
                            assumenda
                            shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt
                            sapiente ea
                            proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table,
                            raw denim
                            aesthetic synth nesciunt you probably haven't heard of them accusamus labore sustainable
                            VHS.
                        </div>
                    </div>
                </div>
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


