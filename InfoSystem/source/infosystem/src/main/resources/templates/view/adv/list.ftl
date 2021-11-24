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
                    <h2>广告管理</h2>
                    <ol class="breadcrumb">
                        <li>
                            <a href="${ctx}/index">管理首页</a>
                        </li>
                        <li>
                            广告管理
                        </li>

                    </ol>
                </div>
            </div>

            <!-----内容区域---->
            <div class="wrapper wrapper-content animated fadeInRight">
                <div class="ibox-content ibox-content-t m-b-sm border-bottom">
                    <div class="row">
                        <div class="form-group col-md-6">
                            <a href="#add_rslide" class="btn btn-primary" data-id="555555" data-toggle="rslide" role="button" data-title="添加广告"  >添加广告 <i class="fa fa-plus"></i></a>
                        </div>
                    </div>
                </div>

                <div class="ibox float-e-margins">
                    <div class="ibox-heading">
                        <div class="ibox-title p-l-slg">
                            <label class="checkbox-inline p-l-n"><input id="checkAll" type="checkbox" class="i-checks" value=""> 全选 </label>
                            <button type="button" class="btn btn-primary btn-xs m-b-none m-l-md">批量删除</button>
                        </div>
                    </div>
                    <div class="ibox-content p-t-md">
                        <div class="table-responsive ">
                            <table class="table table-centerbody table-striped table-condensed text-nowrap" id="editable-sample">
                                <thead>
                                <tr>
                                    <th style="width: 50px">选择</th>
                                    <th>广告位</th>
                                    <th>广告位类型</th>
                                    <th>广告位链接/楼盘</th>
                                    <th>图片</th>
                                    <th>创建时间</th>
                                    <th class="text-right">操作</th>
                                </tr>
                                </thead>
                                <tbody>
                                <tr>
                                    <td><input name="subBox" type="checkbox" class="i-checks" value="1"  title=""></td>
                                    <td >首页广告通栏</td>
                                    <td>图片广告</td>
                                    <td><a href="#" title="">http://www.baidu.com</a></td>
                                    <td><img class="smallimg"  data-toggle="popover" data-trigger="hover" data-html="true" data-content="<img src='${ctx }/static/img/a2.jpg' height='200' >" src="${ctx }/static/img/a2.jpg"></td>
                                    <td>2016-01-12</td>
                                    <td class="text-right text-nowrap">
                                        <div class="btn-group ">
                                            <a href="#edit_rslide" class="btn btn-white btn-sm" data-id="5" data-toggle="rslide" data-title="首页广告通栏"><i class="fa fa-pencil" ></i>  编辑</a>
                                            <a href="#" class="btn btn-white btn-sm delete"><i class="fa fa-trash"></i>  删除</a>
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <td><input name="subBox" type="checkbox" class="i-checks" value="1"  title=""></td>
                                    <td >首页广告通栏</td>
                                    <td>图片广告</td>
                                    <td><a href="#" title="">http://www.baidu.com</a></td>
                                    <td><img class="smallimg"  data-toggle="popover" data-placement="left"  data-trigger="hover" data-html="true" data-content="<img src='${ctx }/static/img/a2.jpg' height='200' >" src="${ctx }/static/img/a2.jpg"></td>
                                    <td>2016-01-12</td>
                                    <td class="text-right text-nowrap">
                                        <div class="btn-group ">
                                            <a href="#edit_rslide" class="btn btn-white btn-sm" data-id="5" data-toggle="rslide" data-title="首页广告通栏"><i class="fa fa-pencil" ></i>  编辑</a>
                                            <a href="#" class="btn btn-white btn-sm delete"><i class="fa fa-trash"></i>  删除</a>
                                        </div>
                                    </td>
                                </tr>

                                </tbody>
                            </table>
                        </div>
                        <div class="pages border-top">
                            <div class="row">
                                <div class="col-md-4"><div class="m-t-md">当前显示 1 到 10 条，共 57 条</div></div>
                                <div class="col-md-8 footable-visible">
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
                <h4>编辑广告</h4>
            </div>
        </div>
        <div class="rslide-body">

            <form class="form-horizontal" id="edit_form" >
                <div class="form-group">
                    <label class="col-sm-4 col-md-3 col-lg-2 control-label">广告位<span class="text-danger">*</span></label>
                    <div class="col-sm-8 col-md-9 col-lg-10"><input placeholder="" name="huxing" value="" type="text" class="form-control" required="required"></div>
                </div>

                <div class="form-group">
                    <label class="col-sm-4 col-md-3 col-lg-2 control-label">类型 <span class="text-danger">*</span></label>
                    <div class="col-sm-8 col-md-9 col-lg-10"><input placeholder="" value="" type="text" class="form-control" required="required"></div>
                </div>

                <div class="form-group">
                    <label class="col-sm-4 col-md-3 col-lg-2 control-label">链接地址 <span class="text-danger">*</span></label>
                    <div class="col-sm-8 col-md-9 col-lg-10"><input placeholder="" value="" type="text" class="form-control" ></div>
                </div>
                <div class="form-group">
                    <label class="col-sm-4 col-md-3 col-lg-2 control-label">户型图 <span class="text-danger">*</span></label>
                    <div class="col-sm-8 col-md-9 col-lg-10">
                        <input type="file" class="file-loading" id="addFile2" name="logoFile" multiple >
                        <span class="help-block m-b-none">上传广告图片.</span>
                    </div>
                </div>

                <div class="form-group">
                    <label class="col-sm-4 col-md-3 col-lg-2 control-label"></label>
                    <div class="col-sm-8 col-md-9 col-lg-10"><button data-loading-text="数据正在提交..." type="submit" autocomplete="off" id="myButton1" class="btn btn-primary btn-rounded btn-block" > <i class="fa fa-check"></i> 填写完成，提交</button></div>
                </div>
            </form>
        </div>
    </div>

    <div class="rslide fadeInRightBig" id="add_rslide">
            <div class="rslide-heading">
                <div class="rslide-title">
                    <button class="close" type="button" data-dismiss="rslide" aria-hidden="true">×</button>
                    <h4>添加广告</h4>
                </div>
            </div>
            <div class="rslide-body">


                <form class="form-horizontal" id="add_form" >
                    <div class="form-group">
                        <label class="col-sm-4 col-md-3 col-lg-2 control-label">广告位<span class="text-danger">*</span></label>
                        <div class="col-sm-8 col-md-9 col-lg-10">
                            <select name="advertisingIndex" class="form-control input-s-sm inline">
                                <option value="">请选择广告位</option>
                                <option value="1">链家网</option>
                                <option value="2">房多多</option>
                            </select>
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="col-sm-4 col-md-3 col-lg-2 control-label">类型 <span class="text-danger">*</span></label>
                        <div class="col-sm-8 col-md-9 col-lg-10">
                            <select name="type" class="form-control input-s-sm inline">
                                <option value="">请选择广告类型</option>
                                <option value="1">网址链接</option>
                                <option value="2">楼盘ID</option>
                            </select>
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="col-sm-4 col-md-3 col-lg-2 control-label">链接地址 <span class="text-danger">*</span></label>
                        <div class="col-sm-8 col-md-9 col-lg-10"><input placeholder="" value="" type="text" class="form-control" ></div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-4 col-md-3 col-lg-2 control-label">广告图片  <span class="text-danger">*</span></label>
                        <div class="col-sm-8 col-md-9 col-lg-10">
                            <input type="file" class="file-loading" id="addFile" name="logoFile" multiple >
                            <span class="help-block m-b-none">上传广告图片.</span>
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="col-sm-4 col-md-3 col-lg-2 control-label"></label>
                        <div class="col-sm-8 col-md-9 col-lg-10"><button data-loading-text="数据正在提交..." type="submit" autocomplete="off" id="myButton" class="btn btn-primary btn-rounded btn-block" > <i class="fa fa-check"></i> 填写完成，提交</button></div>
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
    <script src="${ctx}/static/js/plugins/validate/jquery.validate.min.js"></script>  <!---表单验证--->
    <script src="${ctx}/static/js/plugins/validate/validate-cn.js"></script> <!---validate 自定义方法--->
    <script src="${ctx}/static/js/plugins/fileinput/fileinput.min.js" ></script><!---文件上传--->
    <script src="${ctx}/static/js/plugins/fileinput/fileinput_locale_zh.js" ></script><!---文件上传中文配置--->
    <script src="${ctx}/static/js/plugins/loading/jquery.loading.js"></script>
    <script src="${ctx}/static/js/plugins/rslide/rslide.js"></script>
    <script src="${ctx}/static/js/plugins/iCheck/icheck.min.js"></script>

    <script>
    	var _ctx = '${ctx}';
        $(document).ready(function () {
            $('.i-checks').iCheck({  //
                checkboxClass: 'icheckbox_minimal-green',
                radioClass: 'iradio_minimal-green'
            });
            $("#checkAll").on("ifClicked",function(){
                    $(".i-checks").iCheck('check');
                }).on("ifUnchecked",function(){
                    $(".i-checks").iCheck('uncheck');
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
                                $('#myButton').button('reset')
                                $("#rslide").rslide("hide")                            },3000);
                            toastr.error('错误代码：登陆超时，请重新登陆！', '配置修改失败！');
                        }
                    }
                );
            }
        });

        $("#edit_rslide").on("show.bs.rslide",function(event){ //编辑框出现前执行
                var button = $(event.relatedTarget)
                var title = button.data('title')
                var id = button.data('id')
                var rslide = $(this)
                $('.rslide-title h4',this).text(title);
                $('.rslide-body',this).loading('show');
                alert('编辑信息：'+ id)
                //rslide.find('.rslide-body input').val('测试测试测试测试')
        });

        //删除数据
        $(document).on('click','#editable-sample a.delete', function () {
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

        //图片上传
        $("#addFile").fileinput({
            uploadUrl: '#',    //服务端上传地址
            showCaption:false,
            dropZoneEnabled:true,  //是否启动拖拽
            uploadAsync: true,  //false同步批量上传,true异步上传
            autoReplace: true,  // 替换上一次浏览的图像，单张上传
            //validateInitialCount: true, //是否包括已有的文件数，新加文件个数和现有文件相加的判断
            //overwriteInitial:true,  //是否要覆盖已有的内容。
            minFileCount: 0,  //最小文件数，为0可选
            maxFileCount: 1,    //最大文件数，为0无限
            maxFileSize: 1000,   //文件大小限制
            previewFileType: "image",   //文件类型
            allowedFileExtensions: ["jpg", "gif", "png", "jpeg"],//文件允许后缀名称
            msgFilesTooLess: '必须上传 <b>{n}</b>个{files}，您可以选择新的文件进行替换. ',
            initialPreview: [
                '<img src="'+_ctx+'/static/img/a1.jpg" class="file-preview-image" alt="The Moon" title="The Moon">'
            ],//编辑页面初始化数据
            initialPreviewConfig: [
                {caption: "图片一", width: "120px", url: "/111", key: 1} //URL 为从服务端删除图片的地址

            ]//通过此方法可以删除服务端上传的图片

            /*
             uploadExtraData: function(previewId, index) {
             return{
             userid: "10000",
             username: "zifan",
             key: index
             }
             },*/ //扩展AJAX传送数据。
        })
    </script>
</body>
</html>