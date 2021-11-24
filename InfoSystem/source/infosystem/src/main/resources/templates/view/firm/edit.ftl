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
    <link href="${ctx}/static/css/plugins/chosen/chosen.css" rel="stylesheet">
    <link href="${ctx}/static/css/plugins/fileinput/fileinput.min.css" rel="stylesheet">
    <link href="${ctx}/static/css/animate.css" rel="stylesheet">
    <link href="${ctx}/static/css/style.css" rel="stylesheet">

</head>
<body class="fixed-sidebar">

<!--主体开始-->
<div id="wrapper">
    <!----左侧导航开始----->
    <nav class="navbar-default navbar-static-side" role="navigation" id="leftnav">
    </nav>
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
                <h2>经纪公司</h2>
                <ol class="breadcrumb">
                    <li><a href="${ctx}/index">管理首页</a></li>
                    <li class="active">经纪公司列表</li>
                    <li>修改经纪公司</li>
                </ol>
            </div>
        </div>

        <!-----内容区域---->
        <div class="wrapper wrapper-content animated fadeInRight">
            <div class="ibox float-e-margins ">
                <div class="ibox-content p-t-slg">
                    <form name="entity" id="input_form" class="form-horizontal">

                        <div class="form-group">
                            <label class="col-sm-2 control-label">公司名称 <span class="text-danger">*</span></label>
                            <div class="col-sm-10"><p class="form-control-static">测试经纪公司</p></div>
                        </div>

                        <div class="form-group">
                            <label class="col-sm-2 control-label">城市  <span class="text-danger">*</span></label>
                            <div class="col-sm-10"><p class="form-control-static">上海</p></div>
                        </div>

                        <div class="form-group">
                            <label class="col-sm-2 control-label">简称  <span class="text-danger">*</span></label>
                            <div class="col-sm-10">
                                <input type="text" name="" value="" placeholder="测试经纪"  class="form-control" required>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-2 control-label">联系人姓名  <span class="text-danger">*</span></label>
                            <div class="col-sm-10">
                                <input type="text" name="" value="" placeholder="聂"  class="form-control" required>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-2 control-label">联系人手机  <span class="text-danger">*</span></label>
                            <div class="col-sm-10">
                                <input type="text" name="" value="" placeholder="13915425536"  class="form-control" required>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-2 control-label">公司地址  <span class="text-danger">*</span></label>
                            <div class="col-sm-10">
                                <input type="text" name="" value="" placeholder="上海市多媒体大厦"  class="form-control" required>
                            </div>
                        </div>

                        <div class="form-group">
                            <label class="col-sm-2 control-label">公司证明图片  <span class="text-danger">*</span></label>
                            <div class="col-sm-10">
                                <input type="file" class="file-loading" id="addFile" name="logoFile" multiple >
                                <span class="col-md-6 help-block m-b-none">为了清晰美观请上传 长：200px  宽：200px 的正方形公司标志.</span>
                            </div>
                        </div>
                        <div class="hr-line-dashed"></div>
                        <div class="form-group">
                            <div class="col-sm-4 col-sm-offset-2">
                                <button class="btn btn-primary" type="submit"><i class="fa fa-check"></i> 提交</button>
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
<!--主体结束-->

<!-- 全局 scripts -->
<script src="${ctx}/static/js/jquery-2.1.1.js"></script>
<script src="${ctx}/static/js/bootstrap.js"></script>
<script src="${ctx}/static/js/wuling.js"></script>
<script src="${ctx}/static/js/plugins/pace/pace.min.js"></script>

<script src="${ctx}/static/js/plugins/slimscroll/jquery.slimscroll.min.js"></script>
<script src="${ctx}/static/js/plugins/metisMenu/jquery.metisMenu.js"></script>
<!-- 插件 scripts -->
<script src="${ctx}/static/js/plugins/chosen/chosen.jquery.js"></script><!---下拉菜单--->
<script src="${ctx}/static/js/plugins/toastr/toastr.min.js" async></script><!---顶部弹出提示--->
<script src="${ctx}/static/js/plugins/fileinput/fileinput.min.js" ></script><!---文件上传--->
<script src="${ctx}/static/js/plugins/fileinput/fileinput_locale_zh.js" ></script><!---文件上传中文配置--->


<script>

    $(document).ready(function () {


        $("#addFile").fileinput({
            uploadUrl: '#',    //服务端上传地址
            showCaption:false,     //是否显示按钮前的INPUT
            dropZoneEnabled:true,  //是否启动拖拽
            uploadAsync: true,  //true异步上传
            //autoReplace: false,  // 替换预览文件maxFileCount达到极限，
            validateInitialCount: true, //是否包括已有的文件数，新加文件个数和现有文件相加的判断
            overwriteInitial:false,  //是否要覆盖已有的缩略图列表。
            minFileCount: 0,  //最小文件数，为0可选
            maxFileCount: 1,    //最大文件数，为0无限
            maxFileSize: 2048,   //文件大小限制
            previewFileType: "image",   //文件类型
            allowedFileExtensions: ["jpg", "gif", "png", "jpeg"],//文件允许后缀名称
            minImageWidth: 800,
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

    });

</script>
</body>
</html>