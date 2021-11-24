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
    <nav class="navbar-default navbar-static-side" role="navigation" id="leftnav"></nav>
    <!----左侧导航结束----->
    <!---右侧内容区开始---->
    <div id="page-wrapper" class="gray-bg">
        <!---顶部状态栏 star-->
        <div class="row ">
            <nav class="navbar navbar-fixed-top" role="navigation"></nav>
        </div>
        <!---顶部状态栏 end-->
        <!--------当前位置----->
        <div class="row  border-bottom white-bg page-heading">
            <div class="col-sm-4">
                <h2>确认到访</h2>
                <ol class="breadcrumb">
                    <li>
                        <a href="${ctx}/index">管理首页</a>
                    </li>
                    <li>
                        <a class="active" href="javascript:void(0)">确认到访</a>
                    </li>
                </ol>
            </div>
        </div>
        <!-----内容区域---->
        <div class="wrapper wrapper-content animated fadeInRight">
            <div class="ibox">
                <div class="ibox-heading">
                    <div class="ibox-title">
                        <h5>客户到访确认</h5>
                    </div>
                </div>
                <div class="ibox-content ibox-content-t">
                    <form class="form-horizontal" name="add" id="add">
                        <div class="form-group">
                            <div class="col-md-4 col-md-offset-4">
                                <div class="input-group input-group-lg" aria-expanded="false">
                                    <span class="input-group-addon"><i class="fa fa-search" aria-expanded="false"></i></span>
                                    <input type="text" value="" name="code" placeholder="请输入验证码" class="form-control" aria-expanded="false">
                                    <span class="input-group-btn" aria-expanded="false"><button class="btn btn-primary" id="search_btn" aria-expanded="false">查询</button></span>
                                </div>
                                <div style="margin-left: 50px"></div>
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
<script src="${ctx}/static/js/plugins/toastr/toastr.min.js" async></script>
<script src="${ctx}/static/js/plugins/sweetalert/sweetalert.min.js" async></script>
<script src="${ctx}/static/js/plugins/validate/jquery.validate.min.js"></script>  <!---表单验证--->
<script src="${ctx}/static/js/plugins/validate/validate-cn.js"></script> <!---validate 自定义方法--->
<!---对话框 alert--->

<!---顶部弹出提示--->

<script>
    $(document).ready(function () {
        //添加用户表单验证
        $("#add").validate({
            rules: {
                code: {
                    required: true,
                    rangelength: [6,6]
                }
            },
            messages: {
                code: {
                    required: "请输入客户收到的6位验证码！",
                    rangelength: jQuery.validator.format("验证码应该为六位")
                }
            },
            errorPlacement:function(error,element) { error.appendTo(element.parent("div").next('div'));
            },
            //debug: true,
            submitHandler: function (form) {
                addform(form);
            }
        });

        function addform(form) {
            $.ajax(
                {
                    url: "http://localhost/view/user/user_list.html",
                    type: "post",
                    data: $(form).serialize(),
                    success: function (data) {
                        alert("111111")
                        swal("用户添加成功!", "", "success");
                        //alert($(form).serialize())
                    },
                    error:function(error,status){
                        toastr.error('错误代码：'+error.status+'！', '查询失败！');
                     }
                }
            );
            return false;
        }
    })
</script>
</body>
</html>
