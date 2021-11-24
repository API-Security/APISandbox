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
                                <li><a href="${ctx }/view/project/add7"><div>拥金维护</div></a></li>
                                <li><a href="${ctx }/view/project/add8"><div>楼盘动态</div></a></li>
                                <li class="current-step"><div>优惠活动</div></li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="ibox float-e-margins">
                    <div class="ibox-heading">
                        <div class="ibox-title">
                            大城小爱 优惠活动
                        </div>
                    </div>
                    <div class="ibox-content p-t-md">
                        <div class="m-b-sm">
                            <a href="#add_rslide" class="btn btn-primary" data-id="555555" data-toggle="rslide" role="button" data-title="新增佣金规则">新增优惠活动  <i class="fa fa-plus"></i></a>
                        </div>
                        <div class="table-responsive ">
                            <table class="table table-centerbody table-striped table-condensed text-nowrap border-top">
                                <thead>
                                    <tr>
                                        <th>开始时间 </th>
                                        <th>结束时间 </th>
                                        <th>付款方式 </th>
                                        <th>生效 </th>
                                        <th class="text-right">操作</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>2015-10-14</td>
                                        <td>2015-10-15</td>
                                        <td>一次性全款</td>
                                        <td><a class="btn btn-primary btn-circle btn-sm" data-userid="1" onclick="setState(this)"><i class="fa fa-check"></i></a></td>
                                        <td class="text-right text-nowrap">
                                            <div class="btn-group ">
                                                <a href="#add_rslide" class="btn btn-white btn-sm" data-id="5" data-toggle="rslide" data-title="编辑信息"><i class="fa fa-pencil" ></i>  编辑</a>
                                            </div>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                        <div class="pages border-top">
                            <div class="row">
                                <div class="col-md-4"><div class="m-t-md">当前显示 1 到 10 条，共 57 条</div></div>
                                <div class="col-sm-11 col-md-8 footable-visible">
                                    <ul class="pagination pull-right">
                                        <li class="footable-page-arrow disabled"><a data-page="first" href="#first">«</a></li>
                                        <li class="footable-page-arrow disabled"><a data-page="prev" href="#prev">‹</a></li>
                                        <li class="footable-page active"><a data-page="0" href="#">1</a></li>
                                        <li class="footable-page"><a data-page="1" href="#">2</a></li>
                                        <li class="footable-page"><a data-page="1" href="#">3</a></li>
                                        <li class="footable-page"><a data-page="1" href="#">4</a></li>
                                        <li class="footable-page"><a data-page="1" href="#">5</a></li>
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
                        <label class="col-sm-10 col-md-3 control-label">开始时间 </label>
                        <div class="col-sm-11 col-md-8">
                            <div class="input-group date">
                                <span class="input-group-addon"><i class="fa fa-calendar"></i></span>
                                <input type="text" value="" placeholder="请选择活动开始时间"  class="form-control">
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-10 col-md-3 control-label">结束时间 </label>
                        <div class="col-sm-11 col-md-8">
                            <div class="input-group date">
                                <span class="input-group-addon"><i class="fa fa-calendar"></i></span>
                                <input type="text" value="" placeholder="请选择活动结束时间"  class="form-control">
                            </div>
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="col-sm-10 col-md-3 control-label"><span class="text-danger">*</span> 付款方式 </label>
                        <div class="col-sm-11 col-md-8">
                            <label class="checkbox-inline p-l-n"><input type="radio" class="i-checks" value="option1" name="optionsRadios" checked> 一次性全款 </label>
                            <label class="checkbox-inline"><input type="radio" class="i-checks" value="option1" name="optionsRadios"> 分期付款 </label>
                            <label class="checkbox-inline"><input type="radio" class="i-checks" value="option1" name="optionsRadios"> 按揭付款 </label>
                        </div>
                    </div>

                    <div class="hr-line-dashed m-t-lg m-b-lg">
                        <span class="badge badge-posion label-primary" >优惠活动明细</span>
                    </div>
                    <div class="table-responsive ">
                        <table class="table table-centerbody table-striped table-condensed text-nowrap border-top" id="editable-sample">
                            <thead>
                            <tr>
                                <th>名称 </th>
                                <th>优惠方式 </th>
                                <th>优惠金额 </th>
                                <th>优先级<small>（越小越优先）</small> </th>
                                <th class="text-right">操作</th>
                            </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td><input type="text" class="form-control" placeholder="" value=""></td>
                                    <td><input type="text" class="form-control" placeholder="" value=""></td>
                                    <td><input type="text" class="form-control" placeholder="" value=""></td>
                                    <td><input type="text" class="form-control" placeholder="" value=""></td>
                                    <td class="text-right text-nowrap">
                                        <div class="btn-group"><a href="#add_rslide" class="btn btn-danger btn-rounded delete btn-xs"><i class="fa fa-times" ></i> 删除</a></div>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                        <div class="btn-group p-l-sm m-t-sm">
                            <button id="editable-sample_new" type="button" class="btn btn-primary btn-xs">
                                添加明细 <i class="fa fa-plus"></i>
                            </button>
                        </div>
                    </div>
                    <div class="form-group p-t-slg">
                        <div class="col-md-12"><button data-loading-text="数据正在提交..." type="submit" autocomplete="off" id="myButton" class="btn btn-primary btn-rounded btn-block" > <i class="fa fa-check"></i> 填写完成，提交</button></div>
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
    <script src="${ctx}/static/js/plugins/sweetalert/sweetalert.min.js" async></script><!---对话框 alert--->
    <script src="${ctx}/static/js/plugins/iCheck/icheck.min.js"></script>
    <script src="${ctx}/static/js/plugins/validate/jquery.validate.min.js"></script>  <!---表单验证--->
    <script src="${ctx}/static/js/plugins/validate/validate-cn.js"></script> <!---validate 自定义方法--->
    <script src="${ctx}/static/js/plugins/datapicker/bootstrap-datepicker.js"></script>
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
                var button = $(event.relatedTarget)
                var id = button.data('id');
                var rslide = $(this);
                $('.rslide-body',this).slimScroll({
                    height:"100%",
                    railVisible: true,
                    color:"#65cea7",
                    opacity:.8,
                    size: '5px',
                    borderRadius: '0', //滚动条圆角
                    railBorderRadius: '0',//轨道圆角
                    distance:0,
                    allowPageScroll: true,
                    alwaysVisible: false
                });
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
    <script>
        EditableTable("#editable-sample");

        function EditableTable (element) {
                var oTable =$(element);
                function editRow(c, nRow) {
                    var jqTds = $('>td', nRow);
                    jqTds[0].innerHTML = '<input type="text" name="name1'+c+'" class="form-control small" value="'+c+'">';
                    jqTds[1].innerHTML = '<input type="text" name="name2'+c+'" class="form-control small" value="'+c+'">';
                    jqTds[2].innerHTML = '<input type="text" name="name3'+c+'" class="form-control small" value="'+c+'">';
                    jqTds[3].innerHTML = '<input type="text" name="name4'+c+'" class="form-control small" value="'+c+'">';
                    jqTds[4].innerHTML = '<div class="btn-group"><a href="#" class="btn btn-danger btn-rounded delete btn-xs"><i class="fa fa-times" ></i> 删除</a>';

                }

                $(''+element+'_new').click(function (e) {
                    var Rownum = $('tbody tr',oTable).length;
                    var Row = $('tr:last',oTable);
                    var rowClone=Row.clone(true);
                    editRow(Rownum,rowClone)
                    rowClone.appendTo(oTable)
                });

               $(document).on('click',''+element+' a.delete', function (e) {
                    e.preventDefault();
                   var nRow = $(this).parents('tr');
                   var Rownum = $('tbody tr',oTable).length;
                   if (Rownum==1){
                       swal("删除失败!", "不能删除！至少需要保留一条信息！","error");
                   }else{

                       swal({
                           title: "您确定要删除吗?",
                           text: "删除后将不可恢复!",
                           type: "warning",
                           showCancelButton: true,
                           confirmButtonColor: "#1ab394",
                           confirmButtonText: "确定删除！",
                           closeOnConfirm: false
                       }, function () {
                           nRow.remove();
                           swal("删除成功!", "用户 “香溢紫郡－案场经历” 删除成功！","success");
                           //swal("删除失败!", "用户userid="+userid+" “香溢紫郡－案场经历” 删除失败！","error");
                       });
                   }
                });
            }

    </script>
</body>
</html>
