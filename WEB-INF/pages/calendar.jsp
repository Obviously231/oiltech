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
    <title>Bootstrap Admin</title>
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
        }

        .brand .second {
            color: #fff;
            font-weight: bold;
        }
    </style>

    <!-- Le HTML5 shim, for IE6-8 support of HTML5 elements -->
    <!--[if lt IE 9]>
    <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->

    <!-- Le fav and touch icons -->
    <link rel="shortcut icon" href="../assets/ico/favicon.ico">
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="../assets/ico/apple-touch-icon-144-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="../assets/ico/apple-touch-icon-114-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="../assets/ico/apple-touch-icon-72-precomposed.png">
    <link rel="apple-touch-icon-precomposed" href="../assets/ico/apple-touch-icon-57-precomposed.png">
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

<div class="navbar">
    <div class="navbar-inner">
        <ul class="nav pull-right">

            <li><a href="#" class="hidden-phone visible-tablet visible-desktop" role="button">Settings</a></li>
            <li id="fat-menu" class="dropdown">
                <a href="#" role="button" class="dropdown-toggle" data-toggle="dropdown">
                    <i class="icon-user"></i> Jack Smith
                    <i class="icon-caret-down"></i>
                </a>

                <ul class="dropdown-menu">
                    <li><a tabindex="-1" href="#">My Account</a></li>
                    <li class="divider"></li>
                    <li><a tabindex="-1" class="visible-phone" href="#">Settings</a></li>
                    <li class="divider visible-phone"></li>
                    <li><a tabindex="-1" href="user/sign-in.jsp">Logout</a></li>
                </ul>
            </li>

        </ul>
        <a class="brand" href="index.jsp"><span class="first">Hadoop</span> <span class="second">应用平台</span></a>
    </div>
</div>


<div class="sidebar-nav">
    <form class="search form-inline">
        <input type="text" placeholder="Search...">
    </form>

    <a href="#dashboard-menu" class="nav-header" data-toggle="collapse"><i class="icon-dashboard"></i>Dashboard</a>
    <ul id="dashboard-menu" class="nav nav-list collapse in">
        <li><a href="index.jsp">Home</a></li>
        <li><a href="user/users.jsp">Sample List</a></li>
        <li><a href="user/user.jsp">Sample Item</a></li>
        <li><a href="media.jsp">Media</a></li>
        <li class="active"><a href="calendar.jsp">Calendar</a></li>

    </ul>

    <a href="#accounts-menu" class="nav-header" data-toggle="collapse"><i class="icon-briefcase"></i>Account<span
            class="label label-info">+3</span></a>
    <ul id="accounts-menu" class="nav nav-list collapse">
        <li><a href="user/sign-in.jsp">Sign In</a></li>
        <li><a href="user/sign-up.jsp">Sign Up</a></li>
        <li><a href="user/reset-password.jsp">Reset Password</a></li>
    </ul>

    <a href="#error-menu" class="nav-header collapsed" data-toggle="collapse"><i class="icon-exclamation-sign"></i>Error
        Pages <i class="icon-chevron-up"></i></a>
    <ul id="error-menu" class="nav nav-list collapse">
        <li><a href="error/403.jsp">403 page</a></li>
        <li><a href="error/404.jsp">404 page</a></li>
        <li><a href="error/500.jsp">500 page</a></li>
        <li><a href="error/503.jsp">503 page</a></li>
    </ul>

    <a href="#legal-menu" class="nav-header" data-toggle="collapse"><i class="icon-legal"></i>Legal</a>
    <ul id="legal-menu" class="nav nav-list collapse">
        <li><a href="privacy-policy.jsp">Privacy Policy</a></li>
        <li><a href="terms-and-conditions.jsp">Terms and Conditions</a></li>
    </ul>

    <a href="help.jsp" class="nav-header"><i class="icon-question-sign"></i>Help</a>
    <a href="faq.jsp" class="nav-header"><i class="icon-comment"></i>Faq</a>
</div>


<div class="content">

    <div class="header">
        <div class="stats">
            <p class="stat"><span class="number">5</span>users</p>

            <p class="stat"><span class="number">19</span>Events</p>
        </div>

        <h1 class="page-title">Calendar</h1>
    </div>

    <ul class="breadcrumb">
        <li><a href="index.jsp">Home</a> <span class="divider">/</span></li>
        <li class="active">Calendar</li>
    </ul>

    <div class="container-fluid">
        <div class="row-fluid">


            <link rel='stylesheet' type='text/css'
                  href='${pageContext.request.contextPath}/lib/fullcalendar-1.5.3/fullcalendar/fullcalendar.css'/>
            <link rel='stylesheet' type='text/css'
                  href='${pageContext.request.contextPath}/lib/fullcalendar-1.5.3/fullcalendar/fullcalendar.print.css'
                  media='print'/>
            <script type='text/javascript'
                    src='${pageContext.request.contextPath}/lib/fullcalendar-1.5.3/fullcalendar/fullcalendar.min.js'></script>

            <script type='text/javascript'>

                $(document).ready(function () {

                    var date = new Date();
                    var d = date.getDate();
                    var m = date.getMonth();
                    var y = date.getFullYear();

                    $('#calendar').fullCalendar({
                        header: false,
                    });
                    $('#calendar').fullCalendar('next');

                });

            </script>
            <style type='text/css'>

                #calendar {
                    width: 100%;
                    margin: 0 auto;
                }

            </style>


            <h2>Upcoming Events</h2>

            <div id='calendar'></div>


            <footer>
                <hr>

                <p class="pull-right">Collect from <a href="http://www.cssmoban.com/" title="网页模板"
                                                      target="_blank">网页模板</a></p>

                <p>&copy; 2012 <a href="#" target="_blank">Portnine</a></p>
            </footer>

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


