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
    <link href="${ctx }/static/css/bootstrap.min.css" rel="stylesheet">
    <link href="${ctx }/static/font-awesome/css/font-awesome.css" rel="stylesheet">
    <link href="${ctx }/static/css/plugins/toastr/toastr.min.css" rel="stylesheet">
    <link href="${ctx }/static/css/plugins/datapicker/datepicker3.css" rel="stylesheet">
    <link href="${ctx }/static/css/animate.css" rel="stylesheet">
    <link href="${ctx }/static/css/style.css" rel="stylesheet">
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
                <h2>客户审核</h2>
                <ol class="breadcrumb">
                    <li>
                        <a href="${ctx }/index">管理首页</a>
                    </li>
                    <li>
                        <a class="active" href="list.html">客户审核列表</a>
                    </li>
                </ol>
            </div>
        </div>
        <!-----内容区域---->
        <div class="wrapper wrapper-content animated fadeInRight">
            <div class="ibox-content m-b-sm border-bottom">
                <div class="row">
                    <div class="form-group col-md-2 m-t-xs m-b-none">
                        <input value="" placeholder="输入手机号" class="form-control input-sm">
                    </div>
                    <div class="col-sm-4 col-lg-2 col-md-3 m-t-xs">
                        <select class="input-sm form-control input-s-sm inline">
                            <option value="0">--客户状态--</option>
                            <option value="1">未审核</option>
                            <option value="2">通过</option>
                            <option value="2">拒绝</option>
                        </select>
                    </div>
                    <div class="form-group col-sm-4 col-lg-3 m-t-xs m-b-none" id="data_5">
                        <div class="input-daterange input-group" id="datepicker">
                            <input type="text" class="input-sm form-control" name="start" value="09/07/2015">
                            <span class="input-group-addon">至</span>
                            <input type="text" class="input-sm form-control" name="end" value="10/07/2015">
                        </div>
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
                                <table class="table table-centerbody table-mail table-striped table-condensed text-nowrap"
                                       id="editable-sample">
                                    <thead>
                                    <tr>
                                        <th>报备时间</th>
                                        <th>客户电话</th>
                                        <th>当前状态</th>
                                        <th>审核状态</th>
                                        <th class="text-right text-nowrap">操作日志</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <tr>
                                        <td>2015-10-14</td>
                                        <td>135****1874</td>
                                        <td>推荐</td>
                                        <td>拒绝</td>
                                        <td class="text-right text-nowrap">2015-10-14 05:01:45   <strong class="text-danger">报备审核拒绝</strong></td>
                                    </tr>
                                    <tr>
                                        <td>2015-10-14</td>
                                        <td>135****1874</td>
                                        <td>推荐</td>
                                        <td>拒绝</td>
                                        <td class="text-right text-nowrap">2015-10-14 05:01:45   <strong class="text-danger">报备审核拒绝</strong></td>
                                    </tr>
                                    <tr>
                                        <td>2015-10-14</td>
                                        <td>135****1874</td>
                                        <td>推荐</td>
                                        <td>拒绝</td>
                                        <td class="text-right text-nowrap">2015-10-14 05:01:45   <strong class="text-success">报备审核通过
                                        </strong></td>
                                    </tr>
                                    <tr>
                                        <td>2015-10-14</td>
                                        <td>135****1874</td>
                                        <td>推荐</td>
                                        <td>拒绝</td>
                                        <td class="text-right text-nowrap">2015-10-14 05:01:45   <strong class="text-danger">报备审核拒绝</strong></td>
                                    </tr>
                                    <tr>
                                        <td>2015-10-14</td>
                                        <td>135****1874</td>
                                        <td>推荐</td>
                                        <td>拒绝</td>
                                        <td class="text-right text-nowrap">2015-10-14 05:01:45   <strong class="text-success">报备审核通过
                                        </strong></td>
                                    </tr>
                                    <tr>
                                        <td>2015-10-14</td>
                                        <td>135****1874</td>
                                        <td>推荐</td>
                                        <td>拒绝</td>
                                        <td class="text-right text-nowrap">2015-10-14 05:01:45   <strong class="text-danger">报备审核拒绝</strong></td>
                                    </tr>
                                    <tr>
                                        <td>2015-10-14</td>
                                        <td>135****1874</td>
                                        <td>推荐</td>
                                        <td>拒绝</td>
                                        <td class="text-right text-nowrap">2015-10-14 05:01:45   <strong class="text-success">报备审核通过
                                        </strong></td>
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
<script src="${ctx }/static/js/jquery-2.1.1.js"></script>
<script src="${ctx }/static/js/bootstrap.js"></script>
<script src="${ctx }/static/js/wuling.js"></script>
<script src="${ctx }/static/js/plugins/pace/pace.min.js"></script>
<script src="${ctx }/static/js/plugins/slimscroll/jquery.slimscroll.min.js"></script>
<script src="${ctx }/static/js/plugins/metisMenu/jquery.metisMenu.js"></script>
<!-- 插件 scripts -->
<script src="${ctx }/static/js/plugins/toastr/toastr.min.js" async></script>
<!---顶部弹出提示--->
<script src="${ctx }/static/js/plugins/datapicker/bootstrap-datepicker.js"></script>
<script>
    $('#data_5 .input-daterange').datepicker({
        keyboardNavigation: false,
        forceParse: false,
        autoclose: true
    });
</script>
</body>
</html>
