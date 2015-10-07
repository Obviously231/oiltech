<%--
  Created by IntelliJ IDEA.
  User: Obvious
  Date: 2015/10/3
  Time: 15:49
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
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
            outline:none;
        }

        a{
            text-decoration:none;
        }


    </style>

    <script type="text/javascript">
        $(document).ready(function () {
            $("#deliverDate").Zebra_DatePicker();
        });
    </script>


</head>
<body>
<div class="panel-group" id="accordion" role="tablist" aria-multiselectable="true">
    <div class="panel panel-default">
        <div class="panel-heading" role="tab" id="headingOne">
            <h4 class="panel-title">
                <a role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseOne"
                   aria-expanded="true" aria-controls="collapseOne">
                    <span>XXX公司</span><span style="margin-left: 20px">XXX管材</span><span style="margin-left: 20px">X月X日约定交货</span><span
                        style="margin-left: 20px">贸易方式：XXXX</span>
                </a>
            </h4>
        </div>
        <div id="collapseOne" class="panel-collapse collapse in" role="tabpanel" aria-labelledby="headingOne">
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
                <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseTwo"
                   aria-expanded="false" aria-controls="collapseTwo">
                    Collapsible Group Item #2
                </a>
            </h4>
        </div>
        <div id="collapseTwo" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingTwo">
            <div class="panel-body">
                Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf
                moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod.
                Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda
                shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea
                proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim
                aesthetic synth nesciunt you probably haven't heard of them accusamus labore sustainable VHS.
            </div>
        </div>
    </div>
    <div class="panel panel-default">
        <div class="panel-heading" role="tab" id="headingThree">
            <h4 class="panel-title">
                <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseThree"
                   aria-expanded="false" aria-controls="collapseThree">
                    Collapsible Group Item #3
                </a>
            </h4>
        </div>
        <div id="collapseThree" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingThree">
            <div class="panel-body">
                Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf
                moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod.
                Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda
                shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea
                proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim
                aesthetic synth nesciunt you probably haven't heard of them accusamus labore sustainable VHS.
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
