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
    <link href="${ctx}/static/css/animate.css" rel="stylesheet">
    <link href="${ctx}/static/css/style.css" rel="stylesheet">
</head>

<body class="fixed-sidebar">
<div id="wrapper">
    <!----左侧导航开始----->
    <nav class="navbar-default navbar-static-side" role="navigation" id="leftnav">
    </nav>
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
                <h2>额外佣金审核</h2>
                <ol class="breadcrumb">
                    <li>
                        <a href="${ctx}/index">管理首页</a>
                    </li>
                    <li>
                        <a class="active" href="javascript:void(0)">额外佣金审核</a>
                    </li>
                </ol>
            </div>
        </div>
        <!-----内容区域---->
        <div class="wrapper wrapper-content animated fadeInRight">
            <div class="ibox-content m-b-sm border-bottom">
                <div class="row">
                    <div class="form-group col-md-2 m-t-xs m-b-none">
                        <input value="" placeholder="楼盘名称" class="form-control input-sm">
                    </div>
                    <div class="form-group col-md-2 m-t-xs m-b-none">
                        <input value="" placeholder="经纪人手机号" class="form-control input-sm">
                    </div>
                    <div class="form-group col-md-2 m-t-xs m-b-none">
                        <input value="" placeholder="经纪公司名称" class="form-control input-sm">
                    </div>
                    <div class="col-sm-4 col-lg-2 col-md-3 m-t-xs">
                        <select name="search_status" class="input-sm form-control input-s-sm inline">
                            <option value="">--状态--</option>
                            <option value="1">项目经理审核中</option>
                            <option value="2">项目经理审核拒绝</option>
                            <option value="3">佣金专员审核中</option>
                            <option value="4">佣金专员审核拒绝</option>
                            <option value="5">已兑换成元宝</option>
                            <option value="6">财务专员审核中</option>
                            <option value="7">财务专员审核拒绝</option>
                            <option value="8">出纳审核中</option>
                            <option value="9">出纳审核拒绝</option>
                            <option value="10">已结佣</option>
                            <option value="11">取消</option>
                        </select>
                    </div>
                    <div class="col-sm-2 m-t-xs m-b-none">
                        <button class="btn btn-primary btn-sm"><i class="fa fa-search"></i> 搜索</button>
                    </div>
                </div>
            </div>

            <div class="row">
                <div class="col-lg-12">
                    <div class="ibox">
                        <div class="ibox-content">
                            <div class="table-responsive ">
                                <table class="table table-centerbody table-mail table-striped table-condensed text-nowrap" id="editable-sample">
                                    <thead>
                                    <tr>
                                        <th>合同编号</th>
                                        <th>房源信息</th>
                                        <th>拥有者信息</th>
                                        <th>金额</th>
                                        <th>生成时间</th>
                                        <th>状态</th>
                                        <th>审核备注</th>
                                        <th class="text-right text-nowrap">操作</th>
                                    </tr>
                                    </thead>
                                    <tbody>

                                    <tr>
                                        <td>聂茂 13915425536</td>
                                        <td>测试多媒体大厦全称 --幢--单元--室</td>
                                        <td>经:明明(18662184598)  店:多媒体门店<br>司:测试经纪公司</td>
                                        <td class="text-price">10000.00</td>
                                        <td>2015-12-01 14:59:41</td>
                                        <td><span class="label label-success">已退款</span></td>
                                        <td></td>
                                        <td class="text-right">
                                            <div class="btn-group ">
                                                <a class="btn btn-white btn-sm through"><i class="fa fa-check-circle-o"></i>  审核</a>
                                                <a class="btn btn-white btn-sm through"><i class="fa fa-eye"></i>  查看</a>
                                            </div>
                                        </td>
                                    </tr>

                                    <tr>
                                        <td>聂茂 13915425536</td>
                                        <td>测试多媒体大厦全称 --幢--单元--室</td>
                                        <td>经:明明(18662184598)  店:多媒体门店<br>司:测试经纪公司</td>
                                        <td class="text-price">10000.00</td>
                                        <td>2015-12-01 14:59:41</td>
                                        <td><span class="label label-success">已退款</span></td>
                                        <td></td>
                                        <td class="text-right">
                                            <div class="btn-group ">
                                                <a class="btn btn-white btn-sm through"><i class="fa fa-check-circle-o"></i>  审核</a>
                                                <a class="btn btn-white btn-sm through"><i class="fa fa-eye"></i>  查看</a>
                                            </div>
                                        </td>
                                    </tr>


                                    </tbody>
                                </table>

                            </div>
                            <div class="alert alert-warning m-t-sm" role="alert">暂无信息</div>
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
                            <input type="text" id="tenantName" name="tenantName" disabled placeholder="请输入6-12位中英文符"
                                   required class="form-control">
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-4 control-label">推荐客户CD时间 <span class="text-danger">*</span></label>

                        <div class="col-sm-8"><input type="text" name="tuijianCdDay" placeholder="该时间内不可将该客户推荐至其他楼盘"
                                                     required class="form-control"></div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-4 control-label">发起带看CD时间 <span class="text-danger">*</span></label>

                        <div class="col-sm-8"><input type="tel" placeholder="该时间内不可再次对同一客户意向发起带看" name="daikanCdMin"
                                                     required class="form-control"></div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-4 control-label">抢客外呼时效 <span class="text-danger">*</span></label>

                        <div class="col-sm-8"><input type="tel" placeholder="置业顾问抢到的客户必须在多少分钟内电话确认" name="grabPhoneMin"
                                                     required class="form-control"></div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-4 control-label">未接听延长时效 <span class="text-danger">*</span></label>

                        <div class="col-sm-8"><input type="tel" placeholder="小时，置业顾问电话确认时如果客户未接听，保留多少小时" required
                                                     name="grabExtendHour" class="form-control"></div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-4 control-label">到访CD时间 <span class="text-danger">*</span></label>

                        <div class="col-sm-8"><input type="tel" placeholder="分钟，置业顾问电话确认后至到访确认间隔多少分钟" required
                                                     name="grabVisitCdMin" class="form-control"></div>
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
                    <div class="form-group m-t-sm">
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
<script src="${ctx}/static/js/plugins/toastr/toastr.min.js" async></script>
<!---顶部弹出提示--->
<script src="${ctx}/static/js/plugins/datapicker/bootstrap-datepicker.js"></script>
<script>
    $('#data_5 .input-daterange').datepicker({
        keyboardNavigation: false,
        forceParse: false,
        autoclose: true
    });
</script>
</body>
</html>
