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
                <div class="col-sm-10">
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
                    <div class="col-md-11">
                        <div class="stepy-tab">
                            <ul id="default-titles" class="stepy-titles clearfix">
                                <li><a href="${ctx }/view/project/add"><div>基础信息</div></a></li>
                                <li><a href="${ctx }/view/project/add2"><div>户型管理</div></a></li>
                                <li><a href="${ctx }/view/project/add3"><div>楼盘相册</div></a></li>
                                <li class="current-step"><div>销控管理</div></li>
                                <li ><a href="${ctx }/view/project/add5"><div>基础信息</div></a></li>
                                <li ><a href="${ctx }/view/project/add6"><div>户型管理</div></a></li>
                                <li ><a href="${ctx }/view/project/add7"><div>楼盘相册</div></a></li>
                                <li ><a href="${ctx }/view/project/add8"><div>销控管理</div></a></li>
                                <li ><a href="${ctx }/view/project/add9"><div>销控管理</div></a></li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="ibox">
                    <div class="ibox-heading">
                        <div class="ibox-title">
                            大城小爱 佣金维护
                        </div>
                    </div>
                    <div class="ibox-content p-t-md">
                            <div class="row">
                                <div class="col-md-11 col-lg-4">
                                    <div class="m-b-sm">
                                        <div class="btn-group">
                                            <a href="#add_rslide" class="btn btn-primary" data-id="555555" data-toggle="rslide" role="button" data-title="新增房号"><i class="fa fa-plus"></i>  新增房号</a>
                                            <a href="#import_rslide" class="btn btn-white"  data-toggle="rslide" role="button" data-title="批量导入房号"><i class="fa fa-arrow-circle-o-right" ></i> 批量导入房号 </a>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-11 col-lg-8">
                                    <form class="form-inline-auto">
                                        <div class="row">
                                        <div class="form-group col-md-3">
                                            <input value="" placeholder="楼号" class="form-control input-sm">
                                        </div>
                                        <div class="form-group col-md-3">
                                            <input value="" placeholder="单元号" class="form-control input-sm">
                                        </div>
                                        <div class="form-group col-md-3">
                                            <input value="" placeholder="房号" class="form-control input-sm">
                                        </div>
                                        <div class="form-group col-md-3">
                                            <div class="input-group">
                                                <select class="input-sm form-control input-s-sm">
                                                    <option value="0">销控</option>
                                                    <option value="1">未售</option>
                                                    <option value="2">已售</option>
                                                </select>
                                                <span class="input-group-btn"><button class="btn btn-primary btn-sm m-b-none">搜索</button></span>
                                            </div>
                                        </div>
                                        </div>
                                    </form>
                                </div>
                            </div>
                        <div class="table-responsive ">
                            <table class="table table-centerbody table-striped table-condensed text-nowrap border-top" id="editable-sample">
                                <thead>
                                    <tr>
                                        <th>楼号 </th>
                                        <th>单元号 </th>
                                        <th>房号 </th>
                                        <th>物业类型 </th>
                                        <th>面积 </th>
                                        <th>单价 </th>
                                        <th>总价 </th>
                                        <th>销控 </th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td >10</td>
                                        <td>1</td>
                                        <td>506</td>
                                        <td>住宅</td>
                                        <td>面积</td>
                                        <td>5600.00</td>
                                        <td>560000.00</td>
                                        <td><a class="btn btn-primary btn-circle btn-sm" data-userid="1" onclick="setState(this)"><i class="fa fa-check"></i></a> 在售</td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                        <div class="pages border-top">
                            <div class="row">
                                <div class="col-md-4"><div class="m-t-md">当前显示 1 到 10 条，共 57 条</div></div>
                                <div class="col-md-11 footable-visible">
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
                    <h4>新增房号</h4>
                </div>
            </div>
            <div class="rslide-body">
                <form class="form-horizontal" id="add_form" >
                    <div class="form-group">
                        <label class="col-sm-4 col-md-3 control-label">楼盘 </label>
                        <div class="col-sm-7 col-md-8">
                           <p class="form-control-static"><b>测试楼盘</b></p>
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="col-sm-4 col-md-3 control-label"><span class="text-danger">*</span> 楼号 </label>
                        <div class="col-sm-7 col-md-8"><input type="text" class="form-control" value="" placeholder="" required></div>
                    </div>

                    <div class="form-group">
                        <label class="col-sm-4 col-md-3 control-label"><span class="text-danger">*</span> 单元号 </label>
                        <div class="col-sm-7 col-md-8"><input type="text" class="form-control" value="" placeholder="" required></div>
                    </div>

                    <div class="form-group">
                        <label class="col-sm-4 col-md-3 control-label"><span class="text-danger">*</span> 房号 </label>
                        <div class="col-sm-7 col-md-8"><input type="text" class="form-control" value="" placeholder="" required></div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-4 col-md-3 control-label"><span class="text-danger">*</span> 物类类型 </label>
                        <div class="col-sm-7 col-md-8">
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
                        <label class="col-sm-4 col-md-3 control-label"><span class="text-danger">*</span> 面积 </label>
                        <div class="col-sm-7 col-md-8">
                            <div class="input-group">
                                <input type="text" class="form-control" value="" placeholder="" required>
                                <span class="input-group-addon"> M&sup2; </span>
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-4 col-md-3 control-label"><span class="text-danger">*</span> 单价 </label>
                        <div class="col-sm-7 col-md-8">
                            <div class="input-group">
                                <input type="text" class="form-control" value="" placeholder="" required>
                                <span class="input-group-addon"> 元 </span>
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-4 col-md-3 control-label"><span class="text-danger">*</span> 总价 </label>
                        <div class="col-sm-7 col-md-8">
                            <div class="input-group">
                                <input type="text" class="form-control" value="" placeholder="" required>
                                <span class="input-group-addon"> 元 </span>
                            </div>
                        </div>
                    </div>

                    <div class="form-group p-t-md">
                        <label class="col-sm-4 col-md-3 control-label"></label>
                        <div class="col-sm-7 col-md-8"><button data-loading-text="数据正在提交..." type="submit" autocomplete="off" id="myButton" class="btn btn-primary btn-rounded btn-block" > <i class="fa fa-check"></i> 填写完成，提交</button></div>
                    </div>
                </form>
            </div>
    </div>


    <div class="rslide fadeInRightBig" id="import_rslide">
        <div class="rslide-heading">
            <div class="rslide-title">
                <button class="close" type="button" data-dismiss="rslide" aria-hidden="true">×</button>
                <h4>新增房号</h4>
            </div>
        </div>
        <div class="rslide-body">


                        <input type="file" class="file-loading addFile" id="addFile" name="logoFile" multiple >
                        <span class="help-block m-b-none">为了清晰美观请上传 1111111111111111长：200px  宽：200px 的正方形公司标志.</span>

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
        });

        $("#add_rslide").on("show.bs.rslide",function(event){ //编辑框出现前执行
                $("#import_rslide").rslide("hide");
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
        });

        $("#import_rslide").on("show.bs.rslide",function(event){ //编辑框出现前执行
            $("#add_rslide").rslide("hide");
            var button = $(event.relatedTarget);
            var id = button.data('id');
            var rslide = $(this);
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


        $("#addFile").fileinput({
            uploadUrl: '#',    //服务端上传地址
            showCaption:false,     //是否显示按钮前的INPUT
            dropZoneEnabled:true,  //是否启动拖拽
            uploadAsync: true,  //true异步上传
            autoReplace: true,  // 替换预览文件maxFileCount达到极限，
            validateInitialCount: true, //是否包括已有的文件数，新加文件个数和现有文件相加的判断
            overwriteInitial:true,  //是否要覆盖已有的缩略图列表。
            minFileCount: 0,  //最小文件数，为0可选
            maxFileCount: 1,    //最大文件数，为0无限
            maxFileSize: 1000,   //文件大小限制
            allowedFileExtensions: ["docx", "doc", "xls", "xlsx"],//文件允许后缀名称
            browseClass: "btn btn-primary", //自定义浏览按钮样式
            minImageWidth: 200,
            minImageHeight: 200,
            maxImageWidth: 1200,
            maxImageHeight: 1200,
            msgFilesTooLess: '必须上传 <b>{n}</b>个{files}，您可以选择新的文件进行替换. ',
            initialPreview: [],//编辑页面初始化数据
            initialPreviewConfig: [],//通过此方法可以删除服务端上传的图片

            uploadExtraData: function(previewId, index) {
                if (previewId!=undefined && index!=undefined){
                    alert(previewId+","+index)
                }
                return{
                    userid: "10000",
                    username: "zifan",
                    key: index,
                    //classid:classid
                }
            } //扩展AJAX传送数据。
        })

    </script>
</body>
</html>
