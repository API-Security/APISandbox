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
    <link href="${ctx}/static/css/plugins/chosen/chosen.css" rel="stylesheet">
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
                <h2>开通楼盘</h2>
                <ol class="breadcrumb">
                    <li>
                        <a href="${ctx }/index">管理首页</a>
                    </li>
                    <li>
                        楼盘管理
                    </li>
                    <li class="active">
                        开通楼盘
                    </li>
                </ol>
            </div>
        </div>

        <!-----内容区域---->
        <div class="wrapper wrapper-content animated fadeInRight">
            <div class="row">
                <div class="col-md-12">
                    <div class="ibox">

                        <div class="ibox-content p-t-slg">
                            <form class="form-horizontal" id="add_form" >

                                <div class="form-group">
                                    <label class="col-md-2 control-label">城市 <span class="text-danger">*</span></label>
                                    <div class="col-md-10">
                                        <select  name="city" data-placeholder="-- 请选择 --"  class="chosen-select" tabindex="2" required>
                                            <option value=""></option>
                                            <option value="1">楼盘一</option>
                                            <option value="2">United Kingdom</option>
                                            <option value="3">Afghanistan</option>
                                            <option value="4">Aland Islands</option>
                                            <option value="5">Albania</option>
                                            <option value="6">Algeria</option>
                                            <option value="7">American Samoa</option>
                                            <option value="8">Andorra</option>
                                            <option value="9">Angola</option>
                                            <option value="8">Andorra</option>
                                            <option value="9">Angola</option>
                                        </select>
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label class="col-md-2 control-label">楼盘名称 <span class="text-danger">*</span></label>
                                    <div class="col-md-10"><input type="text" class="form-control" value="" placeholder="" required></div>
                                </div>

                                <div class="form-group">
                                    <label class="col-md-2 control-label">证明文件 <span class="text-danger">*</span></label>
                                    <div class="col-md-10">
                                        <input type="file" class="file-loading addFile" id="addFile" name="logoFile" multiple>
                                        <span class="help-block m-b-none">为了合同内容清晰可辩，上传图片宽度至少在 1000px 以上.</span>
                                    </div>
                                </div>
                                <div class="hr-line-dashed"></div>
                                <div class="form-group">
                                    <label class="col-md-2 control-label">登陆账号 <span class="text-danger">*</span></label>
                                    <div class="col-md-10">
                                        <input type="text" class="form-control" value="" placeholder="" required>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-md-2 control-label">真实姓名 <span class="text-danger">*</span></label>
                                    <div class="col-md-10">
                                        <input type="text" class="form-control" value="" placeholder="" required>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-md-2 control-label">手机号码 <span class="text-danger">*</span></label>
                                    <div class="col-md-10">
                                        <input type="text" class="form-control" value="" placeholder="" required>
                                    </div>
                                </div>

                                <div class="form-group">
                                    <div class="col-sm-4 col-sm-offset-2">
                                        <button class="btn btn-primary" type="submit" id="myButton"><i class="fa fa-check"></i> 填写完成，提交！</button>
                                        <button class="btn btn-white" type="reset">取消</button>
                                    </div>
                                </div>
                            </form>
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
<script src="${ctx}/static/js/plugins/fileinput/fileinput.js" ></script><!---文件上传--->
<script src="${ctx}/static/js/plugins/fileinput/fileinput_locale_zh.js" ></script><!---文件上传中文配置--->
<script src="${ctx}/static/js/plugins/chosen/chosen.jquery.js"></script>
<script src="${ctx}/static/js/plugins/loading/jquery.loading.js"></script>

<script>
    //下拉框组件
    $(document).ready(function () {
        $(".chosen-select").chosen({no_results_text:'未找到此项',width:"100%",allow_single_deselect:true,disable_search_threshold:10});
        $('.input-group.date').datepicker({
            todayBtn: "linked",
            keyboardNavigation: false,
            forceParse: false,
            calendarWeeks: true,
            autoclose: true
        });
        
        $("#add_form").validate({
            submitHandler: function (form) {
                $('#myButton').button('loading');
                addform(form);
            }
        });
        function addform(form) {
           alert($('#addFile').val()) 
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
                            },3000);
                            toastr.error('错误代码：登陆超时，请重新登陆！', '配置修改失败！');
                        }
                    }
            );
        }


        $('#f_logo').fileinput({
            language: 'zh_CN',
            uploadUrl: '/uploadImgSimple',
            uploadAsync: true,
            autoReplace: true,
            showClose:false,
            previewFileType: "image",
            allowedFileExtensions: ["jpg", "gif", "png", "jpeg"],
            allowedPreviewTypes : 'image',
            overwriteInitial:true,
            validateInitialCount:true,
            minFileCount: 1,  //最小文件数，为0可选
            maxFileCount: 1,    //最大文件数，为0无限
            maxFileSize: 100,   //文件大小限制,0不限制
            minImageWidth: null,
            minImageHeight: null,
            maxImageWidth: null,
            maxImageHeight: null,
            uploadExtraData:{subName:'logo',styleHeight:'100px',initialPreviewAppend:false}
        });



/*        $("#f_logo").fileinput({
            uploadUrl: '/uploadImgSimple',    //服务端上传地址
            showCaption:false,     //是否显示按钮前的INPUT
            dropZoneEnabled:true,  //是否启动拖拽
            uploadAsync: true,  //true异步上传
            //autoReplace: false,  // 替换预览文件maxFileCount达到极限，
            validateInitialCount: true, //是否包括已有的文件数，新加文件个数和现有文件相加的判断
            overwriteInitial:false,  //是否要覆盖已有的缩略图列表。
            //minFileCount: 0,  //最小文件数，为0可选
            //maxFileCount: 0,    //最大文件数，为0无限
            maxFileSize: 2048,   //文件大小限制
            previewFileType: "image",   //文件类型
            allowedFileExtensions: ["jpg", "gif", "png", "jpeg"],//文件允许后缀名称
            browseClass: "btn btn-primary", //自定义浏览按钮样式
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
        })*/
    });


    $("#f_logo").fileinput({
        uploadUrl: '/uploadImgSimple',    //服务端上传地址
        showCaption:false,     //是否显示按钮前的INPUT
        dropZoneEnabled:true,  //是否启动拖拽
        uploadAsync: true,  //true异步上传

        validateInitialCount: true, //是否包括已有的文件数，新加文件个数和现有文件相加的判断
        overwriteInitial:false,  //是否要覆盖已有的缩略图列表。

        maxFileSize: 2048,   //文件大小限制
        previewFileType: "image",   //文件类型
        allowedFileExtensions: ["jpg", "gif", "png", "jpeg"],//文件允许后缀名称
        browseClass: "btn btn-primary", //自定义浏览按钮样式
        minImageWidth: 1000,
        msgFilesTooLess: '必须上传 <b>{n}</b>个{files}，您可以选择新的文件进行替换. ',
        initialPreview: [],//编辑页面初始化数据
        initialPreviewConfig: [],//通过此方法可以删除服务端上传的图片
        uploadExtraData:function(){
            return{
                subName:'logo',
                styleHeight:'100px',
                initialPreviewAppend:false
            }
        } //扩展AJAX传送数据。
    }).on('fileuploaded', function(event, data, previewId, index) {
        console.log(data);
    });

</script>
</body>
</html>
