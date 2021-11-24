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
    <link href="${ctx}/static/css/plugins/iCheck/green.css" rel="stylesheet">
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
                <h2>佣金规则审核</h2>
                <ol class="breadcrumb">
                    <li>
                        <a href="${ctx}/index">管理首页</a>
                    </li>
                    <li>
                        <a class="active" href="javascript:void(0)">佣金规则审核</a>
                    </li>
                </ol>
            </div>
        </div>
        <!-----内容区域---->
        <div class="wrapper wrapper-content animated fadeInRight">
            <div class="ibox-content m-b-sm border-bottom">
                <div class="row">
                    <div class="form-group col-md-2 m-t-xs m-b-none">
                        <input value="" placeholder="项目名称" class="form-control input-sm">
                    </div>
                    <div class="col-sm-4 col-lg-2 col-md-3 m-t-xs">
                        <select class="input-sm form-control input-s-sm inline">
                            <option value="0">-- 收入来源 --</option>
                            <option value="1">上海</option>
                            <option value="2">苏州</option>
                        </select>
                    </div>
                    <div class="form-group col-sm-4 col-lg-3 m-t-xs m-b-none" id="data_5">
                        <div class="input-daterange input-group" id="datepicker">
                            <input type="text" class="input-sm form-control" name="start" value="" placeholder="审核时间起">
                            <span class="input-group-addon">至</span>
                            <input type="text" class="input-sm form-control" name="end" value="" placeholder="审核时间止">
                        </div>
                    </div>
                    <div class="col-sm-2 m-t-xs m-b-none">
                        <button class="btn btn-primary btn-sm">搜索</button>
                    </div>
                </div>
            </div>

            <div class="row">
                <div class="col-lg-12">
                    <div class="ibox">
                        <div class="ibox-heading">
                            <div class="ibox-title p-l-slg">
                                <label class="checkbox-inline p-l-n"><input id="checkAll" type="checkbox" class="i-checks" value=""> 全选 </label>
                                <button type="button" class="btn btn-primary btn-xs m-b-none m-l-md">批量通过</button>
                            </div>
                        </div>
                        <div class="ibox-content">
                            <div class="table-responsive ">
                                <table class="table table-centerbody table-mail table-striped table-condensed text-nowrap"
                                       id="editable-sample">
                                    <thead>
                                    <tr>
                                        <th colspan="2">项目名称</th>
                                        <th>产品类型</th>
                                        <th>收入来源</th>
                                        <th>佣金结算方式</th>
                                        <th>提交时间</th>
                                        <th>审核时间</th>
                                        <th>状态</th>
                                        <th class="text-right">操作</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <tr>
                                        <td style="width: 30px"><input name="subBox" type="checkbox" class="i-checks" value="1"  title="" disabled></td>
                                        <td>测试－空中花园</td>
                                        <td>你的最爱</td>
                                        <td>开发商补助(20000.0元/套 )<br>客户刷团购费(10000元/套) </td>
                                        <td>按固定金额 </td>
                                        <td>2015-11-19</td>
                                        <td>2015-11-19</td>
                                        <td><span class="label label-success">已通过</span> </td>
                                        <td class="text-right"><a href="${ctx}/view/commission/she" class="btn btn-sm btn-white"><i class="fa fa-eye"></i> 查看</a> </td>
                                    </tr>
                                    <tr>
                                        <td style="width: 30px"><input name="subBox" type="checkbox" class="i-checks" value="1"  title=""></td>
                                        <td>测试－空中花园</td>
                                        <td>你的最爱</td>
                                        <td>开发商补助(20000.0元/套 )</td>
                                        <td>按固定金额 </td>
                                        <td>2015-11-19</td>
                                        <td>2015-11-19</td>
                                        <td><span class="label label-danger">已拒绝</span> <i class="fa fa-exclamation-circle text-warning fa-lg" data-toggle="popover" data-content="如果该产品存在已上线的佣金规则则需将目前线上的下线再手动上线!" data-placement="top"  data-trigger="hover" data-original-title="" title="拒绝原因"></i></td>
                                        <td class="text-right"><a href="${ctx}/view/commission/she" class="btn btn-sm btn-primary"><i class="fa fa-check-circle"></i> 重新审核</a> </td>
                                    </tr>
                                    <tr>
                                        <td style="width: 30px"><input name="subBox" type="checkbox" class="i-checks" value="1"  title=""></td>
                                        <td>测试－空中花园</td>
                                        <td>你的最爱</td>
                                        <td>客户刷团购费(10000元/套) </td>
                                        <td>按固定金额 </td>
                                        <td>2015-11-19</td>
                                        <td>2015-11-19</td>
                                        <td><span class="label label-white">待审核</span></td>
                                        <td class="text-right"><a href="${ctx}/view/commission/she" class="btn btn-sm btn-primary"><i class="fa fa-check-circle"></i> 审核</a> </td>
                                    </tr>
                                    </tbody>
                                </table>
                            </div>
                            <div class="pages border-top">
                                <div class="row">
                                    <div class="col-md-4"><div class="m-t-md">当前显示 1 到 20 条，共 57 条</div></div>
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
<script src="${ctx}/static/js/wuling.js"></script>
<script src="${ctx}/static/js/plugins/pace/pace.min.js"></script>
<script src="${ctx}/static/js/plugins/slimscroll/jquery.slimscroll.min.js"></script>
<script src="${ctx}/static/js/plugins/metisMenu/jquery.metisMenu.js"></script>
<!-- 插件 scripts -->
<script src="${ctx}/static/js/plugins/toastr/toastr.min.js" async></script>
<!---顶部弹出提示--->
<script src="${ctx}/static/js/plugins/datapicker/bootstrap-datepicker.js"></script>
<script src="${ctx}/static/js/plugins/iCheck/icheck.min.js"></script>
<script>
    $(document).ready(function () {
        $('#data_5 .input-daterange').datepicker({
            keyboardNavigation: false,
            forceParse: false,
            autoclose: true
        });


        $('.i-checks').iCheck({  //
            checkboxClass: 'icheckbox_minimal-green',
            radioClass: 'iradio_minimal-green'
        });
        $("#checkAll").on("ifClicked", function () {
            $(".i-checks:not(:disabled)").iCheck('check');
        }).on("ifUnchecked", function () {
            $(".i-checks").iCheck('uncheck');
        });

    })

</script>
</body>
</html>
