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
    <link href="${ctx}/static/css/plugins/footable/footable.core.css" rel="stylesheet">
    <link href="${ctx}/static/css/plugins/sweetalert/sweetalert.css" rel="stylesheet">
    <link href="${ctx}/static/css/plugins/chosen/chosen.css" rel="stylesheet">
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
                <h2>推送管理</h2>
                <ol class="breadcrumb">
                    <li>
                        <a href="${ctx}/index">管理首页</a>
                    </li>
                    <li>
                        <a href="list.html">推送管理</a>
                    </li>
                    <li class="active">
                        推送列表
                    </li>
                </ol>
            </div>
        </div>

        <!-----内容区域---->
        <div class="wrapper wrapper-content animated fadeInRight">
            <!--当前位置开始-->
            <div class="ibox-content m-b-sm border-bottom">
                <div class="row">
                    <div class="col-md-6 col-sm-4 " id="adc">
                        <a class="btn btn-primary" data-toggle="modal" data-target="#modal-form">
                            新增推送 <i class="fa fa-plus"></i>
                        </a>
                    </div>
                    <div class="col-md-6 col-sm-8 text-right">
                        <div class="btn-group">
                            <button class="btn btn-primary p-l-slg p-r-slg" type="button">全部</button>
                            <button class="btn btn-white p-l-slg p-r-slg" type="button">通知</button>
                            <button class="btn btn-white p-l-slg p-r-slg" type="button">消息</button>
                        </div>
                    </div>
                </div>
            </div>
            <!--当前位置结束-->

            <div class="row">
                <div class="col-lg-12">
                    <div class="ibox">
                        <div class="ibox-content">
                            <div class="table-responsive ">
                                <table class="footable table table-stripped toggle-arrow-tiny table-centerbody" data-page-size="15" id="editable-sample">
                                    <thead>
                                        <tr>
                                            <th data-sort-ignore="true">类型</th>
                                            <th data-sort-ignore="true">范围</th>
                                            <th data-hide="all"><div class="hide sr-only">内容</div></th>
                                            <th data-sort-ignore="true">时间</th>
                                            <th data-sort-ignore="true">状态</th>
                                            <th class="text-right" data-sort-ignore="true">操作</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td><span class="label label-success">通知</span></td>
                                            <td>全体</td>
                                            <td>
                                                <p>石湖天玺 案场经理</p>
                                            </td>
                                            <td>2015-11-04 11:14</td>
                                            <td>已推送</td>
                                            <td class="text-right">
                                                <div class="btn-group ">
                                                    <button class="btn-white  btn btn-sm delete" data-userid="1"><i class="fa fa-trash"></i>  删除</button>
                                                </div>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td><span class="label label-info">消息</span></td>
                                            <td>全体</td>
                                            <td>
                                                <p>4日,中共中央台湾工作办公室、国务院台湾事务办公室主任张志军宣布,经两岸有关方面协商,两岸领导人习近平4日,中共中央台湾工作办公室、国务院台湾事务办公室主任张志军宣布,经两岸有关方面协商,两岸领导人习近平4日,中共中央台湾工作办公室、国务院台湾事务办公室主任张志军宣布,经两岸有关方面协商,两岸领导人习近平</p>
                                            </td>
                                            <td>2015-11-04 11:14</td>
                                            <td>未推送</td>
                                            <td class="text-right">
                                                <div class="btn-group ">
                                                    <button class="btn-white  btn btn-sm rset" data-userid="1" data-toggle="modal" data-target="#modal-form"><i class="fa fa-pencil"></i>  修改</button>
                                                    <button class="btn-white  btn btn-sm delete" data-userid="1"><i class="fa fa-trash"></i>  删除</button>
                                                </div>
                                            </td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                            <div class="pages border-top">
                                <div class="row">
                                    <div class="col-md-4"><div class="m-t-md">当前显示 1 到 10 条，共 57 条</div></div>
                                    <div class="col-md-8 ">
                                        <ul class="pagination pull-right">
                                            <li class="disabled"><a data-page="first" href="#first">«</a></li>
                                            <li class="disabled"><a data-page="prev" href="#prev">‹</a></li>
                                            <li class="active"><a data-page="0" href="#">1</a></li>
                                            <li class=""><a data-page="1" href="#">2</a></li>
                                            <li class=""><a data-page="1" href="#">3</a></li>
                                            <li class=""><a data-page="1" href="#">4</a></li>
                                            <li class=""><a data-page="1" href="#">5</a></li>
                                            <li class=""><a data-page="1" href="#">6</a></li>
                                            <li class=""><a data-page="next" href="#next">›</a></li>
                                            <li class=""><a data-page="last" href="#last">»</a></li>
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
                <strong>Copyright</strong> Wuling Company &copy; 2014-2015
            </div>
        </div>
    </div>
    <!---右侧内容区结束----->
</div>


<!----修改开始--->
<div class="modal fade" id="modal-form" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header bg-primary">
                <button aria-hidden="true" data-dismiss="modal" class="close" type="button">×</button>
                <h4 class="modal-title">新增推送</h4>
            </div>
            <div class="modal-body">

                <form role="form" id="add" name="add" class="form-horizontal">
                    <div class="form-group">
                        <label class="col-sm-3 control-label">推送类型</label>
                        <div class="col-sm-8">
                            <select name="business" class="form-control input-s-sm inline">
                                <option value="">请选择</option>
                                <option value="1">通知</option>
                                <option value="2">消息</option>
                            </select>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-3 control-label">时间类型</label>
                        <div class="col-sm-8">
                            <select name="jiaos" class="form-control input-s-sm inline"  data-toggle-name="#jiaosbox">
                                <option value="" >请选择</option>
                                <option value="1" data-box-name="lianjia">即时</option>
                                <option value="2" data-box-name="fangdd">自定义</option>
                            </select>
                        </div>
                    </div>
                    <div class="form-group" id="data_1">
                        <label class="col-sm-3 control-label">推送时间</label>
                        <div class="col-sm-8">
                            <div class="input-group date">
                                <span class="input-group-addon"><i class="fa fa-calendar"></i></span>
                                <input type="text" value="" placeholder="请选择开盘时间"  class="form-control">
                            </div>
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="col-sm-3 control-label">推送范围</label>
                        <div class="col-sm-8">
                            <select name="tuisong" class="form-control input-s-sm inline"  data-toggle-name="#jiaosbox">
                                <option value="" >请选择</option>
                                <option value="1" data-box-name="lianjia">部分</option>
                                <option value="2" data-box-name="fangdd">全部</option>
                            </select>
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="col-sm-3 control-label">部分置业顾问</label>
                        <div class="col-sm-8">
                            <select  data-placeholder="-- 请选择 --"  name="round" multiple class="chosen-select" tabindex="4" required>
                                <option value=""></option>
                                <option value="1">下拉一</option>
                                <option value="2">下拉二</option>
                                <option value="3">下拉三</option>
                                <option value="4">下拉四</option>
                                <option value="5">下拉5</option>
                                <option value="6">下拉6</option>
                                <option value="7">下拉7</option>
                                <option value="8">下拉8</option>
                                <option value="9">下拉9</option>
                                <option value="10">下拉10</option>
                                <option value="11">下拉10</option>
                                <option value="12">下拉10</option>
                            </select>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-3 control-label">推送内容</label>
                        <div class="col-sm-8">
                            <textarea maxlength="255" rows="2" placeholder="输入推送内容" class="form-control"></textarea>
                        </div>
                    </div>

                    <div class="form-group m-t-sm" >
                        <div class="col-sm-6 col-sm-push-3">
                            <button class="btn btn-md btn-primary " type="submit"><strong>创建用户</strong></button>
                            <button type="button" class="btn btn-white m-l-sm" data-dismiss="modal">取消</button>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>
<!---修改结束--->

<!-- 全局 scripts -->
<script src="${ctx}/static/js/jquery-2.1.1.js"></script>
<script src="${ctx}/static/js/bootstrap.js"></script>
<script src="${ctx}/static/js/wuling.js"></script>
<script src="${ctx}/static/js/plugins/pace/pace.min.js"></script>
<script src="${ctx}/static/js/plugins/slimscroll/jquery.slimscroll.min.js"></script>
<script src="${ctx}/static/js/plugins/metisMenu/jquery.metisMenu.js"></script>
<!-- 插件 scripts -->
<script src="${ctx}/static/js/plugins/footable/footable.all.min.js"></script> <!-- FooTable -->
<script src="${ctx}/static/js/plugins/toastr/toastr.min.js" async></script><!---顶部弹出提示--->

<!-- 插件 scripts -->
<script src="${ctx}/static/js/plugins/chosen/chosen.jquery.js"></script>
<script src="${ctx}/static/js/plugins/sweetalert/sweetalert.min.js" async></script><!---对话框 alert--->
<script src="${ctx}/static/js/plugins/validate/jquery.validate.min.js"></script>  <!---表单验证--->
<script src="${ctx}/static/js/plugins/validate/validate-cn.js" ></script> <!---validate 自定义方法--->
<script src="${ctx}/static/js/plugins/datapicker/bootstrap-datepicker.js"></script>

<!-- Page-Level Scripts -->
<script>
    $(document).ready(function() {
        $('.footable').footable();
    });
</script>
<script>

    //下拉框组件
    $(".chosen-select").chosen({no_results_text:'未找到此项',width:"100%",allow_single_deselect:true,disable_search_threshold:10});
    $(document).ready(function () {
        //添加用户表单验证
        $("#add").validate({

            rules: {
                business: "required",
                jiaos: "required",
                tuisong: "required"
            },
            messages: {

                business: "请选择推送类型",
                jiaos: "请选择时间类型",
                tuisong: "请选择推送范围"
            },
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
                            swal("用户添加成功!", "", "success");
                            //alert($(form).serialize())
                        }
                    }
            );
            return false;
        }


        //更改状态
        $('#editable-sample a.btn').on("click", function () {
            var el = $(this);
            var elclass = el[0].className;
            //处理点击效果,先效果然后执行
            if (el.hasClass("btn-default")) {
                $(this).removeClass("btn-default").addClass("btn-primary");
            } else {
                $(this).removeClass("btn-primary").addClass("btn-default");
            }
            //设置成功
            toastr.success('用户 "香溢紫郡－案场经历" 状态已更改为无效！', '状态设置成功！');
            //AJAX操作，执行失败，按钮恢复默认
            //el[0].className=elclass;
            //toastr.error('服务器连接失败，请重试！','状态设置失败！');
        });


        //重置密码

        $("#resetform").validate({
            rules: {
                restcode: {
                    required: true,
                    rangelength: [6, 6]
                    //remote: "异步验证"
                }
            },
            messages: {
                restcode: {
                    required: "请输入验证码",
                    rangelength: jQuery.validator.format("请输入6位验证码"),
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
                            toastr.success('密码已发送到用户手机！','密码重置成功！');
                            $("#myModa-reset").modal("hide");
                        }
                    }
            );
            return false;
        }

        //验证码在模态框出现前加载
        $("#myModa-reset").on('show.bs.modal', function (event) {
            var button=$(event.relatedTarget );
            var userid=button.data("userid");
            $("#userid").val(userid);
            $('#codeimg').attr("src","http://www.wulingtest.com:8780/jcaptcha")
            alert("userid = "+ userid);
        });
        //关闭模态框清空表单值
        $("#myModa-reset").on('hidden.bs.modal', function (event) {
            $(this).find("input").val("");
        });
        //删除数据
        $('#editable-sample button.delete').on('click', function () {
            var row=$(this).parents("tr")[0];
            var userid=$(this).data("userid");
            swal({
                title: "您确定要删除吗?",
                text: "用户账户删除后将不可恢复!",
                type: "warning",
                showCancelButton: true,
                confirmButtonColor: "#1ab394",
                confirmButtonText: "确定删除！",
                closeOnConfirm: false
            }, function () {
                row.className="animated bounceOut";
                setTimeout(function(){
                            //请求成功返回
                            // row.parentNode.removeChild(row);
                            //swal("删除成功!", "用户 “香溢紫郡－案场经历” 删除成功！","success");

                            //失败
                            row.className="animated fadeInLeft";
                            swal("删除失败!", "用户userid="+userid+" “香溢紫郡－案场经历” 删除失败！","error");
                        },1000
                )
            });
        });
    });

    $('#data_1 .input-group.date').datepicker({
        todayBtn: "linked",
        keyboardNavigation: false,
        forceParse: false,
        calendarWeeks: true,
        autoclose: true
    });
</script>
</body>
</html>