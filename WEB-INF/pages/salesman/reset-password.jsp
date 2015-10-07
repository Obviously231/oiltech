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
    <title>密码重置————奥坦科石油设备有限公司资源管理系统</title>
    <meta content="IE=edge,chrome=1" http-equiv="X-UA-Compatible">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">

    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/lib/bootstrap/css/bootstrap.css">

    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/stylesheets/theme.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/lib/font-awesome/css/font-awesome.css">


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

    <script src="${pageContext.request.contextPath}/lib/jquery-2.1.4.min.js" type="text/javascript"></script>

    <script type="text/javascript">
        function notNull() {
            var pwd = $("#pwd").val();
            if (pwd == "" || pwd == null) {
                $("#error").text("密码不得为空！");
            } else {
                $("span#error").text("");
            }
        }
    </script>

    <script type="text/javascript">

        function checkPwd() {
            if ($("#check").val() != $("#pwd").val()) {
                $("span#error_check").text("两次密码不一致！");
            } else {
                $("span#error_check").text("");
                $("#submit").attr("onclick", "submit()");
            }
        }

        function submit(){
            $("form").submit();
        }

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

<div class="navbar-inner">

    <a class="brand" href="${pageContext.request.contextPath}/index.jsp">
        <span class="first">Oiltech</span>
        <span class="second">资源管理系统</span>
    </a>

</div>


<div class="row-fluid">
    <div class="dialog">
        <div class="block">
            <p class="block-heading">重置你的密码</p>

            <div class="block-body">
                <form:form action="salesman_save" method="post" modelAttribute="salesman">
                    <form:hidden path="id"/>
                    <label>新的密码：</label>
                    <form:password id="pwd" cssClass="span12" path="password" onblur="notNull()"/>
                    <span id="error" style="color: red"></span>
                    <br>
                    <label>再次输入：</label>
                    <form:password id="check" cssClass="span12" path="" onblur="checkPwd()"/>
                    <span id="error_check" style="color: red"></span>
                    <br>
                    <a id="submit" href="#" class="btn btn-primary pull-left">确认更改</a>

                    <div class="clearfix"></div>
                </form:form>
            </div>
        </div>
        <a href="sign-in.jsp">返回登录页面</a>
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


