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
                    <li><a tabindex="-1" href="sign-in.jsp">Logout</a></li>
                </ul>
            </li>

        </ul>
        <a class="brand" href="${pageContext.request.contextPath}/index.jsp"><span class="first">Hadoop</span> <span
                class="second">应用平台</span></a>
    </div>
</div>


<div class="sidebar-nav">
    <form class="search form-inline">
        <input type="text" placeholder="Search...">
    </form>

    <a href="#dashboard-menu" class="nav-header" data-toggle="collapse"><i class="icon-dashboard"></i>Dashboard</a>
    <ul id="dashboard-menu" class="nav nav-list collapse in">
        <li><a href="${pageContext.request.contextPath}/index.jsp">Home</a></li>
        <li><a href="users.jsp">Sample List</a></li>
        <li class="active"><a href="user.jsp">Sample Item</a></li>
        <li><a href="../media.jsp">Media</a></li>
        <li><a href="../calendar.jsp">Calendar</a></li>

    </ul>

    <a href="#accounts-menu" class="nav-header" data-toggle="collapse"><i class="icon-briefcase"></i>Account<span
            class="label label-info">+3</span></a>
    <ul id="accounts-menu" class="nav nav-list collapse">
        <li><a href="sign-in.jsp">Sign In</a></li>
        <li><a href="sign-up.jsp">Sign Up</a></li>
        <li><a href="reset-password.jsp">Reset Password</a></li>
    </ul>

    <a href="#error-menu" class="nav-header collapsed" data-toggle="collapse"><i class="icon-exclamation-sign"></i>Error
        Pages <i class="icon-chevron-up"></i></a>
    <ul id="error-menu" class="nav nav-list collapse">
        <li><a href="../error/403.jsp">403 page</a></li>
        <li><a href="../error/404.jsp">404 page</a></li>
        <li><a href="../error/500.jsp">500 page</a></li>
        <li><a href="../error/503.jsp">503 page</a></li>
    </ul>

    <a href="#legal-menu" class="nav-header" data-toggle="collapse"><i class="icon-legal"></i>Legal</a>
    <ul id="legal-menu" class="nav nav-list collapse">
        <li><a href="../privacy-policy.jsp">Privacy Policy</a></li>
        <li><a href="../terms-and-conditions.jsp">Terms and Conditions</a></li>
    </ul>

    <a href="../help.jsp" class="nav-header"><i class="icon-question-sign"></i>Help</a>
    <a href="../faq.jsp" class="nav-header"><i class="icon-comment"></i>Faq</a>
</div>


<div class="content">

    <div class="header">

        <h1 class="page-title">Edit User</h1>
    </div>

    <ul class="breadcrumb">
        <li><a href="index.jsp">Home</a> <span class="divider">/</span></li>
        <li><a href="users.jsp">Users</a> <span class="divider">/</span></li>
        <li class="active">User</li>
    </ul>

    <div class="container-fluid">
        <div class="row-fluid">

            <div class="btn-toolbar">
                <button class="btn btn-primary"><i class="icon-save"></i> Save</button>
                <a href="#myModal" data-toggle="modal" class="btn">Delete</a>

                <div class="btn-group">
                </div>
            </div>
            <div class="well">
                <ul class="nav nav-tabs">
                    <li class="active"><a href="#home" data-toggle="tab">Profile</a></li>
                    <li><a href="#profile" data-toggle="tab">Password</a></li>
                </ul>
                <div id="myTabContent" class="tab-content">
                    <div class="tab-pane active in" id="home">
                        <form id="tab">
                            <label>Username</label>
                            <input type="text" value="jsmith" class="input-xlarge">
                            <label>First Name</label>
                            <input type="text" value="John" class="input-xlarge">
                            <label>Last Name</label>
                            <input type="text" value="Smith" class="input-xlarge">
                            <label>Email</label>
                            <input type="text" value="jsmith@yourcompany.com" class="input-xlarge">
                            <label>Address</label>
        <textarea value="Smith" rows="3" class="input-xlarge">
2817 S 49th
Apt 314
San Jose, CA 95101
        </textarea>
                            <label>Time Zone</label>
                            <select name="DropDownTimezone" id="DropDownTimezone" class="input-xlarge">
                                <option value="-12.0">(GMT -12:00) Eniwetok, Kwajalein</option>
                                <option value="-11.0">(GMT -11:00) Midway Island, Samoa</option>
                                <option value="-10.0">(GMT -10:00) Hawaii</option>
                                <option value="-9.0">(GMT -9:00) Alaska</option>
                                <option selected="selected" value="-8.0">(GMT -8:00) Pacific Time (US &amp; Canada)
                                </option>
                                <option value="-7.0">(GMT -7:00) Mountain Time (US &amp; Canada)</option>
                                <option value="-6.0">(GMT -6:00) Central Time (US &amp; Canada), Mexico City</option>
                                <option value="-5.0">(GMT -5:00) Eastern Time (US &amp; Canada), Bogota, Lima</option>
                                <option value="-4.0">(GMT -4:00) Atlantic Time (Canada), Caracas, La Paz</option>
                                <option value="-3.5">(GMT -3:30) Newfoundland</option>
                                <option value="-3.0">(GMT -3:00) Brazil, Buenos Aires, Georgetown</option>
                                <option value="-2.0">(GMT -2:00) Mid-Atlantic</option>
                                <option value="-1.0">(GMT -1:00 hour) Azores, Cape Verde Islands</option>
                                <option value="0.0">(GMT) Western Europe Time, London, Lisbon, Casablanca</option>
                                <option value="1.0">(GMT +1:00 hour) Brussels, Copenhagen, Madrid, Paris</option>
                                <option value="2.0">(GMT +2:00) Kaliningrad, South Africa</option>
                                <option value="3.0">(GMT +3:00) Baghdad, Riyadh, Moscow, St. Petersburg</option>
                                <option value="3.5">(GMT +3:30) Tehran</option>
                                <option value="4.0">(GMT +4:00) Abu Dhabi, Muscat, Baku, Tbilisi</option>
                                <option value="4.5">(GMT +4:30) Kabul</option>
                                <option value="5.0">(GMT +5:00) Ekaterinburg, Islamabad, Karachi, Tashkent</option>
                                <option value="5.5">(GMT +5:30) Bombay, Calcutta, Madras, New Delhi</option>
                                <option value="5.75">(GMT +5:45) Kathmandu</option>
                                <option value="6.0">(GMT +6:00) Almaty, Dhaka, Colombo</option>
                                <option value="7.0">(GMT +7:00) Bangkok, Hanoi, Jakarta</option>
                                <option value="8.0">(GMT +8:00) Beijing, Perth, Singapore, Hong Kong</option>
                                <option value="9.0">(GMT +9:00) Tokyo, Seoul, Osaka, Sapporo, Yakutsk</option>
                                <option value="9.5">(GMT +9:30) Adelaide, Darwin</option>
                                <option value="10.0">(GMT +10:00) Eastern Australia, Guam, Vladivostok</option>
                                <option value="11.0">(GMT +11:00) Magadan, Solomon Islands, New Caledonia</option>
                                <option value="12.0">(GMT +12:00) Auckland, Wellington, Fiji, Kamchatka</option>
                            </select>
                        </form>
                    </div>
                    <div class="tab-pane fade" id="profile">
                        <form id="tab2">
                            <label>New Password</label>
                            <input type="password" class="input-xlarge">

                            <div>
                                <button class="btn btn-primary">Update</button>
                            </div>
                        </form>
                    </div>
                </div>

            </div>

            <div class="modal small hide fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel"
                 aria-hidden="true">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                    <h3 id="myModalLabel">Delete Confirmation</h3>
                </div>
                <div class="modal-body">

                    <p class="error-text"><i class="icon-warning-sign modal-icon"></i>Are you sure you want to delete
                        the user?</p>
                </div>
                <div class="modal-footer">
                    <button class="btn" data-dismiss="modal" aria-hidden="true">Cancel</button>
                    <button class="btn btn-danger" data-dismiss="modal">Delete</button>
                </div>
            </div>


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


