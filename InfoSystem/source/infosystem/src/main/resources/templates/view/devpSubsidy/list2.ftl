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
                <div class="col-sm-4">
                    <h2>开发商补贴确认 </h2>
                    <ol class="breadcrumb">
                        <li>
                            <a href="${ctx }/index">管理首页</a>
                        </li>
                        <li class="active">
                            开发商补贴确认
                        </li>
                    </ol>
                </div>
            </div>

            <!-----内容区域---->
            <div class="wrapper wrapper-content animated fadeInRight">
                <div class="ibox-content m-b-sm border-bottom ibox-content-t">
                    <div class="row">
                        <div class="col-sm-8 col-md-8 col-lg-6 hidden-xs">
                            <div class="row">
                                <div class="form-group col-md-6 hidden-sm">
                                    <input value="" placeholder="项目名称" class="form-control input-sm">
                                </div>
                                <div class="form-group col-md-6 col-sm-8">
                                    <div class="input-group ">
                                        <select class="input-sm form-control input-s-sm ">
                                            <option value="0">状态</option>
                                            <option value="1">未售</option>
                                            <option value="2">已售</option>
                                        </select>
                                        <span class="input-group-btn"><button class="btn btn-primary btn-sm m-b-none"><i class="fa fa-search"></i> 搜索</button></span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="ibox float-e-margins">
                    <div class="ibox-content p-t-md">
                        <div class="table-responsive ">
                            <table class="table table-striped table-condensed text-nowrap table-centerbody" id="editable-sample">
                                <thead>
                                    <tr>
                                        <th>项目名称</th>
                                        <th>补帖套数</th>
                                        <th>补贴总金额</th>
                                        <th>实际到账</th>
                                        <th>发票</th>
                                        <th>状态</th>
                                        <th>添加时间</th>
                                        <th class="text-right">操作</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>测试－空中花园</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td><img class="smallimg"  data-toggle="popover" data-trigger="hover" data-placement="left"   data-html="true" data-content="<img src='${ctx}/static/img/p_big2.jpg' style='max-width:400px' >" src="${ctx}/static/img/a2.jpg"> </td>
                                        <td><span class="label label-white">等待财务确认</span></td>
                                        <td>2015-11-19</td>
                                        <td class="text-right">
                                            <div class="btn-group ">
                                                <a href="#myModa-reset" data-toggle="modal" data-id="1" class="btn btn-white btn-sm through"><i class="fa fa-jpy"></i>  进账指示</a>
                                                <a href="#myModa-msg" data-toggle="modal" data-id="1" class="btn btn-white btn-sm through"><i class="fa fa-reply-all"></i>  反馈</a>
                                                <a href="#add_rslide" data-id="555555" data-toggle="rslide" role="button" class="btn btn-white btn-sm through"><i class="fa fa-pencil"></i>  编辑</a>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>测试－空中花园</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td><img class="smallimg"  data-toggle="popover" data-trigger="hover" data-placement="left"   data-html="true" data-content="<img src='${ctx}/static/img/p_big2.jpg' style='max-width:400px' >" src="${ctx}/static/img/a2.jpg"> </td>
                                        <td><span class="label label-success">已确认</span></td>
                                        <td>2015-11-19</td>
                                        <td class="text-right">
                                            <div class="btn-group ">
                                                <a href="#myModa-reset" data-toggle="modal" data-id="1" class="btn btn-white btn-sm through"><i class="fa fa-jpy"></i>  进账指示</a>
                                                <a href="#myModa-msg" data-toggle="modal" data-id="1" class="btn btn-white btn-sm through"><i class="fa fa-reply-all"></i>  反馈</a>
                                                <a href="#add_rslide" data-id="555555" data-toggle="rslide" role="button" class="btn btn-white btn-sm through"><i class="fa fa-pencil"></i>  编辑</a>
                                            </div>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                        <div class="alert alert-warning m-t-sm" role="alert">暂无信息</div>
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
                    <button class="close" type="button" data-dismiss="rslide" aria-hidden="true">×</button>
                    <h4>新增补贴</h4>
                </div>
            </div>
            <div class="rslide-body">
                <form class="form-horizontal" id="add_form" >
                    <div class="form-group">
                        <label class="col-sm-4 col-md-3 col-lg-2 control-label">楼盘<span class="text-danger">*</span></label>
                        <div class="col-sm-8 col-md-9 col-lg-10"><input placeholder="" name="huxing" value="" type="text" class="form-control" required="required"></div>
                    </div>

                    <div class="form-group">
                        <label class="col-sm-4 col-md-3 col-lg-2 control-label">补贴套数 <span class="text-danger">*</span></label>
                        <div class="col-sm-8 col-md-9 col-lg-10"><input placeholder="" value="" type="text" class="form-control" required="required"></div>
                    </div>

                    <div class="form-group">
                        <label class="col-sm-4 col-md-3 col-lg-2 control-label">补贴总金额 <span class="text-danger">*</span></label>
                        <div class="col-sm-8 col-md-9 col-lg-10"><input placeholder="" value="" type="text" class="form-control" required="required"></div>
                    </div>

                    <div class="form-group">
                        <label class="col-sm-4 col-md-3 col-lg-2 control-label" for="logoFile">发票图片  <span class="text-danger">*</span></label>
                        <div class="col-sm-8 col-md-9 col-lg-10">
                            <input type="file" class="file-loading" id="addFile" name="logoFile" multiple >
                            <span class="help-block m-b-none">为了清晰可辨请上传 宽：1200px 以上的发票图片.</span>
                        </div>
                    </div>


                    <div class="form-group">
                        <label class="col-sm-4 col-md-3 col-lg-2 control-label"></label>
                        <div class="col-sm-8 col-md-9 col-lg-10"><button data-loading-text="数据正在提交..." type="submit" autocomplete="off" id="myButton" class="btn btn-primary btn-rounded btn-block" > <i class="fa fa-check"></i> 填写完成，提交</button></div>
                    </div>
                </form>
            </div>
    </div>



    <!----进账指示---->
    <div class="modal inmodal fade" id="myModa-reset" tabindex="-1" role="dialog" aria-hidden="true">
        <div class="modal-dialog modal-sm">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">×</span><span class="sr-only">Close</span></button>
                    <h4 class="modal-title">进账指示</h4>
                </div>
                <div class="modal-body">
                    <form name="resetform" id="resetform">
                        <div class="form-group"><label class="control-label" for="order_id">补贴总金额</label><input type="text" id="restcode" name="restcode" maxlength="6" placeholder="请输入验证码" class="form-control" value=""></div>
                        <div class="form-group"><label class="control-label" for="order_id">已到账金额</label><input type="text" name="restcode" maxlength="6" placeholder="请输入验证码" class="form-control" value=""></div>
                        <label class="control-label" for="order_id">补贴总金额</label><input type="text"  name="restcode" maxlength="6" placeholder="请输入验证码" class="form-control" value="">
                        <div class="form-group m-t-sm" >
                            <button class="btn btn-md btn-primary " type="submit"><strong>确认提交</strong></button>
                            <button type="button" class="btn btn-white m-l-sm" data-dismiss="modal">取消</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
    <!----重置结束---->

    <!----反馈---->
    <div class="modal inmodal fade" id="myModa-msg" tabindex="-1" role="dialog" aria-hidden="true">
        <div class="modal-dialog modal-sm">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">×</span><span class="sr-only">Close</span></button>
                    <h4 class="modal-title">提交反馈</h4>
                </div>
                <div class="modal-body">
                    <form name="msgform" id="msgform">
                        <div class="form-group">
                            <label class="control-label" for="order_id">反馈内容</label>
                            <textarea name="restcode" placeholder="请输入反馈信息" class="form-control" rows="5" ></textarea>
                        </div>
                        <div class="form-group m-t-sm" >
                            <button class="btn btn-md btn-primary " type="submit"><strong>确认提交</strong></button>
                            <button type="button" class="btn btn-white m-l-sm" data-dismiss="modal">取消</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
    <!----反馈结束---->




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
                            error: function (error) {
                                setTimeout(function () {
                                    $('#myButton').button('reset')
                                    $("#rslide").rslide("hide")
                                }, 3000);
                                toastr.error('错误代码：登陆超时，请重新登陆！', '配置修改失败！');
                            }
                        }
                );
            }

            //进账指示
            $("#resetform").validate({
                rules: {
                    restcode: {
                        required: true,
                        number:true
                        //remote: "异步验证"
                    }
                },
                messages: {
                    restcode: {
                        required: "请输入补贴金额",
                        number: "请输入0-9数字"
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
                                toastr.success('', '提交成功！');
                                $("#myModa-reset").modal("hide");
                            },
                            error: function (error) {
                                $("#myModa-reset").modal("hide");
                                toastr.error('', '提交失败！');
                            }
                        }
                );
            }

            //进账指示在模态框出现前加载
            $("#myModa-reset").on('show.bs.modal', function (event) {
                var button = $(event.relatedTarget);
                var id = button.data("id");
                alert("id = " + id);
            });

            //反馈模态框出现前加载
            $("#myModa-msg").on('show.bs.modal', function (event) {
                var button = $(event.relatedTarget);
                var id = button.data("id");
                alert("id = " + id);
            });


            $("#edit_rslide").on("show.bs.rslide", function (event) { //编辑框出现前执行
                var button = $(event.relatedTarget)
                var title = button.data('title')
                var id = button.data('id')
                var rslide = $(this)
                rslide.find('.rslide-title h4').text(title);
                alert('编辑信息：' + id)
                //rslide.find('.rslide-body input').val('测试测试测试测试')
            });

            $("#addFile").fileinput({
                uploadUrl: '#',    //服务端上传地址
                showCaption:false,     //是否显示按钮前的INPUT
                dropZoneEnabled:true,  //是否启动拖拽
                uploadAsync: true,  //true异步上传
                //autoReplace: false,  // 替换预览文件maxFileCount达到极限，
                validateInitialCount: true, //是否包括已有的文件数，新加文件个数和现有文件相加的判断
                overwriteInitial:false,  //是否要覆盖已有的缩略图列表。
                minFileCount: 0,  //最小文件数，为0可选
                maxFileCount: 2,    //最大文件数，为0无限
                maxFileSize: 2048,   //文件大小限制
                previewFileType: "image",   //文件类型
                allowedFileExtensions: ["jpg", "gif", "png", "jpeg"],//文件允许后缀名称
                minImageWidth: 1000,
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
                        key: index
                        //classid:classid
                    }
                } //扩展AJAX传送数据。
            })
        })

        //$("#edit_rslide").on("hidden.bs.rslide",function(event){ //编辑框结束后执行
         //   var rslide = $(this)
         //   rslide.find('.rslide-body input').val('')
       // })

    </script>
</body>
</html>