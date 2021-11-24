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
                    <h2>楼盘管理</h2>
                    <ol class="breadcrumb">
                        <li>
                            <a href="${ctx}/index">管理首页</a>
                        </li>
                        <li>
                            <a href="javascript:void(0)">开通楼盘</a>
                        </li>
                        <li class="active">
                            楼盘列表
                        </li>
                    </ol>
                </div>
            </div>
            <!-----内容区域---->
            <div class="wrapper wrapper-content animated fadeInRight">
                <div class="row animated fadeInRight">
                    <div class="col-md-4">
                        <div class="ibox float-e-margins">
                            <div class="ibox-title">
                                <h5>楼盘信息</h5>
                            </div>
                            <div>
                                <div class="ibox-content no-padding border-left-right">
                                    <img alt="image" class="img-responsive" src="${ctx}/static/img/lou.jpg">
                                </div>
                                <div class="ibox-content profile-content">
                                    <h4><strong>上海大宁小城</strong></h4>
                                    <p><i class="fa fa-map-marker"></i> 上海市广中西路282弄</p>
                                    <div class="row m-t-lg">
                                        <div class="col-md-4">
                                            <span class="bar">所属电商</span>
                                            <h5>房易麦（36587</h5>
                                        </div>
                                        <div class="col-md-4">
                                            <span class="line">创建人</span>
                                            <h5>项目经理-F</h5>
                                        </div>
                                        <div class="col-md-4">
                                            <span class="bar">审核备注</span>
                                            <h5>通过审核</h5>
                                        </div>
                                    </div>
                                    <div class="hr-line-dashed"></div>
                                    <h5>
                                        楼盘介绍
                                    </h5>
                                    <p>
                                        楼盘，是香港不动产买卖时，对物业的称呼，一个楼盘可以是一个单位、一幢大厦或一个屋 苑；甚至一幅地皮、一个泊车位、楼花期货等。楼盘的资讯包括建筑面积平方米，有装修、景观、层数、地点、价钱、房间数目，会所设施，甚至实用率。前称资料未必是法例规定，不实陈述时有可能。大楼盘或蓝筹楼盘指其交易量高、价格稳定、转手易且快，铁路沿线。通常成为炒楼者至爱。
                                    </p>

                                    <div class="user-button">
                                        <div class="row">
                                            <div class="col-md-12">
                                                <button type="button" class="btn btn-primary btn-sm btn-block"><i class="fa fa-envelope"></i> 通过审核</button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-8">
                        <div class="ibox float-e-margins">
                            <div class="ibox-title">
                                <h5>操作记录</h5>
                            </div>
                            <div class="ibox-content">

                                <div>
                                    <div class="feed-activity-list">

                                        <div class="feed-element">
                                            <a href="#" class="pull-left">
                                                <img alt="image" class="img-circle" src="${ctx}/static/img/a1.jpg">
                                            </a>
                                            <div class="media-body ">
                                                <small class="pull-right text-navy">1m ago</small>
                                                <strong class="text-blue">案场经理 陈小林</strong> 创建项目 <strong>大宁小城</strong>. <br>
                                                <small class="text-muted">Today 4:21 pm - 12.06.2014</small>
                                            </div>
                                        </div>

                                        <div class="feed-element">
                                            <a href="#" class="pull-left">
                                                <img alt="image" class="img-circle" src="${ctx}/static/img/profile.jpg">
                                            </a>
                                            <div class="media-body ">
                                                <small class="pull-right">5m ago</small>
                                                <strong class="text-blue">什么什么经理</strong> 创建楼盘 <strong>大宁小城</strong>. <br>
                                                <small class="text-muted">Today 5:60 pm - 12.06.2014</small>

                                            </div>
                                        </div>


                                        <div class="feed-element">
                                            <a href="#" class="pull-left">
                                                <img alt="image" class="img-circle" src="${ctx}/static/img/a3.jpg">
                                            </a>
                                            <div class="media-body ">
                                                <small class="pull-right">2h ago</small>
                                                <strong class="text-blue">项目经理 程程</strong> 完善楼盘信息 . <br>
                                                <small class="text-muted">2 days ago at 8:30am</small>
                                                <div class="photos">
                                                    <a target="_blank" href="http://24.media.tumblr.com/20a9c501846f50c1271210639987000f/tumblr_n4vje69pJm1st5lhmo1_1280.jpg"> <img alt="image" class="feed-photo" src="${ctx}/static/img/p1.jpg"></a>
                                                    <a target="_blank" href="http://37.media.tumblr.com/9afe602b3e624aff6681b0b51f5a062b/tumblr_n4ef69szs71st5lhmo1_1280.jpg"> <img alt="image" class="feed-photo" src="${ctx}/static/img/p3.jpg"></a>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="feed-element">
                                            <a href="#" class="pull-left">
                                                <img alt="image" class="img-circle" src="${ctx}/static/img/a3.jpg">
                                            </a>
                                            <div class="media-body ">
                                                <small class="pull-right">2h ago</small>
                                                <strong class="text-blue">楼盘总监 明明</strong> 上传楼盘证书 . <br>
                                                <small class="text-muted">2 days ago at 8:30am</small>
                                                <div class="photos">
                                                    <a target="_blank" href="http://24.media.tumblr.com/20a9c501846f50c1271210639987000f/tumblr_n4vje69pJm1st5lhmo1_1280.jpg"> <img alt="image" class="feed-photo" src="${ctx}/static/img/p1.jpg"></a>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="feed-element">
                                            <a href="#" class="pull-left">
                                                <img alt="image" class="img-circle" src="${ctx}/static/img/a4.jpg">
                                            </a>
                                            <div class="media-body ">
                                                <small class="pull-right text-navy">5h ago</small>
                                                <strong  class="text-blue">超级管理员</strong> 审核楼盘 <strong>大宁小城</strong>. <br>
                                                <small class="text-muted">Yesterday 1:21 pm - 11.06.2014</small>
                                                <div class="well">
                                                    小伙子做的不错，图片处理的很漂亮，这周加薪！
                                                </div>
                                            </div>
                                        </div>

                                        <div class="feed-element">
                                            <a href="#" class="pull-left">
                                                <img alt="image" class="img-circle" src="${ctx}/static/img/a1.jpg">
                                            </a>
                                            <div class="media-body ">
                                                <small class="pull-right text-navy">1m ago</small>
                                                <strong class="text-blue">案场经理 陈小林</strong> 创建项目 <strong>大宁小城</strong>. <br>
                                                <small class="text-muted">Today 4:21 pm - 12.06.2014</small>
                                            </div>
                                        </div>

                                        <div class="feed-element">
                                            <a href="#" class="pull-left">
                                                <img alt="image" class="img-circle" src="${ctx}/static/img/profile.jpg">
                                            </a>
                                            <div class="media-body ">
                                                <small class="pull-right">5m ago</small>
                                                <strong class="text-blue">什么什么经理</strong> 创建楼盘 <strong>大宁小城</strong>. <br>
                                                <small class="text-muted">Today 5:60 pm - 12.06.2014</small>

                                            </div>
                                        </div>
                                    </div>

                                </div>

                            </div>
                        </div>

                    </div>
                </div>            </div>
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

    <!----添加用户--->
    <div class="modal inmodal fade" id="edit" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header bg-primary">
                    <button aria-hidden="true" data-dismiss="modal" class="close" type="button">×</button>
                    <h4 class="modal-title">查看电商配置</h4>
                </div>
                <div class="modal-body">

                    <form role="form" id="add" name="add" class="form-horizontal">
                        <div class="form-group">
                            <label class="col-sm-4 control-label">电商名称 <span class="text-danger">*</span></label>
                            <div class="col-sm-8">
                                <input type="text" id="tenantName" name="tenantName" disabled placeholder="请输入6-12位中英文符"  required class="form-control">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-4 control-label">推荐客户CD时间 <span class="text-danger">*</span></label>
                            <div class="col-sm-8"><input type="text" name="tuijianCdDay" placeholder="该时间内不可将该客户推荐至其他楼盘" required class="form-control"></div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-4 control-label">发起带看CD时间 <span class="text-danger">*</span></label>
                            <div class="col-sm-8"><input type="tel" placeholder="该时间内不可再次对同一客户意向发起带看" name="daikanCdMin" required class="form-control"></div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-4 control-label">抢客外呼时效 <span class="text-danger">*</span></label>
                            <div class="col-sm-8"><input type="tel" placeholder="置业顾问抢到的客户必须在多少分钟内电话确认" name="grabPhoneMin" required class="form-control"></div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-4 control-label">未接听延长时效 <span class="text-danger">*</span></label>
                            <div class="col-sm-8"><input type="tel" placeholder="小时，置业顾问电话确认时如果客户未接听，保留多少小时" required name="grabExtendHour" class="form-control"></div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-4 control-label">到访CD时间 <span class="text-danger">*</span></label>
                            <div class="col-sm-8"><input type="tel" placeholder="分钟，置业顾问电话确认后至到访确认间隔多少分钟" required name="grabVisitCdMin" class="form-control"></div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-4 control-label">会员经纪人导客方式 <span class="text-danger">*</span></label>
                            <div class="col-sm-8">
                                <div class="checkbox-inline p-l-n">
                                    <input type="checkbox" class="i-checks" name="agentmGuideType" checked>
                                    <label class="font-noraml"> 推荐</label>
                                </div>
                                <div class="checkbox-inline">
                                    <input type="checkbox" class="i-checks" name="agentmGuideType" checked>
                                    <label class="font-noraml "> 带看</label>
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-4 control-label">门店经纪人导客方式 <span class="text-danger">*</span></label>
                            <div class="col-sm-8">
                                <div class="checkbox-inline p-l-n">
                                    <input type="checkbox" class="i-checks" name="agentsGuideType" checked>
                                    <label class="font-noraml"> 推荐</label>
                                </div>
                                <div class="checkbox-inline">
                                    <input type="checkbox" class="i-checks" name="agentsGuideType" checked>
                                    <label class="font-noraml"> 带看</label>
                                </div>
                            </div>
                        </div>
                        <div class="form-group m-t-sm" >
                            <div class="col-sm-6 col-sm-push-4">
                                <button class="btn btn-md btn-primary " type="submit"><strong>创建用户</strong></button>
                                <button type="button" class="btn btn-white m-l-sm" data-dismiss="modal">取消</button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
    <!---添加用户结束--->

    <!-- 全局 scripts -->
    <script src="${ctx}/static/js/jquery-2.1.1.js"></script>
    <script src="${ctx}/static/js/bootstrap.js"></script>
    <script src="${ctx}/static/js/wuling.js"></script>
    <script src="${ctx}/static/js/plugins/pace/pace.min.js"></script>
    <script src="${ctx}/static/js/plugins/slimscroll/jquery.slimscroll.min.js"></script>
    <script src="${ctx}/static/js/plugins/metisMenu/jquery.metisMenu.js"></script>
    <!-- 插件 scripts -->
    <script src="${ctx}/static/js/plugins/toastr/toastr.min.js" async></script><!---顶部弹出提示--->
</body>
</html>
