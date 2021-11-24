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
					<h2>电商管理</h2>
					<ol class="breadcrumb">
						<li><a href="index.html">管理首页</a></li>
						<li>电商管理</li>
						<li class="active">新增电商</li>
					</ol>
				</div>
			</div>

			<!-----内容区域---->
			<div class="wrapper wrapper-content animated fadeInRight">
				<div class="ibox float-e-margins ">
					<div class="ibox-content p-t-slg">
						<form name="entity" id="input_form" class="form-horizontal">

							<div class="form-group">
								<label class="col-sm-12 col-md-4 col-lg-2 control-label" for="name"><span class="text-danger">* </span>business Name </label>
								<div class="col-sm-12 col-md-7 col-lg-9">
									<input type="text" id="name" name="name" value="" placeholder="请输入电商名称" class="form-control" required>
								</div>
							</div>

							<div class="form-group">
								<label class="col-sm-12 col-md-4 col-lg-2 control-label" for="shortName"><span class="text-danger">*</span> 电商简称 </label>
								<div class="col-sm-12 col-md-7 col-lg-9">
									<input type="text" id="shortName" name="shortName" value="" placeholder="电商简称" class="form-control" required>
								</div>
							</div>

							<div class="form-group">
								<label class="col-sm-12 col-md-4 col-lg-2 control-label"><span class="text-danger">*</span> 电商二级域名 </label>
								<div class="col-sm-12 col-md-7 col-lg-9">
									<div class="input-group">
										<span class="input-group-addon" for="domain">http://</span> <input type="text" id="domain" name="domain" value="" placeholder="请输入二级域名，4位以上英文字母，组成的网址用于访问您的管理平台." class="form-control" required> <span class="input-group-addon">.wujar.com</span>
									</div>
								</div>
							</div>

							<div class="form-group">
								<label class="col-sm-12 col-md-4 col-lg-2 control-label" for="smsPrefix"><span class="text-danger">*</span> 短信前缀 </label>
								<div class="col-sm-12 col-md-7 col-lg-9">
									<input type="text" id="smsPrefix" name="smsPrefix" value="" placeholder="请输入短信前缀" class="form-control" required>
								</div>
							</div>

							<div class="form-group">
								<label class="col-sm-12 col-md-4 col-lg-2 control-label" for="logoFile"><span class="text-danger">*</span> 公司标志 </label>
								<div class="col-sm-12 col-md-7 col-lg-9">
									<input type="file" class="file-loading" id="logoFile" name="logoFile" multiple> <span class="help-block m-b-none">为了清晰美观请上传 长：200px 宽：200px 的正方形公司标志.</span>
								</div>
							</div>

							<div class="hr-line-dashed"></div>
							<div class="form-group">
								<label class="col-sm-12 col-md-4 col-lg-2 control-label" for="callSupplier"><span class="text-danger">*</span> 外呼供应商 </label>
								<div class="col-sm-12 col-md-7 col-lg-9">
									<select name="callSupplier" class="form-control" required>
										<option value="">-- 请选择 --</option>
									</select>
								</div>
							</div>
							<div class="hr-line-dashed"></div>
							<div class="form-group">
								<label class="col-sm-12 col-md-4 col-lg-2 control-label" for="kuaiQianId"><span class="text-danger">*</span> 快钱商户id </label>
								<div class="col-sm-12 col-md-7 col-lg-9">
									<input type="text" id="kuaiQianId" name="kuaiQianId" value="" placeholder="快钱商户id" class="form-control" required>
								</div>
							</div>
							<div class="hr-line-dashed"></div>
							<div class="form-group">
								<label class="col-sm-12 col-md-4 col-lg-2 control-label" for="jpushAgentKey"><span class="text-danger">*</span> 极光推送AppKey </label>
								<div class="col-sm-12 col-md-7 col-lg-9">
									<input type="text" id="jpushAgentKey" name="jpushAgentKey" value="" placeholder="极光推送AppKey" class="form-control" required>
								</div>
							</div>

							<div class="form-group">
								<label class="col-sm-12 col-md-4 col-lg-2 control-label" for="jpushAgentPwd"><span class="text-danger">*</span> 极光推送Secret </label>
								<div class="col-sm-12 col-md-7 col-lg-9">
									<input type="text" name="jpushAgentPwd" id="jpushAgentPwd" value="" placeholder="极光推送Secret" class="form-control" required>
								</div>
							</div>
							<div class="hr-line-dashed"></div>
							<div class="form-group">
								<label class="col-sm-12 col-md-4 col-lg-2 control-label" for="username"><span class="text-danger">*</span> 电商管理员用户名 </label>
								<div class="col-sm-12 col-md-7 col-lg-9">
									<input type="text" name="username" id="username" value="" placeholder="用户电商平台的高级管理员账户名称。" class="form-control" required>
								</div>
							</div>

							<div class="form-group">
								<label class="col-sm-12 col-md-4 col-lg-2 control-label" for="adminname"><span class="text-danger">*</span> Electric business administrator real name </label>
								<div class="col-sm-12 col-md-7 col-lg-9">
									<input type="text" name="adminname" id="adminname" value="" placeholder="请输入管理者的真实姓名，以身份证上为准。" class="form-control" required>
								</div>
							</div>

							<div class="form-group">
								<label class="col-sm-12 col-md-4 col-lg-2 control-label" for="phone"><span class="text-danger">*</span> 电商管理员手机 </label>
								<div class="col-sm-12 col-md-7 col-lg-9">
									<input type="text" name="phone" id="phone" value="" placeholder="输入手机号码" class="form-control" required>
								</div>
							</div>

							<div class="hr-line-dashed"></div>


							<div class="form-group">
								<div class="col-sm-4 col-sm-offset-2">
									<button class="btn btn-primary" type="submit">
										<i class="fa fa-check"></i> 填写完成，提交！
									</button>
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

	<!-- 全局 scripts -->
	<script src="${ctx}/static/js/jquery-2.1.1.js"></script>
	<script src="${ctx}/static/js/bootstrap.js"></script>
	<script src="${ctx}/static/js/wuling.js"></script>
	<script src="${ctx}/static/js/plugins/pace/pace.min.js"></script>
	<script src="${ctx}/static/js/plugins/slimscroll/jquery.slimscroll.min.js"></script>
	<script src="${ctx}/static/js/plugins/metisMenu/jquery.metisMenu.js"></script>
	<!-- 插件 scripts -->
	<script src="${ctx}/static/js/plugins/chosen/chosen.jquery.js"></script>
	<!---下拉菜单--->
	<script src="${ctx}/static/js/plugins/toastr/toastr.min.js" async></script>
	<!---顶部弹出提示--->
	<script src="${ctx}/static/js/plugins/validate/jquery.validate.min.js"></script>
	<!---表单验证--->
	<script src="${ctx}/static/js/plugins/validate/validate-cn.js"></script>
	<!---validate 自定义方法--->
	<script src="${ctx}/static/js/plugins/fileinput/fileinput.js"></script>
	<!---文件上传--->
	<script src="${ctx}/static/js/plugins/fileinput/fileinput_locale_zh.js"></script>
	<!---文件上传中文配置--->

	<script>
    $(".chosen-select").chosen({
      no_results_text: '未找到此项',
      width: "100%",
      allow_single_deselect: true,
      disable_search_threshold: 10
    });
    $(document).ready(function() {
      $("#input_form").validate({
        debug: true,
        submitHandler: function(form) {
          addform(form);
        }
      });

      function addform(form) {
        $.ajax({
          url: "?",
          type: "post",
          data: $(form).serialize(),
          success: function(data) {
            toastr.success('', '配置修改成功！');
            toastr.error('错误代码：登陆超时，请重新登陆！', '配置修改失败！');
          }
        });
      }

      //单个图片上传配置

      $("#logoFile").fileinput({
        language: 'zh',
        uploadUrl: '/asdsadsa/', //服务端上传地址
        dropZoneEnabled: false, //是否启动拖拽
        uploadAsync: true, //false同步批量上传,true异步上传
        showCaption: false, //是否显示按钮前的INPUT
        autoReplace: true, // 替换上一次浏览的图像，
        validateInitialCount: true, //是否包括已有的文件数，新加文件个数和现有文件相加的判断，<编辑页面时开启,新增加页面关闭>
        overwriteInitial: true, //是否要覆盖已有的内容。<编辑页面时开启,新增加页面关闭>
        minFileCount: 1, //最小文件数，为0可选
        maxFileCount: 1, //最大文件数，为0无限
        maxFileSize: 1000, //文件大小限制
        previewFileType: "image", //文件类型
        allowedFileExtensions: ["jpg", "gif", "png", "jpeg"],//文件允许后缀名称
        browseClass: "btn btn-primary", //自定义浏览按钮样式
        minImageWidth: 10,
        minImageHeight: 10,
        maxImageWidth: 1200,
        maxImageHeight: 1200,
        msgFilesTooLess: '必须上传 <b>{n}</b>个{files}，您可以选择新的文件进行替换. ',
        layoutTemplates: {
          actionUpload: '' //删除小按钮
        },
        initialPreview: ['<img src="${ctx}/static/img/a1.jpg" class="file-preview-image" alt="The Moon" title="The Moon">'],//编辑页面初始化数据
        initialPreviewConfig: [{
          caption: "图片一",
          width: "120px",
          url: "/111",
          key: 1
        }, //URL 为从服务端删除图片的地址

        ],//通过此方法可以删除服务端上传的图片

        /*
         uploadExtraData: function(previewId, index) {
               return{
                   userid: "10000",
                   username: "zifan",
                   key: index
               }
        },*///扩展AJAX传送数据。
        initialCaption: "请选择本地图片" //默认输入框文字

      })
    });

    /*       $("#logoFile").fileinput({
               uploadUrl: '/asdsadsa/',    //服务端上传地址
               dropZoneEnabled:false,  //是否启动拖拽
               uploadAsync: true,  //false同步批量上传,true异步上传
               //showUpload: false,    //显示隐藏上传按钮
               validateInitialCount: true, //是否包括已有的文件数，新加文件个数和现有文件相加的判断
               //overwriteInitial: false,  //是否要覆盖已有的内容。
               minFileCount: 1,  //最小文件数，为0可选
               maxFileCount: 1,    //最大文件数，为0无限
               maxFileSize: 1000,   //文件大小限制
               previewFileType: "image",   //文件类型
               allowedFileExtensions: ["jpg", "gif", "png", "jpeg"],//文件允许后缀名称
               browseClass: "btn btn-primary", //自定义浏览按钮样式
               minImageWidth: 10,
               minImageHeight: 10,
               maxImageWidth: 1200,
               maxImageHeight: 1200,
               initialPreview: [
                   '<img src="${ctx}/static/img/a1.jpg" class="file-preview-image" alt="The Moon" title="The Moon">'
               ],//初始化数据
               initialPreviewConfig: [
                   {caption: "图片一", width: "120px", url: "/111", key: 1}, //URL 为从服务端删除图片的地址

               ],//通过此方法可以删除服务端上传的图片
               /!*uploadExtraData: function(previewId, index) {
                return{
                userid: "10000",
                username: "zifan",
                key: index
                }
                },*!/ //扩展AJAX传送数据，据分析，此属性可以扩展 自定义图片 标题和描述用。

               initialCaption: "请选择本地图片" //默认输入框文字

           }).off('filepreupload').on('filepreupload', function() {
               return alert("确定要上传文件吗？")
           })
           
             .on("filepredelete",function(event,key){
               console.log(event,key);
             })
             
             .on('fileuploaderror', function(event, data, previewId, index) {
                 var form = data.form,
                 files = data.files,
                 extra = data.extra,
                 response = data.response,
                 reader = data.reader;
                 //console.log(data)
             })
             
             .on('fileuploaded',function(event, data, previewId, index){
           
             })
             
             .on('filezoomshow', function(event, params) {
               console.log('File zoom show ', params.sourceEvent, params.previewId, params.modal);
             });       */
  </script>
</body>
</html>
