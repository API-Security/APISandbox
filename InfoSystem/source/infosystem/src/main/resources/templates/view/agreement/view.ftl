<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>后台管理系统</title>
    <meta name="keyword" content="">
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="renderer" content="webkit">
    <meta name="Author" content="zifan">
    <meta name="copyright" content="胡桃夹子。All Rights Reserved">
    <link href="${ctx}/static/css/bootstrap.min.css" rel="stylesheet">
    <link href="${ctx}/static/font-awesome/css/font-awesome.css" rel="stylesheet">
    <link href="${ctx}/static/css/animate.css" rel="stylesheet">
    <link href="${ctx}/static/css/style.css" rel="stylesheet">
</head>

<body class="fixed-sidebar">
<div id="wrapper">
    <!----左侧导航开始----->
    <nav class="navbar-default navbar-static-side" role="navigation" id="leftnav"></nav>
    <!----左侧导航结束----->

    <!---右侧内容区开始---->
    <div id="page-wrapper" class="gray-bg">
        <!---顶部状态栏 star-->
        <div class="row ">
            <nav class="navbar navbar-fixed-top" role="navigation" id="topnav"></nav>
        </div>
        <!---顶部状态栏 end-->

        <!--------当前位置----->
        <div class="row  border-bottom white-bg page-heading">
            <div class="col-sm-4">
                <h2>合同管理</h2>
                <ol class="breadcrumb">
                    <li>
                        <a href="${ctx }/index">管理首页</a>
                    </li>
                    <li>
                        合同管理
                    </li>
                    <li class="active">
                        签约
                    </li>
                </ol>
            </div>
        </div>

        <!-----内容区域---->
        <div class="wrapper wrapper-content animated fadeInRight">
            <div class="row">
                <div class="col-md-6">
                    <div class="ibox">
                        <div class="ibox-heading">
                            <div class="ibox-title">
                                <h5>合同信息</h5>
                            </div>
                        </div>
                        <div class="ibox-content p-t-md">

                            <table class="table table-hover table-noborder">
                                <tbody>
                                <tr>
                                    <td class="text-right text-nowrap" style="width: 145px"><b>客户信息：</b></td>
                                    <td>客户一：陈小林（13598821365），客户二：陈小林（13598821365）</td>
                                </tr>
                                <tr>
                                    <td class="text-right text-nowrap"><b>房源信息：</b></td>
                                    <td>测试多媒体大厦</td>
                                </tr>
                                <tr>
                                    <td class="text-right text-nowrap"><b>经纪人信息：</b></td>
                                    <td>经纪人：明明  公司：测试经纪公司  门店：多媒体门店</td>
                                </tr>
                                <tr>
                                    <td class="text-right text-nowrap"><b>置业顾问信息：</b></td>
                                    <td>置业顾问：--</td>
                                </tr>
                                <tr>
                                    <td class="text-right text-nowrap"><b>合同状态：</b></td>
                                    <td>签约审核通过</td>
                                </tr>
                                <tr>
                                    <td class="text-right text-nowrap"><b>收款状态：</b></td>
                                    <td>应收：20000.0  已收：20000.0</td>
                                </tr>
                                <tr>
                                    <td class="text-right text-nowrap"><b>预约时间：</b></td>
                                    <td>2015-10-20</td>
                                </tr>
                                <tr>
                                    <td class="text-right text-nowrap"><b>认购时间：</b></td>
                                    <td>2015-10-20</td>
                                </tr>
                                <tr>
                                    <td class="text-right text-nowrap"><b>签约时间：</b></td>
                                    <td>2015-11-05</td>
                                </tr>
                                <tr>
                                    <td class="text-right text-nowrap"><b>取消时间：</b></td>
                                    <td></td>
                                </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                    <div class="ibox float-e-margins">
                        <div class="ibox-title">
                            <h5>经济公司对公账号信息</h5>
                        </div>
                        <div class="ibox-content">
                            <table class="table table-hover table-noborder">
                                <tbody>
                                <tr>
                                    <td class="text-right text-nowrap" style="width: 145px"><b>对公开户号：</b></td>
                                    <td>77667899877</td>
                                </tr>
                                <tr>
                                    <td class="text-right text-nowrap"><b>对公开户银行卡号：</b></td>
                                    <td>62736738189101001</td>
                                </tr>
                                <tr>
                                    <td class="text-right text-nowrap"><b>开户许可证：</b></td>
                                    <td><a href="#">点击查看</a></td>
                                </tr>
                                <tr>
                                    <td class="text-right text-nowrap"><b>对公账号联系电话：</b></td>
                                    <td>13915425536</td>
                                </tr>
                                <tr>
                                    <td class="text-right text-nowrap"><b>对公账号审核状态：</b></td>
                                    <td>审核通过</td>
                                </tr>
                                <tr>
                                    <td class="text-right text-nowrap"><b>对公账号审核备注：</b></td>
                                    <td></td>
                                </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="ibox">
                        <div class="ibox-heading">
                            <div class="ibox-title">
                                <h5>合同关键页</h5>
                            </div>
                        </div>
                        <div class="ibox-content p-t-md">
                            <div class="photos">
                                <a target="_blank" href="http://24.media.tumblr.com/20a9c501846f50c1271210639987000f/tumblr_n4vje69pJm1st5lhmo1_1280.jpg"> <img alt="image" class="feed-photo" src="${ctx}/static/img/p1.jpg"></a>
                                <a target="_blank" href="http://24.media.tumblr.com/20a9c501846f50c1271210639987000f/tumblr_n4vje69pJm1st5lhmo1_1280.jpg"> <img alt="image" class="feed-photo" src="${ctx}/static/img/p1.jpg"></a>
                            </div>
                        </div>
                    </div>

                    <div class="ibox">
                        <div class="ibox-heading">
                            <div class="ibox-title">
                                <h5>佣金信息</h5>
                            </div>
                        </div>
                        <div class="ibox-content p-t-md">
                            <table class="table table-hover table-noborder">
                                <tbody>
                                    <tr>
                                        <td class="text-right text-nowrap" style="width: 145px">生成时间：</td>
                                        <td>77667899877</td>
                                    </tr>
                                    <tr>
                                        <td class="text-right text-nowrap">佣金归属者：</td>
                                        <td>62736738189101001</td>
                                    </tr>
                                    <tr>
                                        <td class="text-right text-nowrap">金额：</td>
                                        <td><a href="#">点击查看</a></td>
                                    </tr>
                                    <tr>
                                        <td class="text-right text-nowrap">佣金来源：</td>
                                        <td>13915425536</td>
                                    </tr>
                                    <tr>
                                        <td class="text-right text-nowrap">状态：</td>
                                        <td>审核通过</td>
                                    </tr>
                                    <tr>
                                        <td class="text-right text-nowrap">兑换元宝时间：</td>
                                        <td></td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>

                    <div class="ibox">
                        <div class="ibox-heading">
                            <div class="ibox-title">
                                <h5>佣金操作日志</h5>
                            </div>
                        </div>
                        <div class="ibox-content p-t-md">
                            <div class="table-responsive ">
                                <table class="table table-centerbody table-striped table-condensed text-nowrap" id="editable-sample">
                                    <thead>
                                    <tr>
                                        <th>操作时间 </th>
                                        <th>动作 </th>
                                        <th>操作人员 </th>
                                        <th>备注 </th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <tr>
                                        <td>2015-11-11 22:22:22</td>
                                        <td>审核通过</td>
                                        <td>陈小林</td>
                                        <td>经纪人：明明 公司：测试经纪公司 门店：多媒体门店</td>
                                    </tr>
                                    <tr>
                                        <td>2015-11-11 22:22:22</td>
                                        <td>审核通过</td>
                                        <td>陈小林</td>
                                        <td>经纪人：明明 公司：测试经纪公司 门店：多媒体门店</td>
                                    </tr>
                                    </tbody>
                                </table>
                            </div>

                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-----内容结束----->

        <!----版权信息----->
        <div class="footer">
            <div class="pull-right">
                10GB of <strong>250GB</strong> Free.
            </div>
            <div>
                <strong>Copyright</strong> Example Company &copy; 2014-2015
            </div>
        </div>
    </div>
    <!---右侧内容区结束----->
</div>
<!-- 全局 scripts -->
<script src="${ctx}/static/js/jquery-2.1.1.js"></script>
<script src="${ctx}/static/js/bootstrap.js"></script>
<script src="${ctx}/static/js/plugins/slimscroll/jquery.slimscroll.min.js"></script>
<script src="${ctx}/static/js/plugins/metisMenu/jquery.metisMenu.js"></script>
<script src="${ctx}/static/js/wuling.js"></script>
<script src="${ctx}/static/js/plugins/pace/pace.min.js"></script>
</body>
</html>
