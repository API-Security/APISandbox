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
            <nav class="navbar navbar-fixed-top" role="navigation" id="topnav">
            </nav>
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
                                <li><a href="${ctx }/view/project/add2"><div>户型管理</div></a></li>
                                <li class="current-step"><div>楼盘相册</div></li>
                                <li ><a href="${ctx }/view/project/add4"><div>销控管理</div></a></li>
                                <li ><a href="${ctx }/view/project/add5"><div>基础信息</div></a></li>
                                <li ><a href="${ctx }/view/project/add6"><div>户型管理</div></a></li>
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
                            大城小爱 楼盘相册
                        </div>
                    </div>
                    <div class="ibox-content p-t-md">
                        <div class="tabs-container">
                            <div>
                                <ul class="nav nav-tabs nav-tabs-group no-borders m-b-sm">
                                    <li><a data-toggle="tab" href="#tab-1" data-classid="1">封面图片</a></li>
                                    <li class="active"><a data-toggle="tab" href="#tab-2" data-classid="2">效果图</a></li>
                                    <li><a data-toggle="tab" href="#tab-3" data-classid="3">样板间111</a></li>
                                    <li><a data-toggle="tab" href="#tab-4" data-classid="4">周边配套图</a></li>
                                    <li><a data-toggle="tab" href="#tab-5" data-classid="5">外景图</a></li>
                                    <li> <a data-toggle="tab" href="#tab-6" data-classid="6">交通图</a></li>
                                </ul>
                            </div>
                            <div class="row">
                                <div class="col-md-12 tab-content">
                                    <div id="tab-1" class="tab-pane fade">
                                        <input type="file" class="file-loading addFile" id="addFile1" name="logoFile" multiple >
                                        <span class="help-block m-b-none">为了清晰美观请上传 1111111111111111长：200px  宽：200px 的正方形公司标志.</span>
                                    </div>


                                    <div id="tab-2" class="tab-pane fade active in">
                                        <input type="file" class="file-loading addFile" id="addFile2" name="logoFile" multiple >
                                        <span class="help-block m-b-none">为了清晰美观请上传2222222222222222222222 长：200px  宽：200px 的正方形公司标志.</span>
                                    </div>

                                    <div id="tab-3" class="tab-pane fade">
                                        <input type="file" class="file-loading addFile"  id="addFile3" name="logoFile" multiple >
                                        <span class="help-block m-b-none">为了清晰美观请上传3333333333 长：200px  宽：200px 的正方形公司标志.</span>
                                    </div>

                                    <div id="tab-4" class="tab-pane fade">
                                        <input type="file" class="file-loading addFile"  id="addFile4" name="logoFile" multiple >
                                        <span class="help-block m-b-none">为了清晰美观请上传4444444444 长：200px  宽：200px 的正方形公司标志.</span>
                                    </div>

                                    <div id="tab-5" class="tab-pane fade">
                                        <input type="file" class="file-loading addFile"  id="addFile5" name="logoFile" multiple >
                                        <span class="help-block m-b-none">为了清晰美观请上传555555555555 长：200px  宽：200px 的正方形公司标志.</span>
                                    </div>

                                    <div id="tab-6" class="tab-pane fade">
                                        <input type="file" class="file-loading addFile"  id="addFile6" name="logoFile" multiple >
                                        <span class="help-block m-b-none">为了清晰美观请上传6666666666666 长：200px  宽：200px 的正方形公司标志.</span>
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
    <script src="${ctx}/static/js/plugins/fileinput/fileinput.min.js" ></script><!---文件上传--->
    <script src="${ctx}/static/js/plugins/fileinput/fileinput_locale_zh.js" ></script><!---文件上传中文配置--->
    
    <script>
    var _ctx = "${ctx}";
$(function(){
        list(2);
        $('a[data-toggle="tab"]').on('shown.bs.tab', function (e) {
            $('#kvFileinputModal').remove();
            var c=e.target;
            var b=e.relatedTarget;
            var classid= $(c).data('classid');

            list(classid)
        });
        function list(classid){
            var num=classid-1;
            var imgItems=[[
                '<img src="'+_ctx+'/static/img/a1.jpg" class="file-preview-image" alt="The Moon" title="The Moon">',
                '<img src="'+_ctx+'/static/img/a2.jpg" class="file-preview-image" alt="The Moon" title="The Moon">',
                '<img src="'+_ctx+'/static/img/a3.jpg" class="file-preview-image" alt="The Moon" title="The Moon">',
                '<img src="'+_ctx+'/static/img/a4.jpg" class="file-preview-image" alt="The Moon" title="The Moon">',
                '<img src="'+_ctx+'/static/img/a5.jpg" class="file-preview-image" alt="The Moon" title="The Moon">'
            ],
                [
                '<img src="'+_ctx+'/static/img/a6.jpg" class="file-preview-image" alt="The Moon" title="The Moon">',
                '<img src="'+_ctx+'/static/img/a7.jpg" class="file-preview-image" alt="The Moon" title="The Moon">',
                '<img src="'+_ctx+'/static/img/a8.jpg" class="file-preview-image" alt="The Moon" title="The Moon">',
                '<img src="'+_ctx+'/static/img/a2.jpg" class="file-preview-image" alt="The Moon" title="The Moon">',
                '<img src="'+_ctx+'/static/img/a3.jpg" class="file-preview-image" alt="The Moon" title="The Moon">'
            ],
            [
                 '<img src="'+_ctx+'/static/img/a8.jpg" class="file-preview-image" alt="The Moon" title="The Moon">',
                 '<img src="'+_ctx+'/static/img/a3.jpg" class="file-preview-image" alt="The Moon" title="The Moon">',
                 '<img src="'+_ctx+'/static/img/a1.jpg" class="file-preview-image" alt="The Moon" title="The Moon">',
                 '<img src="'+_ctx+'/static/img/a2.jpg" class="file-preview-image" alt="The Moon" title="The Moon">',
                 '<img src="'+_ctx+'/static/img/a3.jpg" class="file-preview-image" alt="The Moon" title="The Moon">'
                ]];
            var file2=new UploadPhoto(classid,imgItems[num]);
        }
    
        
});
function UploadPhoto(classid,imgArr){
    $("#addFile"+classid).fileinput({
        language: 'zh',
        uploadUrl: 'http://plugins.krajee.com/file-upload-batch/1',    //服务端上传地址
        showCaption:false,     //是否显示按钮前的INPUT
        showRemove: true,  //显示移除按钮
        showUpload: true,   //显示上传按钮
        dropZoneEnabled:true,  //是否启动拖拽

        uploadAsync: true,  //true异步上传
        //autoReplace: false,  // 替换预览文件maxFileCount达到极限，
        validateInitialCount: true, //是否包括已有的文件数，新加文件个数和现有文件相加的判断
        overwriteInitial:false,  //是否要覆盖已有的缩略图列表。
        //minFileCount: 0,  //最小文件数，为0可选
        //maxFileCount: 0,    //最大文件数，为0无限
        maxFileSize: 1000,   //文件大小限制
        previewFileType: "image",   //文件类型
        allowedFileExtensions: ["jpg", "gif", "png", "jpeg"],//文件允许后缀名称
        browseClass: "btn btn-primary", //自定义浏览按钮样式
        minImageWidth: 200,
        minImageHeight: 200,
        maxImageWidth: 1200,
        maxImageHeight: 1200,
        msgFilesTooLess: '必须上传 <b>{n}</b>个{files}，您可以选择新的文件进行替换. ',
        fileActionSettings:{
            showDrag:false,
            showUpload: false,
            showZoom:true
        },
        initialPreview: imgArr,//编辑页面初始化数据
        initialPreviewConfig: [
            {caption: "图片一", width: "120px", height:"120px", url: "http://plugins.krajee.com/site/file-delete", key: 1}, //URL 为从服务端删除图片的地址
            {caption: "图片一", width: "120px", url: "/111", key: 2},
            {caption: "图片一", width: "120px", url: "/111", key: 3},
            {caption: "图片一", width: "120px", url: "/111", key: 4},
            {caption: "图片一", width: "120px", url: "/111", key: 5}
        ],///通过此方法可以删除服务端上传的图片

        uploadExtraData: function(previewId, index) {
            if (previewId!=undefined && index!=undefined){
                alert(previewId+","+index)
            }
            return{
                userid: "10000",
                username: "zifan",
                key: index,
                classid:classid
            }
        } //扩展AJAX传送数据。
    })
}
    </script>
</body>
</html>
