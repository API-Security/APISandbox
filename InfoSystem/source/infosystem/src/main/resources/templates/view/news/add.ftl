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
						<li>站内新闻</li>
						<li class="active">发布新闻</li>
					</ol>
				</div>
			</div>

			<!-----内容区域---->
			<div class="wrapper wrapper-content animated fadeInRight">
				<div class="ibox float-e-margins ">
					<div class="ibox-content p-t-slg">
						<form name="entity" id="input_form" class="form-horizontal">

							<div class="form-group">
								<label class="col-sm-12 col-md-4 col-lg-2 control-label" for="title"><span class="text-danger">* </span>标题</label>
								<div class="col-sm-12 col-md-7 col-lg-9">
									<input type="text" id="title" name="title" value="" placeholder="请输入标题" class="form-control" required>
								</div>
							</div>

							<div class="form-group">
								<label class="col-sm-12 col-md-4 col-lg-2 control-label" for="description"><span class="text-danger">*</span>内容</label>
								<div class="col-sm-12 col-md-7 col-lg-9">
									<input type="text" id="description" name="description" value="" placeholder="请输入内容" class="form-control" required>
								</div>
							</div>

							<div class="form-group">
								<label class="col-sm-12 col-md-4 col-lg-2 control-label" for="address"><span class="text-danger">*</span>地址</label>
								<div class="col-sm-12 col-md-7 col-lg-9">
									<input type="text" id="address" name="address" value="" placeholder="请输入地址" class="form-control" required>
								</div>
							</div>

							<div class="form-group">
								<label class="col-sm-12 col-md-4 col-lg-2 control-label" for="newsTime"><span class="text-danger">*</span>发生时间</label>
								<div class="col-sm-12 col-md-7 col-lg-9">
									<input type="text" id="newsTime" name="newsTime" value="" onfocus="WdatePicker({skin:'whyGreen',dateFmt:'yyyy-MM-dd HH:mm',firstDayOfWeek:1,readOnly:true})" placeholder="请选择发生时间" class="form-control Wdate" required>
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
	<!--date style-->
	<script src="${ctx}/static/js/My97DatePicker/WdatePicker.js"></script>
	<!---文件上传中文配置--->

	<script>
    var _ctx = '${ctx}';
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
          url: _ctx + "/admin/console/news/add",
          type: "post",
          data: $(form).serialize(),
          success: function(data) {
            if (data.status == '1') {
              toastr.success('', data.msg);
              window.location.href=_ctx+"/admin/console/news/list";
            } else
              toastr.error('', data.msg);
          },
          error: function(data) {
            toastr.error('', '发布失败');
          }
        });
      }

    });
  </script>
</body>
</html>
