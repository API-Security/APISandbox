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
                                <li class="current-step"><div>产品维护</div></li>
                                <li ><a href="${ctx }/view/project/add7"><div>楼盘相册</div></a></li>
                                <li ><a href="${ctx }/view/project/add8"><div>销控管理</div></a></li>
                                <li ><a href="${ctx }/view/project/add9"><div>销控管理</div></a></li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="ibox float-e-margins">
                    <div class="ibox-heading">
                        <div class="ibox-title">
                            大城小爱 产品管理
                        </div>
                    </div>
                    <div class="ibox-content p-t-md">
                        <div class="m-b-sm">
                            <a href="#add_rslide" class="btn btn-primary" data-id="555555" data-toggle="rslide" role="button" data-title="新增产品"  >新增产品 <i class="fa fa-plus"></i></a>
                        </div>
                        <div class="table-responsive ">
                            <table class="table table-centerbody table-striped table-condensed text-nowrap border-top" id="editable-sample">
                                <thead>
                                <tr>
                                    <th>物业类型</th>
                                    <th>名称</th>
                                    <th>属性</th>
                                    <th>款项来源</th>
                                    <th class="text-right">操作</th>
                                </tr>
                                </thead>
                                <tbody>
                                <tr>
                                    <td >住宅</td>
                                    <td>万达物业</td>
                                    <td>导客</td>
                                    <td>混合</td>
                                    <td class="text-right text-nowrap">
                                        <div class="btn-group ">
                                            <a href="#edit_rslide" class="btn btn-white btn-sm" data-id="555555" data-toggle="rslide" data-title="阳光两房5555 信息编辑"><i class="fa fa-pencil" ></i>  编辑</a>
                                            <a href="view.html" class="btn btn-white btn-sm"><i class="fa fa-trash"></i>  删除</a>
                                        </div>
                                    </td>
                                </tr>
                                </tbody>
                            </table>
                        </div>
                        <div class="pages border-top">
                            <div class="row">
                                <div class="col-md-4"><div class="m-t-md">当前显示 1 到 10 条，共 57 条</div></div>
                                <div class="col-md-7 footable-visible">
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


    <div class="rslide fadeInRightBig" id="edit_rslide">
        <div class="rslide-heading">
            <div class="rslide-title">
                <button class="close" type="button" data-dismiss="rslide" aria-hidden="true">×</button>
                <h4>添加户型</h4>
            </div>
        </div>
        <div class="rslide-body">

            <div class="spiner-example" style="position: absolute; width: 100%; height: 100%; background:rgba(255,255,255,.7); z-index: 90;">
                <div class="sk-spinner sk-spinner-chasing-dots">
                    <div class="sk-dot1"></div>
                    <div class="sk-dot2"></div>
                </div>
            </div>

            <form class="form-horizontal" id="edit_form" >
                <div class="form-group">
                    <label class="col-sm-10 col-md-4 col-lg-3 control-label">物业类型<span class="text-danger">*</span></label>
                    <div class="col-sm-11 col-md-7 col-lg-8"><input placeholder="" name="huxing" value="" type="text" class="form-control" required="required"></div>
                </div>
                <div class="form-group">
                    <label class="col-sm-10 col-md-4 col-lg-3 control-label">产品属性 <span class="text-danger">*</span></label>
                    <div class="col-sm-11 col-md-7 col-lg-8"><input placeholder="" value="" type="text" class="form-control" required="required"></div>
                </div>
                <div class="form-group">
                    <label class="col-sm-10 col-md-4 col-lg-3 control-label">名称 <span class="text-danger">*</span></label>
                    <div class="col-sm-11 col-md-7 col-lg-8"><input placeholder="" value="" type="text" class="form-control" ></div>
                </div>
                <div class="form-group">
                    <label class="col-sm-10 col-md-4 col-lg-3 control-label">款项来源 <span class="text-danger">*</span></label>
                    <div class="col-sm-11 col-md-7 col-lg-8"><input type="text" placeholder="" value="" class="form-control" required="required"/></div>
                </div>
                <div class="form-group">
                    <label class="col-sm-10 col-md-4 col-lg-3 control-label">开发商补助方式 <span class="text-danger">*</span></label>
                    <div class="col-sm-11 col-md-7 col-lg-8"><input type="text" placeholder="" value="" class="form-control" required="required"/></div>
                </div>
                <div class="form-group">
                    <label class="col-sm-10 col-md-4 col-lg-3 control-label">开发商补助金额 <span class="text-danger">*</span></label>
                    <div class="col-sm-11 col-md-7 col-lg-8"><input type="text" placeholder="" value="" class="form-control" required="required"/></div>
                </div>
                <div class="form-group">
                    <label class="col-sm-10 col-md-4 col-lg-3 control-label">团购费补贴金额 <span class="text-danger">*</span></label>
                    <div class="col-sm-11 col-md-7 col-lg-8"><input type="text" placeholder="" value="" class="form-control" required="required"/></div>
                </div>
                <div class="form-group">
                    <label class="col-sm-10 col-md-4 col-lg-3 control-label"></label>
                    <div class="col-sm-11 col-md-7 col-lg-8"><button data-loading-text="数据正在提交..." type="submit" autocomplete="off" id="myButton" class="btn btn-primary btn-rounded btn-block" > <i class="fa fa-check"></i> 填写完成，提交</button></div>
                </div>
            </form>
        </div>
    </div>

    <div class="rslide fadeInRightBig" id="add_rslide">
            <div class="rslide-heading">
                <div class="rslide-title">
                    <button class="close" type="button" data-dismiss="rslide" aria-hidden="true"><i>×</i></button>
                    <h4>新增产品</h4>
                </div>
            </div>
            <div class="rslide-body">


                <form class="form-horizontal" id="add_form" >
                    <div class="form-group">
                        <label class="col-sm-10 col-md-4 col-lg-3 control-label">物业类型<span class="text-danger">*</span></label>
                        <div class="col-sm-11 col-md-7 col-lg-8">
                            <select name="business" class="form-control input-s-sm inline">
                                <option value="">请选择物业类型</option>
                                <option value="1">链家网</option>
                                <option value="2">房多多</option>
                            </select>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-10 col-md-4 col-lg-3 control-label">产品属性 <span class="text-danger">*</span></label>
                        <div class="col-sm-11 col-md-7 col-lg-8">
                            <label class="checkbox-inline p-l-n"><input type="radio" name="radio2" class="i-checks" value="1" > 团购项目 </label>
                            <label class="checkbox-inline"><input type="radio" name="radio2" class="i-checks" value="2" checked> 导客项目 </label>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-10 col-md-4 col-lg-3 control-label">名称 <span class="text-danger">*</span></label>
                        <div class="col-sm-11 col-md-7 col-lg-8"><input placeholder="" value="" type="text" class="form-control" ></div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-10 col-md-4 col-lg-3 control-label">款项来源 <span class="text-danger">*</span></label>
                        <div class="col-sm-11 col-md-7 col-lg-8">
                            <label class="checkbox-inline p-l-n"><input type="radio" name="radio1" class="i-checks" value="1" > 客户剧团购费 </label>
                            <label class="checkbox-inline"><input type="radio" name="radio1" class="i-checks" value="2" checked> 开发商补助 </label>
                            <label class="checkbox-inline"><input type="radio" name="radio1" class="i-checks" value="2" checked> 混合 </label>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-10 col-md-4 col-lg-3 control-label">开发商补助方式 <span class="text-danger">*</span></label>
                        <div class="col-sm-11 col-md-7 col-lg-8">
                            <label class="checkbox-inline p-l-n"><input type="radio" name="radio2" class="i-checks" value="1" > 按总价千分比 </label>
                            <label class="checkbox-inline"><input type="radio" name="radio2" class="i-checks" value="2" checked> 按固定金额 </label>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-10 col-md-4 col-lg-3 control-label">开发商补助金额 <span class="text-danger">*</span></label>
                        <div class="col-sm-11 col-md-7 col-lg-8"><input type="text" placeholder="" value="" class="form-control" required="required"/></div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-10 col-md-4 col-lg-3 control-label">团购费补贴金额 <span class="text-danger">*</span></label>
                        <div class="col-sm-11 col-md-7 col-lg-8"><input type="text" placeholder="" value="" class="form-control" required="required"/></div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-10 col-md-4 col-lg-3 control-label"></label>
                        <div class="col-sm-11 col-md-7 col-lg-8"><button data-loading-text="数据正在提交..." type="submit" autocomplete="off" id="myButton" class="btn btn-primary btn-rounded btn-block" > <i class="fa fa-check"></i> 填写完成，提交</button></div>
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

        });
        $("#edit_rslide").on("show.bs.rslide",function(event){ //编辑框出现前执行
                var button = $(event.relatedTarget)
                var title = button.data('title')
                var id = button.data('id')
                var rslide = $(this)
                rslide.find('.rslide-title h4').text(title);
                alert('编辑信息：'+ id)
                //rslide.find('.rslide-body input').val('测试测试测试测试')
        });
        $("#edit_rslide").on("hidden.bs.rslide",function(event){ //编辑框结束后执行
            var rslide = $(this)
            rslide.find('.rslide-body input').val('')
        })
    </script>
</body>
</html>
