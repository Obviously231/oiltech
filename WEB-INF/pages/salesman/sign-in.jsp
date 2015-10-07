<%--
  Created by IntelliJ IDEA.
  User: Caterina
  Date: 2015/5/6
  Time: 21:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/include.inc.jsp" %>
<html lang="en">
<head>
    <meta charset="utf-8">
    <title>业务员登录————奥坦科石油设备有限公司资源管理系统</title>
    <meta content="IE=edge,chrome=1" http-equiv="X-UA-Compatible">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">

    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/lib/bootstrap/css/bootstrap.css">

    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/stylesheets/theme.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/lib/font-awesome/css/font-awesome.css">

    <script src="${pageContext.request.contextPath}/lib/jquery-2.1.4.min.js" type="text/javascript"></script>

    <!-- Demo page code -->

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

<div class="navbar-inner">

    <a class="brand" href="${pageContext.request.contextPath}/index.jsp">
        <span class="first">Oiltech</span>
        <span class="second">资源管理系统</span>
    </a>

</div>


<div class="row-fluid">
    <div class="dialog">
        <div class="block">
            <p class="block-heading">业务员登录</p>

            <div class="block-body text-center">
                <form:form action="salesman" method="post" modelAttribute="salesman">

                    <label>用户名</label>
                    <form:input cssClass="span12" path="name" />
                    <p style="color: red">${requestScope.error_message}</p>

                    <label>密&nbsp;&nbsp;&nbsp;&nbsp;码</label>
                    <form:password cssClass="span12" path="password"/>
                    <br>
                    <label class="remember-me"><input name="checkbox" type="checkbox" value="1" checked/>记住账号</label>
                    <br>
                    <button type="submit" class="btn btn-primary">登录</button>

                    <div class="clearfix"></div>
                </form:form>
                <p class="pull-right"><a href="reset-password.jsp">忘记密码？</a></p>
                <br>
            </div>
        </div>

    </div>
</div>


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


