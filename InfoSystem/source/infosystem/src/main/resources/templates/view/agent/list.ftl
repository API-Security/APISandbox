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
    <!-- FooTable -->
    <link href="${ctx}/static/css/plugins/footable/footable.core.css" rel="stylesheet">
    <link href="${ctx}/static/css/animate.css" rel="stylesheet">
    <link href="${ctx}/static/css/style.css" rel="stylesheet">
</head>

<body class="pace-done">

<!--主体开始-->
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
                <h2>经纪人列表</h2>
                <ol class="breadcrumb">
                    <li><a href="${ctx}/index">管理首页</a></li>
                    <li class="active">人员列表</li>
                </ol>
            </div>
        </div>

        <!-----内容区域---->
        <div class="wrapper wrapper-content animated fadeInRight ecommerce">
            <div class="ibox-content m-b-sm border-bottom">
                <div class="row">
                    <div class="col-md-4 form-group  m-t-xs m-b-none">
                        <input type="text" class="input-sm form-control" name="end" value="" placeholder="输入昵称/姓名/手机号">
                    </div>
                    <div class="col-md-4 form-group m-t-xs m-b-none">
                        <button type="button" class="btn btn-sm btn-primary dropdown-toggle"><i
                                class="fa fa-search"></i> 立即搜索
                        </button>
                    </div>
                </div>
            </div>

            <div class="row">
                <div class="col-lg-12">
                    <div class="ibox">
                        <div class="ibox-content">
                            <div class="table-responsive">
                                <table class="footable table table-stripped toggle-arrow-tiny table-centerbody text-nowrap"
                                       data-page-size="1" id="editable-sample">
                                    <thead>
                                    <tr>
                                        <th>昵称</th>
                                        <th>手机号</th>
                                        <th>角色</th>
                                        <th>所属公司</th>
                                        <th>所属门店</th>
                                        <th>注册时间</th>
                                        <th class="text-right">操作</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <tr>
                                        <td><a class="btn btn-primary btn-circle btn-xs view"><i class="fa fa-plus"></i></a>
                                            小智
                                        </td>
                                        <td>喝酒</td>
                                        <td>15899999999</td>

                                        <td>会员经纪人</td>
                                        <td>多媒体门店</td>
                                        <td>2015-10-22</td>
                                        <td class="text-right">
                                            <div class="btn-group ">
                                                <a class="btn-white  btn btn-sm view"><i class="fa fa-eye"></i> 查看</a>
                                                <a class="btn-white  btn btn-sm rset" data-userid="1"
                                                   data-toggle="modal" data-target="#myModa-reset"><i
                                                        class="fa fa-pencil"></i> 手机号变更</a>
                                            </div>
                                        </td>
                                        <td class="hide">
                                            可用铜钱：<strong>0</strong>，冻结铜钱：<strong>0</strong>，可用元宝：<strong>0</strong>，冻结元宝：<strong>0</strong>，实名认证：<strong>实名认证审核通过</strong>
                                        </td>
                                    </tr>

                                    <tr>
                                        <td><a class="btn btn-primary btn-circle btn-xs view" type="button"><i
                                                class="fa fa-plus"></i></a> 小智
                                        </td>
                                        <td>喝酒</td>
                                        <td>15899999999</td>

                                        <td>会员经纪人</td>
                                        <td>多媒体门店</td>
                                        <td>2015-10-22</td>
                                        <td class="text-right">
                                            <div class="btn-group ">
                                                <a class="btn-white  btn btn-sm view"><i class="fa fa-eye"></i> 查看</a>
                                                <a class="btn-white  btn btn-sm rset" data-userid="1"
                                                   data-toggle="modal" data-target="#myModa-reset"><i
                                                        class="fa fa-pencil"></i> 手机号变更</a>
                                            </div>
                                        </td>
                                        <td class="hide">
                                            可用铜钱：<strong>0</strong>，冻结铜钱：<strong>0</strong>，可用元宝：<strong>0</strong>，冻结元宝：<strong>0</strong>，实名认证：<strong>实名认证审核通过</strong>
                                        </td>
                                    </tr>
                                    </tbody>
                                </table>
                            </div>
                            <div class="pages border-top">
                                <div class="row">
                                    <div class="col-md-4">
                                        <div class="m-t-md">当前显示 1 到 20 条，共 57 条</div>
                                    </div>
                                    <div class="col-md-8 footable-visible">
                                        <ul class="pagination pull-right">
                                            <li class="footable-page-arrow disabled"><a data-page="first" href="#first">«</a>
                                            </li>
                                            <li class="footable-page-arrow disabled"><a data-page="prev" href="#prev">...</a>
                                            </li>
                                            <li class="footable-page active"><a data-page="0" href="#">2</a></li>
                                            <li class="footable-page"><a data-page="1" href="#">3</a></li>
                                            <li class="footable-page"><a data-page="1" href="#">4</a></li>
                                            <li class="footable-page"><a data-page="1" href="#">5</a></li>
                                            <li class="footable-page"><a data-page="1" href="#">6</a></li>
                                            <li class="footable-page-arrow"><a data-page="next" href="#next">...</a>
                                            </li>
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
<!--主体结束-->

<!----手机号变更---->
<div class="modal inmodal fade" id="myModa-reset" tabindex="-1" role="dialog" aria-hidden="true">
    <div class="modal-dialog modal-sm">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">×</span><span
                        class="sr-only">Close</span></button>
                <h4 class="modal-title">手机号变更</h4>
            </div>
            <div class="modal-body">
                <form name="resetform" id="resetform">
                    <div class="form-group">
                        <label class="control-label">原手机号码</label>
                        <div><p class="form-control-static">18811111111</p></div>
                    </div>

                    <div class="form-group">
                        <label class="control-label">新手机号码</label>
                        <div class="row">
                            <div class="col-md-12">
                                <input type="text" class="input-sm form-control" name="newmobile" value=""
                                       placeholder="请输入新手机号码">
                            </div>
                        </div>
                    </div>

                    <div class="form-group m-t-sm">
                        <button class="btn btn-md btn-primary " type="submit"><strong>确认重置</strong></button>
                        <button type="button" class="btn btn-white m-l-sm" data-dismiss="modal">取消</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>
<!----手机号变更---->

<!-- 全局 scripts -->
<script src="${ctx}/static/js/jquery-2.1.1.js"></script>
<script src="${ctx}/static/js/bootstrap.js"></script>
<script src="${ctx}/static/js/plugins/metisMenu/jquery.metisMenu.js"></script>
<script src="${ctx}/static/js/plugins/slimscroll/jquery.slimscroll.min.js"></script>
<script src="${ctx}/static/js/wuling.js"></script>
<script src="${ctx}/static/js/plugins/pace/pace.min.js"></script>

<!-- 插件 scripts -->
<script src="${ctx}/static/js/plugins/toastr/toastr.min.js" async></script><!---顶部弹出提示--->
<script src="${ctx}/static/js/plugins/sweetalert/sweetalert.min.js" async></script><!---对话框 alert--->
<script src="${ctx}/static/js/plugins/opentable/opentable.js"></script> <!----表格展开---->
<script src="${ctx}/static/js/plugins/validate/jquery.validate.min.js"></script>  <!---表单验证--->
<script src="${ctx}/static/js/plugins/validate/validate-cn.js"></script> <!---validate 自定义方法--->


<!-- Page-Level Scripts -->

<script>
    //下拉框组件

    $(document).ready(function () {
        //重置密码
        $('#editable-sample').tableopen(7);

        $("#resetform").validate({
            rules: {
                newmobile: {
                    required: true,
                    isMobile: true
                    //remote: "异步验证"
                }
            },
            messages: {
                restcode: {
                    required: "请输入验证码",
                    isMobile: "请输入正确的手机号码",
                    remote: jQuery.validator.format("{0} is already in use")
                }
            },
            //debug: true,
            submitHandler: function (form) {
                setform(form);
            }
        });

        function setform(form) {
            $.ajax(
                    {
                        url: "?",
                        type: "post",
                        data: $(form).serialize(),
                        success: function (data) {
                            toastr.success('密码已发送到用户手机！', '密码重置成功！');
                            $("#myModa-reset").modal("hide");
                        }
                    }
            );
            return false;
        }

        //验证码在模态框出现前加载
        $("#myModa-reset").on('show.bs.modal', function (event) {
            var button = $(event.relatedTarget);
            var userid = button.data("userid");
            $("#userid").val(userid);
            alert("userid = " + userid);
        });
        //关闭模态框清空表单值
        $("#myModa-reset").on('hidden.bs.modal', function (event) {
            $(this).find("input").val("");
        });
    });

</script>
</body>
</html>