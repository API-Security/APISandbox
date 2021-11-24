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
    <link href="${ctx}/static/css/plugins/toastr/toastr.min.css" rel="stylesheet">
    <link href="${ctx}/static/css/plugins/datapicker/datepicker3.css" rel="stylesheet">
    <link href="${ctx}/static/css/plugins/fileinput/fileinput.min.css" rel="stylesheet">
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
                <h2>对公账号</h2>
                <ol class="breadcrumb">
                    <li>
                        <a href="${ctx }/index">首页</a>
                    </li>
                    <li>
                        对公账号
                    </li>
                    <li class="active">
                        对公账号详细
                    </li>
                </ol>
            </div>
        </div>

        <!-----内容区域---->
        <div class="wrapper wrapper-content animated fadeInRight">
            <div class="row">
                <div class="col-md-12">
                    <div class="ibox">
                        <div class="ibox-heading">
                            <div class="ibox-title">
                                <h5>对公账号信息</h5>
                            </div>
                        </div>
                        <div class="ibox-content p-t-md">
                            <div class="row">
                                <div class="col-md-12 form-horizontal">
                                    <div class="form-group"><label class="col-sm-4 col-md-3 control-label">对公开户号 <span class="text-danger">*</span></label>
                                        <div class="col-sm-8"><p class="form-control-static">77667899877</p></div>
                                    </div>

                                    <div class="form-group"><label class="col-sm-4 col-sm-3 control-label">对公开户银行卡号 <span class="text-danger">*</span></label>
                                        <div class="col-sm-8"><p class="form-control-static">62736738189101001</p></div>
                                    </div>
                                    <div class="form-group"><label class="col-sm-4 col-sm-3 control-label">对公账号联系人手机 <span class="text-danger">*</span></label>
                                        <div class="col-sm-8"><p class="form-control-static">13915425536</p></div>
                                    </div>
                                    <div class="form-group"><label class="col-sm-4 col-sm-3 control-label">开户许可证 <span class="text-danger">*</span></label>
                                        <div class="col-sm-8"><a target="_blank" href="http://24.media.tumblr.com/20a9c501846f50c1271210639987000f/tumblr_n4vje69pJm1st5lhmo1_1280.jpg"> <img alt="image" class="feed-photo" src="${ctx}/static/img/p1.jpg"></a></div>
                                    </div>

                                    <div class="form-group"><label class="col-sm-4 col-sm-3 control-label">备注说明 <span class="text-danger">*</span></label>
                                        <div class="col-sm-8"><p class="form-control-static">签约审核通过</p></div>
                                    </div>
                                    <div class="form-group"><label class="col-sm-4 col-sm-3 control-label">备注说明 <span class="text-danger">*</span></label>
                                        <div class="col-sm-8"><span class="label label-success">审核通过</span></div>
                                    </div>
                                </div>
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
