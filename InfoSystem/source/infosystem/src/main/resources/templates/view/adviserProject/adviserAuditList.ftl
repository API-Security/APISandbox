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
    <link href="${ctx}/static/css/bootstrap.css" rel="stylesheet">
    <link href="${ctx}/static/font-awesome/css/font-awesome.css" rel="stylesheet">
    <link href="${ctx}/static/css/plugins/toastr/toastr.min.css" rel="stylesheet">
    <link href="${ctx}/static/css/plugins/iCheck/green.css" rel="stylesheet">
    <!--date style-->
    <link href="${ctx}/static/css/plugins/datapicker/datepicker3.css" rel="stylesheet">
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
                <h2>置业顾问挂靠审核</h2>
                <ol class="breadcrumb">
                    <li>
                        <a href="${ctx}/index">管理首页</a>
                    </li>
                    <li class="active">
                        挂靠审核
                    </li>
                </ol>
            </div>
        </div>

        <!-----内容区域---->
        <div class="wrapper wrapper-content animated fadeInRight">
            <!--当前位置开始-->
            <div class="ibox-content m-b-sm border-bottom">
                <div class="row">
                    <div class="form-group col-md-4 col-lg-3 m-t-xs m-b-none">
                        <input value="" placeholder="POS机终端号" class="form-control input-sm">
                    </div>
                    <div class="form-group col-md-5 col-lg-4 m-t-xs m-b-none" id="data_5">
                        <div class="input-daterange input-group" id="datepicker">
                            <input type="text" class="input-sm form-control" name="start" value="09/07/2015">
                            <span class="input-group-addon">至</span>
                            <input type="text" class="input-sm form-control" name="end" value="10/07/2015">
                            <span class="input-group-btn"><button type="button" class="btn btn-sm btn-primary no-margins"> 查询</button> </span>
                        </div>
                    </div>
                </div>
            </div>
            <!--当前位置结束-->



            <div class="row">
                <div class="col-lg-12">
                    <div class="ibox">
                        <div class="ibox-heading">
                            <div class="ibox-title p-l-32">
                                <label class="checkbox-inline p-l-n"><input id="checkAll" type="checkbox" class="i-checks" value=""> 全选 </label>
                                <button type="button" class="btn btn-primary btn-xs m-l">批量通过</button>
                                <button type="button" class="btn btn-primary btn-xs m-l">批量拒绝</button>
                            </div>
                        </div>
                        <div class="ibox-content">
                            <div class="table-responsive">
                                <table class="table table-centerbody table-mail table-striped table-condensed text-nowrap"
                                       id="editable-sample">
                                    <thead>
                                    <tr>
                                        <th>昵称</th>
                                        <th>手机号</th>
                                        <th>申请时间</th>
                                        <th>备注</th>
                                        <th class="text-right text-nowrap">操作</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <tr>
                                        <td><label class="checkbox-inline p-l-n p-r-md"><input name="subBox" type="checkbox" class="i-checks" value="1" ></label>17092776033</td>
                                        <td>17092776033</td>
                                        <td>2015-09-21 10:48:55</td>
                                        <td>测试楼盘</td>
                                        <td class="text-right text-nowrap">
                                            <button class="btn-white  btn btn-sm delete" data-userid="1">  通过</button>
                                            <button class="btn-white  btn btn-sm delete" data-userid="1" data-toggle="modal" data-target="#modal-form">  拒绝</button>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td><label class="checkbox-inline p-l-n p-r-md"><input name="subBox" type="checkbox" class="i-checks" value="2" ></label>17092776033</td>
                                        <td>17092776033</td>
                                        <td>2015-09-21 10:48:55</td>
                                        <td>测试楼盘</td>
                                        <td class="text-right text-nowrap">
                                            <button class="btn-white  btn btn-sm delete" data-userid="1">  通过</button>
                                            <button class="btn-white  btn btn-sm delete" data-userid="1" data-toggle="modal" data-target="#modal-form">  拒绝</button>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td><label class="checkbox-inline p-l-n p-r-md"><input name="subBox" type="checkbox" class="i-checks" value="3" ></label>17092776033</td>
                                        <td>17092776033</td>
                                        <td>2015-09-21 10:48:55</td>
                                        <td>测试楼盘</td>
                                        <td class="text-right text-nowrap">
                                            <button class="btn-white  btn btn-sm delete" data-userid="1">  通过</button>
                                            <button class="btn-white  btn btn-sm delete" data-userid="1" data-toggle="modal" data-target="#modal-form">  拒绝</button>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td><label class="checkbox-inline p-l-n p-r-md"><input name="subBox" type="checkbox" class="i-checks" value="4" ></label>17092776033</td>
                                        <td>17092776033</td>
                                        <td>2015-09-21 10:48:55</td>
                                        <td>测试楼盘</td>
                                        <td class="text-right text-nowrap">
                                            <button class="btn-white  btn btn-sm delete" data-userid="1">  通过</button>
                                            <button class="btn-white  btn btn-sm delete" data-userid="1" data-toggle="modal" data-target="#modal-form">  拒绝</button>
                                        </td>
                                    </tr>
                                    </tbody>
                                </table>
                            </div>
                            <div class="pages border-top">
                                <div class="row">
                                    <div class="col-md-4"><div class="m-t-md">当前显示 1 到 10 条，共 57 条</div></div>
                                    <div class="col-md-8 footable-visible">
                                        <ul class="pagination pull-right">
                                            <li class="footable-page-arrow disabled"><a data-page="first" href="#first">«</a></li>
                                            <li class="footable-page-arrow disabled"><a data-page="prev" href="#prev">...</a></li>
                                            <li class="footable-page active"><a data-page="0" href="#">2</a></li>
                                            <li class="footable-page"><a data-page="1" href="#">3</a></li>
                                            <li class="footable-page"><a data-page="1" href="#">4</a></li>
                                            <li class="footable-page"><a data-page="1" href="#">5</a></li>
                                            <li class="footable-page"><a data-page="1" href="#">6</a></li>
                                            <li class="footable-page-arrow"><a data-page="next" href="#next">...</a></li>
                                            <li class="footable-page-arrow"><a data-page="last" href="#last">»</a></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>
            </div>

        </div>
        <!-----内容结束----->

        <!----版权信息开始----->
        <div class="footer">
            <div class="pull-right">
                10GB of <strong>250GB</strong> Free.
            </div>
            <div>
                <strong>Copyright</strong> Wuling Company &copy; 2014-2015
            </div>
        </div>
        <!----版权信息结束----->
    </div>
    <!---右侧内容区结束----->
</div>


<!----拒绝理由开始--->
<div class="modal fade" id="modal-form" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header bg-primary">
                <button aria-hidden="true" data-dismiss="modal" class="close" type="button">×</button>
                <h4 class="modal-title">请输入拒绝理由</h4>
            </div>
            <div class="modal-body">

                <form role="form" id="add" name="add" class="form-horizontal">
                    <div class="form-group">
                        <label class="col-sm-3 control-label">拒绝理由</label>
                        <div class="col-sm-8">
                            <textarea maxlength="255" rows="2" placeholder="请输入拒绝理由" class="form-control"></textarea>
                        </div>
                    </div>

                    <div class="form-group m-t-sm" >
                        <div class="col-sm-6 col-sm-push-3">
                            <button class="btn btn-md btn-primary " type="submit"><strong>确认</strong></button>
                            <button type="button" class="btn btn-white m-l-sm" data-dismiss="modal">取消</button>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>
<!---拒绝理由结束--->

<!-- Mainly scripts -->
<script src="${ctx}/static/js/jquery-2.1.1.js"></script>
<script src="${ctx}/static/js/bootstrap.min.js"></script>
<script src="${ctx}/static/js/plugins/metisMenu/jquery.metisMenu.js"></script>
<script src="${ctx}/static/js/wuling.js"></script>
<script src="${ctx}/static/js/plugins/pace/pace.min.js"></script>

<!-- Custom and plugin javascript -->
<script src="${ctx}/static/js/plugins/slimscroll/jquery.slimscroll.min.js"></script>

<!-- 插件 scripts -->
<script src="${ctx}/static/js/plugins/toastr/toastr.min.js" async></script><!---顶部弹出提示--->
<script src="${ctx}/static/js/plugins/iCheck/icheck.min.js"></script>
<script src="${ctx}/static/js/plugins/validate/jquery.validate.min.js"></script>  <!---表单验证--->
<script src="${ctx}/static/js/plugins/validate/validate-cn.js"></script> <!---validate 自定义方法--->
<script src="${ctx}/static/js/plugins/datapicker/bootstrap-datepicker.js"></script>

<script>
    $('.i-checks').iCheck({  //
        checkboxClass: 'icheckbox_minimal-green',
        radioClass: 'iradio_minimal-green'
    });

    $("#checkAll").on("ifClicked", function () {
        $(".i-checks:not(:disabled)").iCheck('check');
    }).on("ifUnchecked", function () {
        $(".i-checks").iCheck('uncheck');
    });

    $('#data_5 .input-daterange').datepicker({
        keyboardNavigation: false,
        forceParse: false,
        autoclose: true
    });
</script>

</body>
</html>