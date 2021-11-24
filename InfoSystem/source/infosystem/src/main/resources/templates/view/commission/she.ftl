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
    <link href="${ctx}/static/css/plugins/fileinput/fileinput.min.css" rel="stylesheet">
    <link href="${ctx}/static/css/plugins/iCheck/green.css" rel="stylesheet">
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
                <h2>佣金维护</h2>
                <ol class="breadcrumb">
                    <li>
                        <a href="${ctx }/index">管理首页</a>
                    </li>
                    <li>
                        佣金维护
                    </li>
                    <li class="active">
                        佣金规则审核
                    </li>
                </ol>
            </div>
        </div>

        <!-----内容区域---->
        <div class="wrapper wrapper-content animated fadeInRight">
            <div class="row">
                <div class="col-md-6">
                    <div class="ibox">
                        <div class="ibox-heading">
                            <div class="ibox-title">
                                <h5>佣金规则<small>（测试－空中花园  团购1W）</small></h5>
                            </div>
                        </div>
                        <div class="ibox-content p-t-md">

                                <div class="row">
                                    <div class="col-md-12">
                                        <form class="form-horizontal">
                                        <div class="form-group">
                                            <label class="col-md-6 col-lg-5 col-xs-7 control-label">物业类型：</label>
                                            <div class="col-md-6 col-lg-7 col-xs-6">
                                                <p class="form-control-static">别墅</p>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="col-md-6 col-lg-5 col-xs-7 control-label">产品属性：</label>
                                            <div class="col-md-6 col-lg-7 col-xs-6"><p class="form-control-static">团购项目</p></div>
                                        </div>

                                        <div class="form-group">
                                            <label class="col-md-6 col-lg-5 col-xs-7 control-label">产品类型：</label>
                                            <div class="col-md-6 col-lg-7 col-xs-6"><p class="form-control-static">13123</p></div>
                                        </div>

                                        <div class="form-group">
                                            <label class="col-md-6 col-lg-5 col-xs-7 control-label">收入来源：</label>
                                            <div class="col-md-6 col-lg-7 col-xs-6"><p class="form-control-static">客户刷团购费</p></div>
                                        </div>

                                        <div class="form-group">
                                            <label class="col-md-6 col-lg-5 col-xs-7 control-label">团购费：</label>
                                            <div class="col-md-6 col-lg-7 col-xs-6"><p class="form-control-static">10000元/套 </p></div>
                                        </div>

                                        <div class="form-group">
                                            <label class="col-md-6 col-lg-5 col-xs-7 control-label">佣金发放方式： </label>
                                            <div class="col-md-6 col-lg-7 col-xs-6"><p class="form-control-static">总价千分比</p></div>
                                        </div>
                                        <div class="hr-line-dashed"><span class="badge badge-posion label-primary">门店经纪人</span></div>
                                        <div class="form-group">
                                            <label class="col-md-6 col-lg-5 col-xs-7 control-label">带看客户成交佣金： </label>
                                            <div class="col-md-6 col-lg-7 col-xs-6"><p class="form-control-static">1.0%</p></div>
                                        </div>

                                        <div class="form-group">
                                            <label class="col-md-6 col-lg-5 col-xs-7 control-label">推荐客户成交佣金： </label>
                                            <div class="col-md-6 col-lg-7 col-xs-6"><p class="form-control-static">1.0%</p></div>
                                        </div>

                                        <div class="form-group">
                                            <label class="col-md-6 col-lg-5 col-xs-7 control-label">额外佣金规则： </label>
                                            <div class="col-md-6 col-lg-7 col-xs-6"><p class="form-control-static">1.0%</p></div>
                                        </div>

                                        <div class="form-group">
                                            <label class="col-md-6 col-lg-5 col-xs-7 control-label">带看客户成交佣金： </label>
                                            <div class="col-md-6 col-lg-7 col-xs-6"><p class="form-control-static">1.0%</p></div>
                                        </div>
                                        <div class="hr-line-dashed"><span class="badge badge-posion label-primary">会员经纪人</span></div>
                                        <div class="form-group">
                                            <label class="col-md-6 col-lg-5 col-xs-7 control-label">带看客户成交佣金： </label>
                                            <div class="col-md-6 col-lg-7 col-xs-6"><p class="form-control-static">1.0%</p></div>
                                        </div>

                                        <div class="form-group">
                                            <label class="col-md-6 col-lg-5 col-xs-7 control-label">推荐客户成交佣金： </label>
                                            <div class="col-md-6 col-lg-7 col-xs-6"><p class="form-control-static">1.0%</p></div>
                                        </div>

                                        <div class="form-group">
                                            <label class="col-md-6 col-lg-5 col-xs-7 control-label">1级下线客户成交佣金： </label>
                                            <div class="col-md-6 col-lg-7 col-xs-6"><p class="form-control-static">1.0%</p></div>
                                        </div>

                                        <div class="form-group">
                                            <label class="col-md-6 col-lg-5 col-xs-7 control-label">2级下线客户成交佣金： </label>
                                            <div class="col-md-6 col-lg-7 col-xs-6"><p class="form-control-static">1.0%</p></div>
                                        </div>
                                        </form>
                                    </div>

                                </div>

                        </div>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="ibox float-e-margins">
                        <div class="ibox-title">
                            <h5>审核操作</h5>
                        </div>
                        <div class="ibox-content">
                            <div class="row">
                                <div class="col-md-12">
                                    <form id="add_form" >
                                        <div class="form-group">
                                            <label class="control-label">审核: <span class="text-danger">*</span></label>
                                            <div>
                                                <label class="checkbox-inline p-l-n"><input type="radio" class="i-checks" value="option1" name="optionsRadios2"> 通过</label>
                                                <label class="checkbox-inline"><input type="radio" class="i-checks" value="option1" name="optionsRadios2"> 	拒绝</label>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="control-label">拒绝原因： </label>
                                            <textarea maxlength="255" rows="4"  placeholder="请输入小于225个字的内容"  class="form-control"></textarea>
                                        </div>
                                        <div class="form-group">
                                            <button class="btn btn-primary" type="submit" id="myButton"><i class="fa fa-check"></i> 提交！</button>
                                        </div>
                                    </form>
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
<script src="${ctx}/static/js/plugins/toastr/toastr.min.js" async></script><!---顶部弹出提示--->
<script src="${ctx}/static/js/plugins/validate/jquery.validate.min.js"></script>  <!---表单验证--->
<script src="${ctx}/static/js/plugins/validate/validate-cn.js"></script> <!---validate 自定义方法--->
<script src="${ctx}/static/js/plugins/datapicker/bootstrap-datepicker.js"></script>
<script src="${ctx}/static/js/plugins/fileinput/fileinput.min.js" ></script><!---文件上传--->
<script src="${ctx}/static/js/plugins/fileinput/fileinput_locale_zh.js" ></script><!---文件上传中文配置--->
<script src="${ctx}/static/js/plugins/iCheck/icheck.min.js"></script>
<script src="${ctx}/static/js/plugins/loading/jquery.loading.js"></script>

<script>

    $(document).ready(function () {
        $('.i-checks').iCheck({  //
            checkboxClass: 'icheckbox_minimal-green',
            radioClass: 'iradio_minimal-green'
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
