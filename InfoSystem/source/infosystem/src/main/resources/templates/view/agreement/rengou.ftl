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
                <h2>合同管理</h2>
                <ol class="breadcrumb">
                    <li>
                        <a href="${ctx }/index">管理首页</a>
                    </li>
                    <li>
                        合同管理
                    </li>
                    <li class="active">
                        转认购
                    </li>
                </ol>
            </div>
        </div>

        <!-----内容区域---->
        <div class="wrapper wrapper-content animated fadeInRight">

            <div class="ibox">
                <div class="ibox-heading">
                    <div class="ibox-title">
                        <h4>荆子凡  预约 转 认购 <small>（合同编号：00966000004151112103907）</small></h4>
                    </div>
                </div>
                <div class="ibox-content p-t-md">
                    <form class="form-horizontal" id="add_form" >
                        <div class="form-group">
                            <label class="col-md-2 control-label">项目名称 </label>
                            <div class="col-md-10">
                                <p class="form-control-static"><b>测试多媒体大厦全称</b></p>
                            </div>
                        </div>

                        <div class="form-group">
                            <label class="col-md-2 control-label">客户1名称 <span class="text-danger">*</span></label>
                            <div class="col-md-10"><input type="text" class="form-control" value="" placeholder="" required></div>
                        </div>

                        <div class="form-group">
                            <label class="col-md-2 control-label">客户1手机 <span class="text-danger">*</span></label>
                            <div class="col-md-10"><input type="text" class="form-control" value="" placeholder="" required></div>
                        </div>

                        <div class="form-group">
                            <label class="col-md-2 control-label">客户2名称 <span class="text-danger">*</span></label>
                            <div class="col-md-10"><input type="text" class="form-control" value="" placeholder="" required></div>
                        </div>

                        <div class="form-group">
                            <label class="col-md-2 control-label">客户2手机 <span class="text-danger">*</span></label>
                            <div class="col-md-10"><input type="text" class="form-control" value="" placeholder="" required></div>
                        </div>
                        <div class="hr-line-dashed"></div>
                        <div class="form-group">
                            <label class="col-md-2 control-label">预约日期 <span class="text-danger">*</span></label>
                            <div class="col-md-10">
                                <div class="input-group date">
                                    <span class="input-group-addon"><i class="fa fa-calendar"></i></span>
                                    <input type="text" class="form-control" value="" placeholder="" required>
                                </div>
                            </div>
                        </div>

                        <div class="form-group">
                            <label class="col-md-2 control-label">认购日期 <span class="text-danger">*</span></label>
                            <div class="col-md-10">
                                <div class="input-group date">
                                    <span class="input-group-addon"><i class="fa fa-calendar"></i></span>
                                    <input type="text" class="form-control" value="" placeholder="" required>
                                </div>
                            </div>
                        </div>

                        <div class="form-group">
                            <label class="col-md-2 control-label">预约协议编号 <span class="text-danger">*</span></label>
                            <div class="col-md-10">
                                <input type="text" class="form-control" value="" placeholder="" required>
                            </div>
                        </div>

                        <div class="form-group">
                            <label class="col-md-2 control-label">认购协议编号 <span class="text-danger">*</span></label>
                            <div class="col-md-10">
                                <input type="text" class="form-control" value="" placeholder="" required>
                            </div>
                        </div>
                        <div class="hr-line-dashed"></div>
                        <div class="form-group">
                            <label class="col-md-2 control-label">房源 <span class="text-danger">*</span></label>
                            <div class="col-md-10">
                                <select name="property" class="form-control">
                                    <option value="">--请选择--</option>
                                    <option value="1">住宅</option>
                                    <option value="2">别墅</option>
                                    <option value="3">商铺</option>
                                    <option value="4">写字楼</option>
                                    <option value="5">酒店式公寓</option>
                                </select>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-md-2 control-label">产品 <span class="text-danger">*</span></label>
                            <div class="col-md-10">
                                <select name="property" class="form-control">
                                    <option value="">--请选择--</option>
                                    <option value="1">住宅</option>
                                    <option value="2">别墅</option>
                                    <option value="3">商铺</option>
                                    <option value="4">写字楼</option>
                                    <option value="5">酒店式公寓</option>
                                </select>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-md-2 control-label">合同面积 <span class="text-danger">*</span></label>
                            <div class="col-md-10">
                                <div class="input-group">
                                    <input type="text" class="form-control" value="" placeholder="" required>
                                    <span class="input-group-addon"> M&sup2; </span>
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-md-2 control-label">合同金额 <span class="text-danger">*</span></label>
                            <div class="col-md-10">
                                <div class="input-group">
                                    <input type="text" class="form-control" value="" placeholder="" required>
                                    <span class="input-group-addon"> 元 </span>
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-sm-4 col-sm-offset-2">
                                <button class="btn btn-primary" type="submit"><i class="fa fa-check"></i> 填写完成，提交！</button>
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
<script src="${ctx}/static/js/plugins/toastr/toastr.min.js" async></script><!---顶部弹出提示--->
<script src="${ctx}/static/js/plugins/validate/jquery.validate.min.js"></script>  <!---表单验证--->
<script src="${ctx}/static/js/plugins/validate/validate-cn.js"></script> <!---validate 自定义方法--->
<script src="${ctx}/static/js/plugins/datapicker/bootstrap-datepicker.js"></script>
<script src="${ctx}/static/js/plugins/rslide/rslide.js"></script>
<script src="${ctx}/static/js/plugins/loading/jquery.loading.js"></script>

<script>

    $(document).ready(function () {


        $('.input-group.date').datepicker({
            todayBtn: "linked",
            keyboardNavigation: false,
            forceParse: false,
            calendarWeeks: true,
            autoclose: true
        });


        $("#add_form").validate({
            submitHandler: function (form) {
                $('#myButton').button('loading')
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
                        error:function(error){
                            setTimeout(function(){
                                $('#myButton').button('reset');
                                $("#rslide").rslide("hide")
                            },3000);
                            toastr.error('错误代码：登陆超时，请重新登陆！', '配置修改失败！');
                        }
                    }
            );
        }
    });


</script>
</body>
</html>
