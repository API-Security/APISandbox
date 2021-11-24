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
                    <h2>电商配置</h2>
                    <ol class="breadcrumb">
                        <li>
                            <a href="${ctx}/static/index.html">管理首页</a>
                        </li>
                        <li>
                            <a href="list.html">电商配置</a>
                        </li>
                        <li class="active">
                            电商列表
                        </li>

                    </ol>
                </div>
            </div>

            <!-----内容区域---->
            <div class="wrapper wrapper-content animated fadeInRight">
                <div class="ibox-content m-b-sm border-bottom">
                    <div class="row">
                            <div class="col-md-5">
                                <div class="input-group" >
                                    <input type="text" class="input-sm form-control" name="end" value="" placeholder="输入账号搜索">
                                    <span class="input-group-btn"><button type="button" class="btn btn-sm btn-primary "> 查询</button></span>
                                </div>
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
                                                <th>电商名称</th>
                                                <th>推荐客户CD时间(天) </th>
                                                <th>发起带看CD时间(分钟)</th>
                                                <th>抢客外呼时效(分钟) </th>
                                                <th>未接听延长时效(小时) </th>
                                                <th>到访CD时间(分钟)</th>
                                                <th>经纪人导客方式 </th>
                                                <th class="text-right">操作</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td>上海屋瓴</td>
                                                <td>3</td>
                                                <td>3</td>
                                                <td>5</td>
                                                <td>24</td>
                                                <td>3</td>
                                                <td><span class="text-warning" >门店：</span>推荐,带看 <span class="text-warning m-l-lg">会员：</span>推荐,带看    </td>
                                                <td class="text-right text-nowrap">
                                                    <div class="btn-group ">
                                                        <button class="btn btn-white btn-sm edit" data-id="1" data-toggle="modal" data-target="#edit"><i class="fa fa-pencil"></i>  编辑</button>
                                                    </div>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>上海屋瓴</td>
                                                <td>3</td>
                                                <td>3</td>
                                                <td>5</td>
                                                <td>24</td>
                                                <td>3</td>
                                                <td><span class="text-warning" >门店：</span>推荐,带看 <span class="text-warning m-l-lg">会员：</span>推荐,带看    </td>
                                                <td class="text-right text-nowrap">
                                                    <div class="btn-group ">
                                                        <button class="btn btn-white btn-sm edit" data-id="1" data-toggle="modal" data-target="#edit"><i class="fa fa-pencil"></i>  编辑</button>
                                                    </div>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>上海屋瓴</td>
                                                <td>3</td>
                                                <td>3</td>
                                                <td>5</td>
                                                <td>24</td>
                                                <td>3</td>
                                                <td><span class="text-warning" >门店：</span>推荐,带看 <span class="text-warning m-l-lg">会员：</span>推荐,带看    </td>
                                                <td class="text-right text-nowrap">
                                                    <div class="btn-group ">
                                                        <button class="btn btn-white btn-sm edit" data-id="1" data-toggle="modal" data-target="#edit"><i class="fa fa-pencil"></i>  编辑</button>
                                                    </div>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>上海屋瓴</td>
                                                <td>3</td>
                                                <td>3</td>
                                                <td>5</td>
                                                <td>24</td>
                                                <td>3</td>
                                                <td><span class="text-warning" >门店：</span>推荐,带看 <span class="text-warning m-l-lg">会员：</span>推荐,带看    </td>
                                                <td class="text-right text-nowrap">
                                                    <div class="btn-group ">
                                                        <button class="btn btn-white btn-sm edit" data-id="1" data-toggle="modal" data-target="#edit"><i class="fa fa-pencil"></i>  编辑</button>
                                                    </div>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>上海屋瓴</td>
                                                <td>3</td>
                                                <td>3</td>
                                                <td>5</td>
                                                <td>24</td>
                                                <td>3</td>
                                                <td><span class="text-warning" >门店：</span>推荐,带看 <span class="text-warning m-l-lg">会员：</span>推荐,带看    </td>
                                                <td class="text-right text-nowrap">
                                                    <div class="btn-group ">
                                                        <button class="btn btn-white btn-sm edit" data-id="1" data-toggle="modal" data-target="#edit"><i class="fa fa-pencil"></i>  编辑</button>
                                                    </div>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>上海屋瓴</td>
                                                <td>3</td>
                                                <td>3</td>
                                                <td>5</td>
                                                <td>24</td>
                                                <td>3</td>
                                                <td><span class="text-warning" >门店：</span>推荐,带看 <span class="text-warning m-l-lg">会员：</span>推荐,带看    </td>
                                                <td class="text-right text-nowrap">
                                                    <div class="btn-group ">
                                                        <button class="btn btn-white btn-sm edit" data-id="1" data-toggle="modal" data-target="#edit"><i class="fa fa-pencil"></i>  编辑</button>
                                                    </div>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>上海屋瓴</td>
                                                <td>3</td>
                                                <td>3</td>
                                                <td>5</td>
                                                <td>24</td>
                                                <td>3</td>
                                                <td><span class="text-warning" >门店：</span>推荐,带看 <span class="text-warning m-l-lg">会员：</span>推荐,带看    </td>
                                                <td class="text-right text-nowrap">
                                                    <div class="btn-group ">
                                                        <button class="btn btn-white btn-sm edit" data-id="1" data-toggle="modal" data-target="#edit"><i class="fa fa-pencil"></i>  编辑</button>
                                                    </div>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>上海屋瓴</td>
                                                <td>3</td>
                                                <td>3</td>
                                                <td>5</td>
                                                <td>24</td>
                                                <td>3</td>
                                                <td><span class="text-warning" >门店：</span>推荐,带看 <span class="text-warning m-l-lg">会员：</span>推荐,带看    </td>
                                                <td class="text-right text-nowrap">
                                                    <div class="btn-group ">
                                                        <button class="btn btn-white btn-sm edit" data-id="1" data-toggle="modal" data-target="#edit"><i class="fa fa-pencil"></i>  编辑</button>
                                                    </div>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>上海屋瓴</td>
                                                <td>3</td>
                                                <td>3</td>
                                                <td>5</td>
                                                <td>24</td>
                                                <td>3</td>
                                                <td><span class="text-warning" >门店：</span>推荐,带看 <span class="text-warning m-l-lg">会员：</span>推荐,带看    </td>
                                                <td class="text-right text-nowrap">
                                                    <div class="btn-group ">
                                                        <button class="btn btn-white btn-sm edit" data-id="1" data-toggle="modal" data-target="#edit"><i class="fa fa-pencil"></i>  编辑</button>
                                                    </div>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>上海屋瓴</td>
                                                <td>3</td>
                                                <td>3</td>
                                                <td>5</td>
                                                <td>24</td>
                                                <td>3</td>
                                                <td><span class="text-warning" >门店：</span>推荐,带看 <span class="text-warning m-l-lg">会员：</span>推荐,带看    </td>
                                                <td class="text-right text-nowrap">
                                                    <div class="btn-group ">
                                                        <button class="btn btn-white btn-sm edit" data-id="1" data-toggle="modal" data-target="#edit"><i class="fa fa-pencil"></i>  编辑</button>
                                                    </div>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>上海屋瓴</td>
                                                <td>3</td>
                                                <td>3</td>
                                                <td>5</td>
                                                <td>24</td>
                                                <td>3</td>
                                                <td><span class="text-warning" >门店：</span>推荐,带看 <span class="text-warning m-l-lg">会员：</span>推荐,带看    </td>
                                                <td class="text-right text-nowrap">
                                                    <div class="btn-group ">
                                                        <button class="btn btn-white btn-sm edit" data-id="1" data-toggle="modal" data-target="#edit"><i class="fa fa-pencil"></i>  编辑</button>
                                                    </div>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>上海屋瓴</td>
                                                <td>3</td>
                                                <td>3</td>
                                                <td>5</td>
                                                <td>24</td>
                                                <td>3</td>
                                                <td><span class="text-warning" >门店：</span>推荐,带看 <span class="text-warning m-l-lg">会员：</span>推荐,带看    </td>
                                                <td class="text-right text-nowrap">
                                                    <div class="btn-group ">
                                                        <button class="btn btn-white btn-sm edit" data-id="1" data-toggle="modal" data-target="#edit"><i class="fa fa-pencil"></i>  编辑</button>
                                                    </div>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>上海屋瓴</td>
                                                <td>3</td>
                                                <td>3</td>
                                                <td>5</td>
                                                <td>24</td>
                                                <td>3</td>
                                                <td><span class="text-warning" >门店：</span>推荐,带看 <span class="text-warning m-l-lg">会员：</span>推荐,带看    </td>
                                                <td class="text-right text-nowrap">
                                                    <div class="btn-group ">
                                                        <button class="btn btn-white btn-sm edit" data-id="1" data-toggle="modal" data-target="#edit"><i class="fa fa-pencil"></i>  编辑</button>
                                                    </div>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>上海屋瓴</td>
                                                <td>3</td>
                                                <td>3</td>
                                                <td>5</td>
                                                <td>24</td>
                                                <td>3</td>
                                                <td><span class="text-warning" >门店：</span>推荐,带看 <span class="text-warning m-l-lg">会员：</span>推荐,带看    </td>
                                                <td class="text-right text-nowrap">
                                                    <div class="btn-group ">
                                                        <button class="btn btn-white btn-sm edit" data-id="1" data-toggle="modal" data-target="#edit"><i class="fa fa-pencil"></i>  编辑</button>
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
                                            <ul class="pagination pull-right">
                                                <li class="footable-page-arrow disabled"><a data-page="first" href="#first">«</a></li>
                                                <li class="footable-page-arrow disabled"><a data-page="prev" href="#prev">‹</a></li>
                                                <li class="footable-page active"><a data-page="0" href="#">1</a></li>
                                                <li class="footable-page"><a data-page="1" href="#">2</a></li>
                                                <li class="footable-page"><a data-page="1" href="#">3</a></li>
                                                <li class="footable-page"><a data-page="1" href="#">4</a></li>
                                                <li class="footable-page"><a data-page="1" href="#">5</a></li>
                                                <li class="footable-page"><a data-page="1" href="#">6</a></li>
                                                <li class="footable-page-arrow"><a data-page="next" href="#next">›</a></li>
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
                    <h4 class="modal-title">编辑电商配置</h4>
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
    <script src="${ctx}/static/js/plugins/iCheck/icheck.min.js"></script>
    <script src="${ctx}/static/js/plugins/validate/jquery.validate.min.js"></script>  <!---表单验证--->
    <script src="${ctx}/static/js/plugins/validate/validate-cn.js" ></script> <!---validate 自定义方法--->
    <script>

    $(document).ready(function () {
        $('.i-checks').iCheck({
            checkboxClass: 'icheckbox_minimal-green',
            radioClass: 'iradio_minimal-green',
        });
        //表单验证
        $("#add").validate({
            //debug: true,
            submitHandler: function (form) {
                addform(form);
            }
        });

        function addform(form) {
            $.ajax(
                    {
                        url: "?",
                        type: "post",
                        data: $(form).serialize(),
                        success: function (data) {
                            toastr.success('', '配置修改成功！');
                            toastr.error('错误代码：登陆超时，请重新登陆！','配置修改失败！');
                        }
                    }
            );
        }

//验证码在模态框出现前加载
        $("#edit").on('show.bs.modal', function (event) {
            var button=$(event.relatedTarget );
            var id=button.data("id");
            alert("id = "+ id);
        });
    });
    </script>
</body>
</html>
