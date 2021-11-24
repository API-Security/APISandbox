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
    <link href="${ctx}/static/css/plugins/fileinput/fileinput.min.css" rel="stylesheet">
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
                    <h2>楼盘管理</h2>
                    <ol class="breadcrumb">
                        <li>
                            <a href="${ctx}/index">管理首页</a>
                        </li>
                        <li>
                            楼盘管理
                        </li>
                        <li class="active">
                            编辑楼盘
                        </li>
                    </ol>
                </div>
            </div>

            <!-----内容区域---->
            <div class="wrapper wrapper-content animated fadeInRight">
                <div class="row">
                    <div class="col-md-12">
                        <div class="stepy-tab">
                            <ul id="default-titles" class="stepy-titles clearfix">
                                <li><a href="${ctx }/view/project/add"><div>基础信息</div></a></li>
                                <li ><a href="${ctx }/view/project/add2"><div>户型管理</div></a></li>
                                <li ><a href="${ctx }/view/project/add3"><div>楼盘相册</div></a></li>
                                <li ><a href="${ctx }/view/project/add4"><div>销控管理</div></a></li>
                                <li><a href="${ctx }/view/project/add5"><div>合作信息</div></a></li>
                                <li><a href="${ctx }/view/project/add6"><div>产品维护</div></a></li>
                                <li class="current-step"><div>拥金维护</div></li>
                                <li ><a href="${ctx }/view/project/add8"><div>销控管理</div></a></li>
                                <li ><a href="${ctx }/view/project/add9"><div>销控管理</div></a></li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="ibox float-e-margins">
                    <div class="ibox-heading">
                        <div class="ibox-title">
                            大城小爱 佣金维护
                        </div>
                    </div>
                    <div class="ibox-content p-t-md">
                        <div class="m-b-sm">
                            <a href="#add_rslide" class="btn btn-primary" data-id="555555" data-toggle="rslide" role="button" data-title="新增佣金规则">新增佣金规则  <i class="fa fa-plus"></i></a>
                        </div>
                        <div class="table-responsive ">
                            <table class="table table-centerbody table-striped table-condensed text-nowrap border-top" id="editable-sample">
                                <thead>
                                    <tr>
                                        <th>创建时间 </th>
                                        <th>物业 </th>
                                        <th>产品 </th>
                                        <th>审核状态 </th>
                                        <th>是否上线 </th>
                                        <th class="text-right">操作</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td >2015-10-14 14:39:51</td>
                                        <td>住宅</td>
                                        <td>Hshh</td>
                                        <td><span class="label label-success">审核通过</span></td>
                                        <td><a class="btn btn-primary btn-circle btn-sm" data-userid="1" onclick="setState(this)"><i class="fa fa-check"></i></a></td>
                                        <td class="text-right text-nowrap">
                                            <div class="btn-group ">
                                                <a href="#edit_rslide" class="btn btn-white btn-sm" data-id="5" data-toggle="rslide" data-title="编辑信息"><i class="fa fa-pencil" ></i>  查看</a>
                                                <a href="view.html" class="btn btn-white btn-sm"><i class="fa fa-trash"></i>  删除</a>
                                            </div>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                        <div class="pages border-top">
                            <div class="row">
                                <div class="col-md-5"><div class="m-t-md">当前显示 1 到 10 条，共 57 条</div></div>
                                <div class="col-md-6 footable-visible">
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

    <div class="rslide fadeInRightBig" id="add_rslide">
            <div class="rslide-heading">
                <div class="rslide-title">
                    <button class="close" type="button" data-dismiss="rslide" aria-hidden="true"><i>×</i></button>
                    <h4>添加佣金规则</h4>
                </div>
            </div>
            <div class="rslide-body">


                <form class="form-horizontal" id="add_form" >
                    <div class="form-group">
                        <label class="col-sm-10 col-md-5 col-lg-4 control-label">类型 <span class="text-danger">*</span></label>
                        <div class="col-sm-11 col-md-6 col-lg-7">
                            <select name="business" class="form-control input-s-sm inline">
                                <option value="">请选择物业类型</option>
                                <option value="1">链家网</option>
                                <option value="2">房多多</option>
                            </select>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-10 col-md-5 col-lg-4 control-label">上线方式 <span class="text-danger">*</span></label>
                        <div class="col-sm-11 col-md-6 col-lg-7">
                            <div><input type="radio" class="i-checks" value="option1" name="optionsRadios"> 审核通过后立马上线。 <i class="fa fa-exclamation-circle text-warning fa-md" data-toggle="popover" data-content="如果该产品存在已上线的佣金规则则需将目前线上的下线再手动上线!" data-trigger="hover"></i></div>
                            <div class="m-t-sm"><input type="radio" class="i-checks" value="option1" name="optionsRadios"> 审核通过后手动上线。</div>
                        </div>
                    </div>
                    <div class="hr-line-dashed m-t-lg m-b-lg">
                        <span class="badge badge-posion label-primary">佣金规则设置</span>
                    </div>

                    <div class="form-group">
                        <label class="col-sm-10 col-md-5 col-lg-4 control-label">拥金发放方式 <span class="text-danger">*</span></label>
                        <div class="col-sm-11 col-md-6 col-lg-7">
                            <label class="checkbox-inline p-l-n"><input type="radio" class="i-checks" value="option1" name="optionsRadios2"> 总价千分比</label>
                            <label class="checkbox-inline"><input type="radio" class="i-checks" value="option1" name="optionsRadios2"> 固定金额</label>
                        </div>
                    </div>

                    <div class="hr-line-dashed m-t-lg m-b-lg">
                        <span class="badge badge-posion label-primary">门店经纪人</span>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-10 col-md-5 col-lg-4 control-label">带看客户成交佣金 <span class="text-danger">*</span></label>
                        <div class="col-sm-11 col-md-6 col-lg-7"><input type="text" class="form-control" value="" placeholder="" ></div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-10 col-md-5 col-lg-4 control-label">推荐客户成交佣金 <span class="text-danger">*</span></label>
                        <div class="col-sm-11 col-md-6 col-lg-7"><input type="text" class="form-control" value="" placeholder="" ></div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-10 col-md-5 col-lg-4 control-label">额外佣金规则 </label>
                        <div class="col-sm-11 col-md-6 col-lg-7"><input type="text" class="form-control" value="" placeholder="" ></div>
                    </div>
                    <div class="hr-line-dashed m-t-lg m-b-lg">
                        <span class="badge badge-posion label-primary" >会员经纪人</span>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-10 col-md-5 col-lg-4 control-label">带看客户成交佣金 <span class="text-danger">*</span></label>
                        <div class="col-sm-11 col-md-6 col-lg-7"><input type="text" class="form-control" value="" placeholder="" ></div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-10 col-md-5 col-lg-4 control-label">推荐客户成交佣金 <span class="text-danger">*</span></label>
                        <div class="col-sm-11 col-md-6 col-lg-7"><input type="text" class="form-control" value="" placeholder="" ></div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-10 col-md-5 col-lg-4 control-label">1级下线客户成交佣金 </label>
                        <div class="col-sm-11 col-md-6 col-lg-7"><input type="text" class="form-control" value="" placeholder="" ></div>
                    </div>

                    <div class="form-group">
                        <label class="col-sm-10 col-md-5 col-lg-4 control-label">2级下线客户成交佣金 </label>
                        <div class="col-sm-11 col-md-6 col-lg-7"><input type="text" class="form-control" value="" placeholder="" ></div>
                    </div>

                    <div class="hr-line-dashed m-t-lg m-b-lg">
                        <span class="badge badge-posion label-primary">置业顾问</span>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-10 col-md-5 col-lg-4 control-label">确认到访成交佣金 </label>
                        <div class="col-sm-11 col-md-6 col-lg-7"><input type="text" class="form-control" value="" placeholder="" ></div>
                    </div>
                    <div class="form-group p-t-md">
                        <label class="col-sm-10 col-md-5 col-lg-4 control-label"></label>
                        <div class="col-sm-11 col-md-6 col-lg-7"><button data-loading-text="数据正在提交..." type="submit" autocomplete="off" id="myButton" class="btn btn-primary btn-rounded btn-block" > <i class="fa fa-check"></i> 填写完成，提交</button></div>
                    </div>
                </form>
            </div>
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
    <script src="${ctx}/static/js/plugins/iCheck/icheck.min.js"></script>
    <script src="${ctx}/static/js/plugins/validate/jquery.validate.min.js"></script>  <!---表单验证--->
    <script src="${ctx}/static/js/plugins/validate/validate-cn.js"></script> <!---validate 自定义方法--->
    <script src="${ctx}/static/js/plugins/datapicker/bootstrap-datepicker.js"></script>
    <script src="${ctx}/static/js/plugins/fileinput/fileinput.min.js" ></script><!---文件上传--->
    <script src="${ctx}/static/js/plugins/fileinput/fileinput_locale_zh.js" ></script><!---文件上传中文配置--->
    <script src="${ctx}/static/js/plugins/rslide/rslide.js"></script>
    <script>
        $(document).ready(function () {

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
                                $('#myButton').button('reset')
                                $("#rslide").rslide("hide")
                            },3000);
                            toastr.error('错误代码：登陆超时，请重新登陆！', '配置修改失败！');
                        }
                    }
                );
            }
            $('.i-checks').iCheck({  //
                checkboxClass: 'icheckbox_minimal-green',
                radioClass: 'iradio_minimal-green'
            });
            $('.input-group.date').datepicker({
                todayBtn: "linked",
                keyboardNavigation: false,
                forceParse: false,
                calendarWeeks: true,
                autoclose: true
            });
        });
        $("#add_rslide").on("show.bs.rslide",function(event){ //编辑框出现前执行
            alert(1)
                var button = $(event.relatedTarget)
                var id = button.data('id');
                var rslide = $(this);
                $('.rslide-body',this).slimScroll({height:"100%"});
                
                //rslide.find('.rslide-body input').val('测试测试测试测试')
        });
       function setState (ev) {
            var el = $(ev);
            //处理点击效果,先效果然后执行
            if (el.hasClass("btn-default")) {
               el.removeClass("btn-default").addClass("btn-primary");
            } else {
               el.removeClass("btn-primary").addClass("btn-default");
            }
            //设置成功
            toastr.success('用户 "香溢紫郡－案场经历" 状态已更改为无效！', '状态设置成功！');
            //AJAX操作，执行失败，按钮恢复默认
            //el[0].className=elclass;
            //toastr.error('服务器连接失败，请重试！','状态设置失败！');
        }

    </script>
</body>
</html>
