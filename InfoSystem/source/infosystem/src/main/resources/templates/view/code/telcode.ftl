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
    <link href="${ctx}/static/css/plugins/sweetalert/sweetalert.css" rel="stylesheet">
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
                <h2>发送语音验证码</h2>
                <ol class="breadcrumb">
                    <li>
                        <a href="${ctx}/index">管理首页</a>
                    </li>
                    <li>
                        <a class="active" href="javascript:void(0)">发送语音验证码</a>
                    </li>
                </ol>
            </div>
        </div>
        <!-----内容区域---->
        <div class="wrapper wrapper-content animated fadeInRight">
            <div class="row">
                <div class="col-lg-12">
                    <div class="ibox-content ibox-content-t">
                        <form class="form-horizontal">
                            <div class="form-group">
                                <div class="col-md-6">
                                    <div class="input-group" aria-expanded="false">
                                        <input type="text" value="" placeholder="手机号前三位" class="form-control" aria-expanded="false">
                                        <span class="input-group-addon" style="background:#eee" aria-expanded="false">******</span>
                                        <input type="text" value="" placeholder="手机号后四位" class="form-control" aria-expanded="false">
                                        <span class="input-group-btn" aria-expanded="false"><button class="btn btn-primary" id="search_yuyue" aria-expanded="false"><i class="fa fa-search" aria-expanded="false"></i> 查询预约</button></span>
                                    </div>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-12">
                    <div class="ibox">
                        <div class="ibox-content">
                            <div class="table-responsive ">
                                <table class="table table-centerbody table-striped table-condensed text-nowrap" id="editable-sample">
                                    <thead>
                                        <tr>
                                            <th>项目</th>
                                            <th>项目</th>
                                            <th class="text-right">项目</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td>上海</td>
                                            <td>上海屋瓴(00966)</td>
                                            <td class="text-right text-nowrap">
                                                <div class="btn-group ">
                                                    <button class="btn btn-white btn-sm edit" data-id="1" data-toggle="modal" data-target="#edit"><i class="fa fa-pencil"></i>  发送</button>
                                                </div>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>南京</td>
                                            <td>上海屋瓴(00966)</td>
                                            <td class="text-right text-nowrap">
                                                <div class="btn-group ">
                                                    <button class="btn btn-white btn-sm edit" data-id="1" data-toggle="modal" data-target="#edit"><i class="fa fa-pencil"></i>  发送</button>
                                                </div>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>深圳</td>
                                            <td>上海屋瓴(00966)</td>
                                            <td class="text-right text-nowrap">
                                                <div class="btn-group ">
                                                    <button class="btn btn-white btn-sm edit" data-id="1" data-toggle="modal" data-target="#edit"><i class="fa fa-pencil"></i>  发送</button>
                                                </div>
                                            </td>
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
<script src="${ctx}/static/js/jquery-2.1.1.js"></script>
<script src="${ctx}/static/js/bootstrap.js"></script>
<script src="${ctx}/static/js/wuling.js"></script>
<script src="${ctx}/static/js/plugins/pace/pace.min.js"></script>
<script src="${ctx}/static/js/plugins/slimscroll/jquery.slimscroll.min.js"></script>
<script src="${ctx}/static/js/plugins/metisMenu/jquery.metisMenu.js"></script>
<!-- 插件 scripts -->
<script src="${ctx}/static/js/plugins/toastr/toastr.min.js" async></script>
<script src="${ctx}/static/js/plugins/sweetalert/sweetalert.min.js" async></script><!---对话框 alert--->
<!---顶部弹出提示--->

<script>
    $(document).on('click','#editable-sample a.delete', function () {
        var userid=$(this).data("userid");
        swal({
            title: "您确定要删除吗?",
            text: "",
            type: "warning",
            showCancelButton: true,
            confirmButtonColor: "#1ab394",
            confirmButtonText: "确定删除！",
            closeOnConfirm: false
        }, function () {
            //请求成功返回
            //swal("删除成功!", "","success");

            //失败
            swal("删除失败!", "","error");
        });
    });
</script>
</body>
</html>
