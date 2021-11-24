<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8"/>
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
                    <h2>屋瓴账号管理</h2>
                    <ol class="breadcrumb">
                        <li>
                            <a href="${ctx}/index">管理首页</a>
                        </li>
                        <li class="active">
                            屋瓴账号管理
                        </li>

                    </ol>
                </div>
            </div>

            <!-----内容区域---->
            <div class="wrapper wrapper-content animated fadeInRight">

                <div class="alert alert-warning alert-dismissible fade in" role="alert">
                    <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">×</span></button>
                    <strong><i class="fa fa-exclamation-triangle"></i> 提示：</strong> 配置用户签到所得到的铜钱奖励！
                </div>

                <div class="ibox float-e-margins ">
                    <div class="ibox-content p-t-slg">
                        <form name="entity" id="input_form" class="form-horizontal">

                            <div class="form-group">
                                <label class="col-sm-2 control-label">签到一天 <span class="text-danger">*</span></label>
                                <div class="col-sm-9">
                                    <div class="input-group">
                                         <input type="text" name="day1" value="" placeholder="签到一天奖励" class="form-control" required>
                                         <span class="input-group-addon">铜钱</span>
                                    </div>
                                    <div></div>
                                </div>
                            </div>
                            <div class="form-group"><label class="col-sm-2 control-label">签到二天 <span class="text-danger">*</span></label>
                                <div class="col-sm-9">
                                    <div class="input-group">
                                        <input type="text" name="day2" value="" placeholder="签到二天奖励" class="form-control" required>
                                        <span class="input-group-addon">铜钱</span>
                                    </div>
                                    <div></div>
                                </div>
                            </div>
                            <div class="form-group"><label class="col-sm-2 control-label">签到三天 <span class="text-danger">*</span></label>
                                <div class="col-sm-9">
                                    <div class="input-group">
                                        <input type="text" name="day3" value="" placeholder="签到三天奖励" class="form-control" required>
                                        <span class="input-group-addon">铜钱</span>
                                    </div>
                                    <div></div>
                                </div>
                            </div>
                            <div class="form-group"><label class="col-sm-2 control-label">签到四天 <span class="text-danger">*</span></label>
                                <div class="col-sm-9">
                                    <div class="input-group">
                                        <input type="text" name="day4" value="" placeholder="签到四天奖励" class="form-control" required>
                                        <span class="input-group-addon">铜钱</span>
                                    </div>
                                    <div></div>
                                </div>
                            </div>
                            <div class="form-group"><label class="col-sm-2 control-label">签到五天 <span class="text-danger">*</span></label>
                                <div class="col-sm-9">
                                    <div class="input-group">
                                        <input type="text" name="day5" value="" placeholder="签到五天奖励" class="form-control" required>
                                        <span class="input-group-addon">铜钱</span>
                                    </div>
                                    <div></div>
                                </div>
                            </div>
                            <div class="form-group"><label class="col-sm-2 control-label">签到六天 <span class="text-danger">*</span></label>
                                <div class="col-sm-9">
                                    <div class="input-group">
                                        <input type="text" name="day6" value="" placeholder="签到六天奖励" class="form-control" required>
                                        <span class="input-group-addon">铜钱</span>
                                    </div>
                                    <div></div>
                                </div>
                            </div>
                            <div class="form-group"><label class="col-sm-2 control-label">签到七天 <span class="text-danger">*</span></label>
                                <div class="col-sm-9">
                                    <div class="input-group">
                                        <input type="text" name="day7" value="" placeholder="签到七天奖励" class="form-control" required>
                                        <span class="input-group-addon">铜钱</span>
                                    </div>
                                    <div></div>
                                </div>
                            </div>


                            <div class="hr-line-dashed"></div>
                            <div class="form-group">
                                <div class="col-sm-4 col-sm-offset-2">
                                    <button class="btn btn-primary" type="submit"><i class="fa fa-check"></i> 提交</button>
                                    <button class="btn btn-white" type="reset">取消</button>
                                </div>
                            </div>
                        </form>
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
    <script src="${ctx}/static/js/plugins/toastr/toastr.min.js" ></script><!---顶部弹出提示--->
    <script src="${ctx}/static/js/plugins/validate/jquery.validate.min.js"></script>  <!---表单验证--->
    <script src="${ctx}/static/js/plugins/validate/validate-cn.js"></script> <!---validate 自定义方法--->


    <script>
    //下拉框组件
    $(document).ready(function () {
        jQuery.extend(jQuery.validator.messages, {
            required: "请输入签到奖励的铜钱数量！",
            maxlength: "最大金额不能超过10位",
            isDigits:'只充许输入0-9的数字'
        });
        $("#input_form").validate({
            //debug: true,
            rules: {
                day1: {
                    required: true,
                    maxlength:10,
                    isDigits:true
                },
                day2: {
                    required: true,
                    maxlength:10,
                    isDigits:true
                },
                day3: {
                    required: true,
                    maxlength:10,
                    isDigits:true
                },
                day4: {
                    required: true,
                    maxlength:10,
                    isDigits:true
                },
                day5: {
                    required: true,
                    maxlength:10,
                    isDigits:true
                },
                day6: {
                    required: true,
                    maxlength:10,
                    isDigits:true
                },
                day7: {
                    required: true,
                    maxlength:10,
                    isDigits:true
                }
            },
            errorPlacement:function(error,element) { error.appendTo(element.parent("div").next('div'));
            },
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
                        },
                        error:function(){
                            toastr.error('错误代码：登陆超时，请重新登陆！','配置修改失败！');
                        }
                    }
            );
        }
    })
    </script>
</body>
</html>
