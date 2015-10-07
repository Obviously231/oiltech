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
        <a class="brand" href="${pageContext.request.contextPath}/index.jsp"><span class="first">Your</span> <span
                class="second">Company</span></a>
    </div>
</div>


<div class="sidebar-nav">
    <form class="search form-inline">
        <input type="text" placeholder="Search...">
    </form>

    <a href="#dashboard-menu" class="nav-header" data-toggle="collapse"><i class="icon-dashboard"></i>Dashboard</a>
    <ul id="dashboard-menu" class="nav nav-list collapse in">
        <li><a href="${pageContext.request.contextPath}/index.jsp">Home</a></li>
        <li class="active"><a href="users.jsp">软件过程管理复习</a></li>
        <li><a href="user.jsp">Sample Item</a></li>
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

        <h1 class="page-title">软件过程管理复习提纲</h1>
    </div>

    <ul class="breadcrumb">
        <li><a href="index.jsp">Home</a> <span class="divider">/</span></li>
        <li class="active">软件过程管理复习提纲</li>
    </ul>

    <div class="container-fluid">
        <div class="row-fluid">

            <div class="btn-toolbar">
                <button class="btn btn-primary"><i class="icon-plus"></i> New User</button>
                <button class="btn">Import</button>
                <button class="btn">Export</button>
                <div class="btn-group">
                </div>
            </div>
            <div class="well">
                <table class="table">
                    <thead>
                    <tr>
                        <th>#</th>
                        <th>问题</th>
                        <th colspan="2">答案</th>
                        <th style="width: 26px;"></th>
                    </tr>
                    </thead>
                    <tbody>
                    <tr>
                        <td>1-1</td>
                        <td>什么是过程？它包含哪些基本活动？</td>
                        <td colspan="2">
                            过程是指“一组将输入转化为输出的相互关联或相互作用的活动”。<br/>
                            它包含：产品实现过程、管理过程和支持过程。
                        </td>
                        <td>
                            <a href="user.jsp"><i class="icon-pencil"></i></a>
                            <a href="#myModal" role="button" data-toggle="modal"><i class="icon-remove"></i></a>
                        </td>
                    </tr>
                    <tr>
                        <td>1-2</td>
                        <td>什么是软件过程？它包含哪些子过程？</td>
                        <td colspan="2">
                            软件过程是人们用来开发和维护软件及相关产品（如软件项目计划、设计文档、代码、测试用例及用户手册）的活动、方法、实践和改进的集合。<br/>
                            包含以下子过程：<br/>
                            基本过程：软件获取过程、供应过程、开发过程、运行过程和维护过程，包括需求分析、软件设计和编码等过程。<br/>
                            支持过程：对软件主要过程提供支持的过程，包括文档编制过程、配置管理过程、质量保证过程、验证过程和确认过程（测试过程）以及评审过程等。<br/>
                            组织过程：对软件主要过程和支持过程的组织保证过程，包括管理过程、基础设施过程、改进过程和培训过程。
                        </td>
                        <td>
                            <a href="user.jsp"><i class="icon-pencil"></i></a>
                            <a href="#myModal" role="button" data-toggle="modal"><i class="icon-remove"></i></a>
                        </td>
                    </tr>
                    <tr>
                        <td>1-3</td>
                        <td>ISO/IEC15504软件过程评估标准中软件过程被分为哪几个子过程？</td>
                        <td colspan="2">
                            1）工程过程：软件系统、产品的定义、设计、实现以及维护的过程。<br>
                            2）支持过程：在整个软件生命周期中可能随时被任何其他过程所采用的、起辅助作用
                            的过程。<br>
                            3）管理过程：在整个生命周期中为工程过程、支持过程和客户—供应商过程的实践活
                            动提供指导、跟踪和监控的过程。<br>
                            4）组织过程：那些用于建立组织商业目标和定义整个组织内部培训、开发活动和资源
                            使用等规则的过程，并有助于组织在实施项目时更好、更快地实现预定的开发任务和商业目标。<br>
                            5）客户—供应商过程：那些直接影响到客户、对开发的支持、向客户交付软件以及软
                            件正确操作与使用的过程。<br>
                            <img src="../images/rjgc/1-3.png" width="680" height="387"/>
                        </td>
                        <td>
                            <a href="user.jsp"><i class="icon-pencil"></i></a>
                            <a href="#myModal" role="button" data-toggle="modal"><i class="icon-remove"></i></a>
                        </td>
                    </tr>
                    <tr>
                        <td>1-4</td>
                        <td>什么是软件过程规范？</td>
                        <td colspan="2">软件过程规范是软件开发组织行动的准则与指南，如软件基本过程规范、软件支持过程规范和软件组织过程规范。</td>
                        <td>
                            <a href="user.jsp"><i class="icon-pencil"></i></a>
                            <a href="#myModal" role="button" data-toggle="modal"><i class="icon-remove"></i></a>
                        </td>
                    </tr>
                    <tr>
                        <td>1-5</td>
                        <td>什么是软件工程过程？它包括哪些活动？</td>
                        <td colspan="2">
                            软件工程过程：是软件系统、产品的定义、设计、实现以及维护的过程。<br>
                            包含的活动：开发过程、软件运行过程、软件维护过程。
                        </td>
                        <td>
                            <a href="user.jsp"><i class="icon-pencil"></i></a>
                            <a href="#myModal" role="button" data-toggle="modal"><i class="icon-remove"></i></a>
                        </td>
                    </tr>
                    <tr>
                        <td>1-6</td>
                        <td>什么是软件支持过程？它包含哪些活动？</td>
                        <td colspan="2">
                            软件支持过程：是在整个软件生命周期中可能被任何其他过程所采用的、起辅助作用的过程，并可分为若干个层次，如人员培训、设备维护和品质保证等。<br>
                            包含的活动：文档编制过程、配置管理过程、质量保证过程、验证过程、产品确认、联合评审、审核、解决问题。
                        </td>
                        <td>
                            <a href="user.jsp"><i class="icon-pencil"></i></a>
                            <a href="#myModal" role="button" data-toggle="modal"><i class="icon-remove"></i></a>
                        </td>
                    </tr>
                    <tr>
                        <td>1-7</td>
                        <td>什么是软件管理过程？它包含哪些活动？</td>
                        <td colspan="2">
                            软件管理过程：是在整个生命周期中为工程过程、支持过程和客户-供应商过程的实践活动提供指导、跟踪和监控的过程，从而保证过程按计划实施并能达到事先设定的目标。<br>
                            包含的活动：项目管理过程、质量管理过程、风险管理过程、子合同商管理过程。
                        </td>
                        <td>
                            <a href="user.jsp"><i class="icon-pencil"></i></a>
                            <a href="#myModal" role="button" data-toggle="modal"><i class="icon-remove"></i></a>
                        </td>
                    </tr>
                    <tr>
                        <td>1-8</td>
                        <td>什么是软件组织过程？它包含哪些活动？</td>
                        <td colspan="2">
                            软件组织过程：是软件组织用来建立和实现由相关的生命周期过程和人员组成的基础结构并不断改进这种结构的过程。<br>
                            包含的活动：业务规划过程、定义过程、改进过程、人力资源和培训过程、基础设施过程。
                        </td>
                        <td>
                            <a href="user.jsp"><i class="icon-pencil"></i></a>
                            <a href="#myModal" role="button" data-toggle="modal"><i class="icon-remove"></i></a>
                        </td>
                    </tr>
                    <tr>
                        <td>2-1</td>
                        <td>软件过程不成熟的特点有哪些？</td>
                        <td colspan="2">
                            1）软件过程能力低，不能按预定计划开发出客户满意的产品，项目拖延、费用大大超出预算已成惯例。<br>
                            2）过程性能的不可预见性，对进度和预算估计、产品质量的目标缺乏历史数据和有效方法的客观基础，开发的进度、成本和产品的质量都难以预测。<br>
                            3）过程的不可视性，软件过程缺乏定义、缺乏文档和缺乏跟踪，在整个软件过程中，不清楚每个阶段进出的标准、执行的方法和规则。<br>
                            4）过程的不稳定性，软件过程缺乏定义或只有一些简单的、初级的软件过程定义。<br>
                            5）过程的被动型、缺乏改进的主动性。
                        </td>
                        <td>
                            <a href="user.jsp"><i class="icon-pencil"></i></a>
                            <a href="#myModal" role="button" data-toggle="modal"><i class="icon-remove"></i></a>
                        </td>
                    </tr>
                    <tr>
                        <td>2-2</td>
                        <td>软件过程成熟的标准有哪些？</td>
                        <td colspan="2">
                            1）软件过程能力高。<br>
                            2）软件过程性能可预见性。<br>
                            3）软件过程规范化。<br>
                            4）过程的一致性。<br>
                            5）过程的丰富性。<br>
                            6）过程的可视性。<br>
                            7）过程的稳定性。<br>
                            8）过程的不断改进。
                        </td>
                        <td>
                            <a href="user.jsp"><i class="icon-pencil"></i></a>
                            <a href="#myModal" role="button" data-toggle="modal"><i class="icon-remove"></i></a>
                        </td>
                    </tr>
                    <tr>
                        <td>2-3</td>
                        <td>什么是CMM与CMMI？构成CMM的4项基本元素是什么？CMM/CMMI成熟度的等级与内容？</td>
                        <td colspan="2">
                            CMM是软件过程能力成熟度模型（Capacity Maturity Model）。<br>
                            CMMI是能力成熟度模型集成（Capacity Maturity Model Integration）。<br>
                            CMM的4项基本元素：成熟度等级、关键过程域、关键实践、共同特点。<br>
                            CMM/CMMI成熟度的等级与内容：<br>
                            1）初始级<br>
                            初始级具有明显的不成熟过程的特点，过程缺乏定义，其过程是无秩序的，有时甚至是混乱的。必须依赖于组织中每个成员的自身能力，特别是依赖于很强的项目管理者。<br>
                            2）可重复级/受管理级<br>
                            可重复级/受管理级已建立了管理软件项目的方针和实施这些仿真的规程，使软件项目的有效管理过程制度化，有能力去跟踪成本、进度和质量。但是子过程仍是不可视的。<br>
                            3）已定义级<br>
                            一个已定义软件过程包含一组协调的、集成的、适度定义的软件工程过程和管理过程，具有良好的文档化、标准化，使软件过程具有可视性、一致性、稳定性和可重复性，软件过程被集成为一个有机的整体。<br>
                            4）定量管理级/已管理级<br>
                            已管理级的软件过程是量化的管理过程。在上述已定义级的基础上，可以建立有关软件过程和产品质量的、一致的度量体系，采集详细的数据进行分析，从而对软件产品和过程进行有效的定量控制和管理。<br>
                            5）优化级/持续优化级<br>
                            优化级不断改善组织的软件过程能力和项目的过程性能，利用来自过程和来自新思想、新技术的先导性试验的定量反馈信息，使持续过程改进成为可能。<br>
                            <img src="../images/rjgc/2-2.png" width="400" height="563">
                        </td>
                        <td>
                            <a href="user.jsp"><i class="icon-pencil"></i></a>
                            <a href="#myModal" role="button" data-toggle="modal"><i class="icon-remove"></i></a>
                        </td>
                    </tr>
                    <tr>
                        <td>3-1</td>
                        <td>组织过程焦点的活动包括哪些活动？</td>
                        <td colspan="2">
                            1）定期评估软件过程并根据评估结果制定相应的更改计划。<br>
                            2）组织制定和维护有关软件过程和改进活动的计划。<br>
                            3）协调组织的标准软件过程和项目自定义的软件过程的制定和改进工作。<br>
                            4）协调组织的软件过程数据库的使用。<br>
                            5）新过程、新方法、新工具的评价、监控和推广。<br>
                            6）对有关组织和项目的软件过程培训进行统一管理。<br>
                            7）及时将有关软件过程制定和改进的活动通知实施软件过程相关的组和人员。
                        </td>
                        <td>
                            <a href="user.jsp"><i class="icon-pencil"></i></a>
                            <a href="#myModal" role="button" data-toggle="modal"><i class="icon-remove"></i></a>
                        </td>
                    </tr>
                    <tr>
                        <td>3-2</td>
                        <td>什么是PSP？PSP成熟度模型包含哪些等级？</td>
                        <td colspan="2">
                            PSP：个体软件过程。<br>
                            PSP成熟度模型包括四个等级：个体度量过程、个体计划过程、个体质量管理过程、个体循环过程。
                        </td>
                        <td>
                            <a href="user.jsp"><i class="icon-pencil"></i></a>
                            <a href="#myModal" role="button" data-toggle="modal"><i class="icon-remove"></i></a>
                        </td>
                    </tr>
                    <tr>
                        <td>3-3</td>
                        <td>什么是PSP？PSP成熟度模型包含哪些等级？</td>
                        <td colspan="2">
                            PSP：个体软件过程。<br>
                            PSP成熟度模型包括四个等级：个体度量过程、个体计划过程、个体质量管理过程、个体循环过程。<br>
                            <img src="../images/rjgc/3-3.png" width="400" height="580">
                        </td>
                        <td>
                            <a href="user.jsp"><i class="icon-pencil"></i></a>
                            <a href="#myModal" role="button" data-toggle="modal"><i class="icon-remove"></i></a>
                        </td>
                    </tr>
                    <tr>
                        <td>3-4</td>
                        <td>什么是TSP？TSP的工作流程是什么？</td>
                        <td colspan="2">
                            TSP：团队软件过程。<br>
                            TSP工作流程：通常将整个工作划分为多个周期。每一个周期都包含一套完整的需求、设计、实现和测试的开发过程。如图所示整个开发过程采用的是循环的开发策略，每一个周期都完成一个最终产品的前期可测试产品，并在最后完成最终的可交付产品。<br>
                            <img src="../images/rjgc/3-4.png" width="400" height="688">
                        </td>
                        <td>
                            <a href="user.jsp"><i class="icon-pencil"></i></a>
                            <a href="#myModal" role="button" data-toggle="modal"><i class="icon-remove"></i></a>
                        </td>
                    </tr>
                    <tr>
                        <td>4-1</td>
                        <td>软件需求获取的方法？</td>
                        <td colspan="2">
                            1）需求研讨会 2）头脑风暴 3）用例模型 4）访谈 5）角色扮演 6）原型法
                        </td>
                        <td>
                            <a href="user.jsp"><i class="icon-pencil"></i></a>
                            <a href="#myModal" role="button" data-toggle="modal"><i class="icon-remove"></i></a>
                        </td>
                    </tr>
                    <tr>
                        <td>4-2</td>
                        <td>软件需求的层次和内容？</td>
                        <td colspan="2">
                            软件需求包括三个不同的层次：业务需求、用户需求和功能需求（也包括非功能需求）。<br>
                            1）业务需求反映了组织机构或客户对系统、产品高层次的目标要求，它们在项目视图与范围文档中予以说明。<br>
                            2）用户需求文档描述了用户使用产品必须要完成的任务，这在使用实例文档或方案脚本说明中予以说明。<br>
                            3）功能需求定义了开发人员必须实现的软件功能，使得用户能完成他们的任务，从而满足了业务需求。
                        </td>
                        <td>
                            <a href="user.jsp"><i class="icon-pencil"></i></a>
                            <a href="#myModal" role="button" data-toggle="modal"><i class="icon-remove"></i></a>
                        </td>
                    </tr>
                    <tr>
                        <td>4-3</td>
                        <td>需求变更控制流程图及需求变更控制步骤？</td>
                        <td colspan="2">
                            需求变更控制步骤：<br>
                            需求变更的时候，要提出变更申请，还要由需求变更控制委员会（CCB）对提出的申请进行评估，评估的内容包括需求的重要性、时间和资金等。评估之后要做出通过与否的决定。如果CCB确认了提交的变更请求，则将指派某个人对原来的需求进行修改，并对其进行验证，最终才实施该需求的变更。<br>
                            <img src="../images/rjgc/4-3.png" width="400" height="530">
                        </td>
                        <td>
                            <a href="user.jsp"><i class="icon-pencil"></i></a>
                            <a href="#myModal" role="button" data-toggle="modal"><i class="icon-remove"></i></a>
                        </td>
                    </tr>
                    <tr>
                        <td>5-1</td>
                        <td>软件过程技术架构包含哪些内容？</td>
                        <td colspan="2">
                            软件过程的技术构架由下列5项内容所构成：<br>
                            1）数据和文档的存储、检索工具。<br>
                            2）过程分析和决策支持工具。<br>
                            3）软件过程模式。<br>
                            4）软件过程剪裁的技术方法。<br>
                            5）软件过程度量和评估工具。
                        </td>
                        <td>
                            <a href="user.jsp"><i class="icon-pencil"></i></a>
                            <a href="#myModal" role="button" data-toggle="modal"><i class="icon-remove"></i></a>
                        </td>
                    </tr>
                    <tr>
                        <td>5-2</td>
                        <td>软件过程资源包括哪些资源？</td>
                        <td colspan="2">
                            1）组织的标准软件过程。<br>
                            2）已认证的软件生命周期。<br>
                            3）对组织标准软件过程进行剪裁的原则与标准。<br>
                            4）组织的过程数据库。
                        </td>
                        <td>
                            <a href="user.jsp"><i class="icon-pencil"></i></a>
                            <a href="#myModal" role="button" data-toggle="modal"><i class="icon-remove"></i></a>
                        </td>
                    </tr>
                    <tr>
                        <td>5-3</td>
                        <td>过程问题解决的系统方法包括哪些方法？</td>
                        <td colspan="2">
                            1）问题说明阶段的工作成果是提出目标，确定评价指标和约束条件。<br>
                            2）分析研究阶段提出各种备选方案并预计一旦实施后可能产生的结果。<br>
                            3）最后的评价阶段是将各方案的评价比较结果提供给决策者，作为判断抉择的依据。
                        </td>
                        <td>
                            <a href="user.jsp"><i class="icon-pencil"></i></a>
                            <a href="#myModal" role="button" data-toggle="modal"><i class="icon-remove"></i></a>
                        </td>
                    </tr>
                    <tr>
                        <td>5-3</td>
                        <td>过程问题解决的系统方法包括哪些方法？</td>
                        <td colspan="2">
                            1）问题说明阶段的工作成果是提出目标，确定评价指标和约束条件。<br>
                            2）分析研究阶段提出各种备选方案并预计一旦实施后可能产生的结果。<br>
                            3）最后的评价阶段是将各方案的评价比较结果提供给决策者，作为判断抉择的依据。
                        </td>
                        <td>
                            <a href="user.jsp"><i class="icon-pencil"></i></a>
                            <a href="#myModal" role="button" data-toggle="modal"><i class="icon-remove"></i></a>
                        </td>
                    </tr>
                    <tr>
                        <td>6-1</td>
                        <td>什么是配置项？软件配置管理流程图及配置管理步骤？</td>
                        <td colspan="2">
                            配置项是在软件生存周期内所产生的各种应纳入管理范围的系统构成成分。包括各种管理文档和技术文档，源程序与目标代码，以及运行所需的各种数据等（配置管理的资源对象）。<br>
                            配置管理步骤：软件提出变更请求，授权变更，而后从软件基准库检出副本，执行变更，变更结束后进行评审，检入基准库，发布软件产品。如果需要配置审计的修正措施放入软件基准库。<br>
                            <img src="../images/rjgc/6-1.jpg" width="589" height="388">
                        </td>
                        <td>
                            <a href="user.jsp"><i class="icon-pencil"></i></a>
                            <a href="#myModal" role="button" data-toggle="modal"><i class="icon-remove"></i></a>
                        </td>
                    </tr>
                    <tr>
                        <td>6-2</td>
                        <td>变更控制流程图及变更控制步骤？</td>
                        <td colspan="2">
                            软件变更是不可避免的。软件提出变更请求，（变更请求的原因可能是变更需求，软件增强或者是软件缺陷）。然后向相关责任人提出变更请求，提交给软件配置委员会验证变更请求，软件配置委员会会对变更进行评估。如果拒绝了变更请求，将会记录下此次变更请求，并通知相关责任人。如果变更获得批准，软件配置委员会将指派给相应的开发人员检出此次变更，此次变更得以实现，验证此次的变更请求，验证完毕后，本次变更请求完成，检入，关闭。<br>
                            <img src="../images/rjgc/6-2.jpg" width="500" height="603">
                        </td>
                        <td>
                            <a href="user.jsp"><i class="icon-pencil"></i></a>
                            <a href="#myModal" role="button" data-toggle="modal"><i class="icon-remove"></i></a>
                        </td>
                    </tr>
                    <tr>
                        <td>6-3</td>
                        <td>软件规模度量最常用哪三种方法？</td>
                        <td colspan="2">
                            代码行方法，功能点方法，对象点方法。<br>
                        </td>
                        <td>
                            <a href="user.jsp"><i class="icon-pencil"></i></a>
                            <a href="#myModal" role="button" data-toggle="modal"><i class="icon-remove"></i></a>
                        </td>
                    </tr>
                    <tr>
                        <td>6-4</td>
                        <td>项目成本估算广泛应用的方法是哪三种？如何进行项目各部分成本的估算？</td>
                        <td colspan="2">
                            经验估算法，比例法，工作分解结构表WBS全面估算。<br>
                            项目各部分成本估算看书上P136-137。
                        </td>
                        <td>
                            <a href="user.jsp"><i class="icon-pencil"></i></a>
                            <a href="#myModal" role="button" data-toggle="modal"><i class="icon-remove"></i></a>
                        </td>
                    </tr>
                    <tr>
                        <td>6-5</td>
                        <td>项目风险与项目时间、成本之间的关系？</td>
                        <td colspan="2">
                            在软件开发生命周期的前期，软件发生风险的概率比较高，但是处理风险的成本比较低。在软件开发生命周期的后期，软件发生风险的概率比较低，但是处理风险的成本比较高。<br>
                            <img src="../images/rjgc/6-5.jpg" width="500" height="530">
                        </td>
                        <td>
                            <a href="user.jsp"><i class="icon-pencil"></i></a>
                            <a href="#myModal" role="button" data-toggle="modal"><i class="icon-remove"></i></a>
                        </td>
                    </tr>
                    <tr>
                        <td>6-6</td>
                        <td>风险分析的四种最常用的方法？</td>
                        <td colspan="2">
                            情景分析，比率/范围分析，概率分析，敏感性分析。<br>
                        </td>
                        <td>
                            <a href="user.jsp"><i class="icon-pencil"></i></a>
                            <a href="#myModal" role="button" data-toggle="modal"><i class="icon-remove"></i></a>
                        </td>
                    </tr>
                    <tr>
                        <td>6-7</td>
                        <td>项目计划阶段需要考虑哪三个问题？</td>
                        <td colspan="2">
                            1）怎么做？
                            项目计划必须描述你如何去完成目标，这包括取得最终结果之前的所有交付，以及完成每个交付所需要完成的工作。项目里通常还需要包含项目风险，预测哪里会出现什么问题以及可能的应对措施。<br>
                            2）什么时候做？ 把项目工作排序，估计每个工作需要多少时间完成，确定出阶段交付日期，并最终制定一个日程表。<br>
                            3）谁来做？ 所有的任务都需要人来做。根据技术和能力将人员分配到具体的任务上。
                        </td>
                        <td>
                            <a href="user.jsp"><i class="icon-pencil"></i></a>
                            <a href="#myModal" role="button" data-toggle="modal"><i class="icon-remove"></i></a>
                        </td>
                    </tr>
                    <tr>
                        <td>6-8</td>
                        <td>箭线图法ADM与前导图法PDM？如何从PDM得到ADM？</td>
                        <td colspan="2">
                            结合第六章PPT，方法不好说明。<br>
                            箭线图法（ADM）是一种利用箭线代表活动而在节点处将活动联系起来表示依赖关系的编制项目网络图的办法。<br>
                            前导图法（PDM）是一种利用节点代表活动，并利用表示依赖关系的箭线将节点联系起来的编制项目网络图的方法。
                        </td>
                        <td>
                            <a href="user.jsp"><i class="icon-pencil"></i></a>
                            <a href="#myModal" role="button" data-toggle="modal"><i class="icon-remove"></i></a>
                        </td>
                    </tr>
                    <tr>
                        <td>7-1</td>
                        <td>制定质量计划的方法和技术包括哪四项内容？</td>
                        <td colspan="2">
                            1）利益 / 成本分析 2）基准 3）流程图 4）试验设计
                        </td>
                        <td>
                            <a href="user.jsp"><i class="icon-pencil"></i></a>
                            <a href="#myModal" role="button" data-toggle="modal"><i class="icon-remove"></i></a>
                        </td>
                    </tr>
                    <tr>
                        <td>7-2</td>
                        <td>软件评审流程图及软件评审步骤？</td>
                        <td colspan="2">
                            <img src="../images/rjgc/7-2.png" width="600" height="667">
                        </td>
                        <td>
                            <a href="user.jsp"><i class="icon-pencil"></i></a>
                            <a href="#myModal" role="button" data-toggle="modal"><i class="icon-remove"></i></a>
                        </td>
                    </tr>
                    <tr>
                        <td>7-3</td>
                        <td>从非正式到正式的软件评审方法有哪些？</td>
                        <td colspan="2">
                            1）临时评审 2）轮查 3）走查 4）小组评审 5）审查<br>
                            <img src="../images/rjgc/7-3.png" width="700" height="179">
                        </td>
                        <td>
                            <a href="user.jsp"><i class="icon-pencil"></i></a>
                            <a href="#myModal" role="button" data-toggle="modal"><i class="icon-remove"></i></a>
                        </td>
                    </tr>
                    <tr>
                        <td>7-4</td>
                        <td>软件度量的三要素？</td>
                        <td colspan="2">
                            数据、图表、度量模型。
                        </td>
                        <td>
                            <a href="user.jsp"><i class="icon-pencil"></i></a>
                            <a href="#myModal" role="button" data-toggle="modal"><i class="icon-remove"></i></a>
                        </td>
                    </tr>
                    <tr>
                        <td>7-5</td>
                        <td>代码质量、产品质量、测试改进与测试效率的计算方法？</td>
                        <td colspan="2">
                            1）代码质量：(Wtp + Wf)/KCSI<br>
                            Wtp是在测试过程中（正式发布产品之前）发现的缺陷的权重，他不仅包含了由测试小组发现的缺陷，还包括其他小组发现的缺陷。<br>
                            Wf是产品发布之后发现的缺陷的权重。<br>
                            KCSI是新增加的和修改的千行代码数。<br>
                            这个质量指标的值越低，说明发现的缺陷越少或者严重性更低，同时说明开发小组完成的代码质量越高。<br>
                            <br>
                            2）产品质量：Wf/KCSI<br>
                            该指标的值越低，说明遗留给客户的缺陷越少或者严重性更低，同时说明发布的产品质量越高。<br>
                            <br>
                            3）测试改进：Wttp/KCSI<br>
                            Wttp是在产品的测试过程中由测试小组发现的缺陷的权重。<br>
                            该指标越高，说明 测试小组发现的缺陷越多或者严重性更高。在代码质量不变的前提下，如果该指标升高，则说明测试工作得到了有效的改进。<br>
                            <br>
                            4）测试效率：Wt/(Wtp + Wf)*100%<br>
                            Wt是整个产品中由测试小组发现的所有缺陷的权重，它不仅包含了在测试阶段由测试小组发现的缺陷，同时包含了产品发布之后由测试小组发现的缺陷。<br>
                            该指标越高，说明在产品发布之前发现的缺陷越多或者越重要，同时说明测试小组的效率越高。
                        </td>
                        <td>
                            <a href="user.jsp"><i class="icon-pencil"></i></a>
                            <a href="#myModal" role="button" data-toggle="modal"><i class="icon-remove"></i></a>
                        </td>
                    </tr>
                    <tr>
                        <td>7-6</td>
                        <td>(36)PSP、TSP、CMM、CMMI、SEPG P101、WBS、QA、IPD、SCM P123、DIPF等缩写是哪些概念的简称？其含义分别又是什么？</td>
                        <td colspan="2">
                            PSP：个体软件过程(Personal Software
                            Process)。是基于软件工程思想、软件技术和专业方法，帮助软件开发团队中的个体——软件工程师改善其个人能力和素质的组织过程。P52
                            <br>
                            TSP：团队软件过程(Team Software
                            Process)。是建立在个体软件过程之上，致力于开发高质量的产品，建立、管理和授权项目小组，改善开发团队过程、提高开发团队能力的指导性框架。（P53）
                            <br>
                            CMM：软件过程能力成熟度模型(Capacity Maturity
                            Model)。是一种描述有效软件过程的关键元素的框架，将软件过程、软件过程能力、软件过程性能和软件过程成熟度等概念集为一体。（P33）
                            <br>
                            CMMI：软件过程能力成熟度集成(Capacity Maturity Model Integrity)。是在CMM的基础上，试图把现有的各种能力成熟度模型（包括ISO
                            15504），集成到一个框架中去。（P36）
                            <br>
                            SEPG：软件工程过程组(Software Engineering Process Group
                            )。是企业在进行过程改进或实施CMM中所成立的监控管理小组。他们的主要任务是推动企业所应用的过程的定义，维护和改进。
                            WBS：工作分解结构表(Work Breakdown Structure)。（P143）
                            <br>
                            QA：质量保证(Quality Assurance)。采取相关活动，以保证一个开发组织交付的产品满足性能需求和已确立的标准和过程。
                            <br>
                            IPD：集成产品开发模式(Integrated Product
                            Development)。是一套针对集成化产品而研制出来的产品开发过程的管理体系，包括过程管理思想、模式和方法。（P190）
                            <br>
                            SCM：软件配置管理(Software Configuration
                            Management)。简单而言就是管理软件的变化。它属于软件工程过程，通常由相应的工具、过程和方法学组成。（P125）
                            <br>
                            DIPF：过程缺陷密度(Density In Process
                            Faults)。是一种度量标准，可以用来判定过程产品的质量以及检验过程的执行程度。DIPF=Dn/Sp，其中Dn是被发现的缺陷数，Sp是指被测试的软件产品规模。（P174）
                        </td>
                        <td>
                            <a href="user.jsp"><i class="icon-pencil"></i></a>
                            <a href="#myModal" role="button" data-toggle="modal"><i class="icon-remove"></i></a>
                        </td>
                    </tr>
                    </tbody>
                </table>
            </div>
            <div class="pagination">
                <ul>
                    <li><a href="#">Prev</a></li>
                    <li><a href="#">1</a></li>
                    <li><a href="#">2</a></li>
                    <li><a href="#">3</a></li>
                    <li><a href="#">4</a></li>
                    <li><a href="#">Next</a></li>
                </ul>
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


