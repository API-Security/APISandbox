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
    <link href="${ctx}/static/css/plugins/chosen/chosen.css" rel="stylesheet">
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
                <h2>佣金列表</h2>
                <ol class="breadcrumb">
                    <li>
                        <a href="${ctx}/index">管理首页</a>
                    </li>
                    <li class="active">
                        佣金列表
                    </li>
                </ol>
            </div>
        </div>

        <!-----内容区域---->
        <div class="wrapper wrapper-content animated fadeInRight">
            <!--当前位置开始-->
            <div class="ibox-content ibox-content-t m-b-sm border-bottom">
                <div class="row">
                    <div class="form-group col-md-2 m-t-xs ">
                        <input value="" placeholder="经纪人姓名、手机" class="form-control input-sm">
                    </div>
                    <div class="col-md-2 m-t-xs">
                        <select class="input-sm form-control input-s-sm inline">
                            <option value="0">-- 所属门店 --</option>
                            <option value="1">报备</option>
                            <option value="2">抢客</option>
                        </select>
                    </div>
                    <div class="col-md-2 m-t-xs">
                        <select class="input-sm form-control input-s-sm inline">
                            <option value="0">-- 结拥状态 --</option>
                            <option value="1">陈小林</option>
                            <option value="2">张小王</option>
                        </select>
                    </div>
                    <div class="form-group col-md-4 m-t-xs" id="data_5">
                        <div class="input-daterange input-group" id="datepicker">
                            <input type="text" class="input-sm form-control" name="start" value="09/07/2015">
                            <span class="input-group-addon">至</span>
                            <input type="text" class="input-sm form-control" name="end" value="10/07/2015">
                            <span class="input-group-btn"><button type="button" class="btn btn-sm btn-primary no-margins"><i class="fa fa-search"></i> 查询</button> </span>
                        </div>
                    </div>
                </div>
            </div>
            <!--当前位置结束-->



            <div class="row">
                <div class="col-lg-12">
                    <div class="ibox">
                        <div class="ibox-content">
                            <div class="table-responsive">
                                <table class="table table-centerbody table-mail table-striped table-condensed text-nowrap"
                                       id="editable-sample">
                                    <thead>
                                    <tr>
                                        <th>经纪人姓名</th>
                                        <th>手机号</th>
                                        <th>所属门店</th>
                                        <th>项目名称</th>
                                        <th>物业类型</th>
                                        <th>房号信息</th>
                                        <th>佣金金额</th>
                                        <th>结佣状态</th>
                                        <th class="text-right text-nowrap">认购时间</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td>小正太</td>
                                            <td>13668951765</td>
                                            <td>多媒体门店</td>
                                            <td>测试多媒体大厦全称</td>
                                            <td>住宅</td>
                                            <td>99 号楼 999 单元 999 室 </td>
                                            <td class="text-price">9999.00</td>
                                            <td><span class="label label-success">已结佣</span></td>
                                            <td class="text-right text-nowrap">2015-09-21 10:48:55</td>
                                        </tr>
                                        <tr>
                                            <td>小正太</td>
                                            <td>13668951765</td>
                                            <td>多媒体门店</td>
                                            <td>测试多媒体大厦全称</td>
                                            <td>住宅</td>
                                            <td>99 号楼 999 单元 999 室 </td>
                                            <td class="text-price">9999.00</td>
                                            <td><span class="label label-white">待结拥</span></td>
                                            <td class="text-right text-nowrap">2015-09-21 10:48:55</td>
                                        </tr>
                                        <tr>
                                            <td>小正太</td>
                                            <td>13668951765</td>
                                            <td>多媒体门店</td>
                                            <td>测试多媒体大厦全称</td>
                                            <td>住宅</td>
                                            <td>99 号楼 999 单元 999 室 </td>
                                            <td class="text-price">9999.00</td>
                                            <td><span class="label label-danger">已退款</span></td>
                                            <td class="text-right text-nowrap">2015-09-21 10:48:55</td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                            <div class="pages border-top">
                                <div class="row">
                                    <div class="col-md-4"><div class="m-t-md">当前显示 1 到 10 条，共 57 条</div></div>
                                    <div class="col-md-8 footable-visible">
                                        <ul class="pagination pull-right">                                             <li class="footable-page-arrow disabled"><a data-page="first" href="#first">«</a></li>                                             <li class="footable-page-arrow disabled"><a data-page="prev" href="#prev">...</a></li>                                             <li class="footable-page active"><a data-page="0" href="#">2</a></li>                                             <li class="footable-page"><a data-page="1" href="#">3</a></li>                                             <li class="footable-page"><a data-page="1" href="#">4</a></li>                                             <li class="footable-page"><a data-page="1" href="#">5</a></li>                                             <li class="footable-page"><a data-page="1" href="#">6</a></li>                                             <li class="footable-page-arrow"><a data-page="next" href="#next">...</a></li>                                             <li class="footable-page-arrow"><a data-page="last" href="#last">»</a></li>                                         </ul>
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
<script src="${ctx}/static/js/plugins/datapicker/bootstrap-datepicker.js"></script>
<script src="${ctx}/static/js/plugins/echarts/echarts.js"></script>

<!-- 插件 scripts -->
<script src="${ctx}/static/js/plugins/chosen/chosen.jquery.js"></script><!---下拉菜单--->
<script src="${ctx}/static/js/plugins/toastr/toastr.min.js" async></script><!---顶部弹出提示--->
<script src="${ctx}/static/js/plugins/iCheck/icheck.min.js"></script>
<script src="${ctx}/static/js/plugins/validate/jquery.validate.min.js"></script>  <!---表单验证--->
<script src="${ctx}/static/js/plugins/validate/validate-cn.js"></script> <!---validate 自定义方法--->
<script src="${ctx}/static/js/plugins/tagsinput/jquery.tagsinput.js"></script>
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