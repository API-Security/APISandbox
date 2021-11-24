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
					<h2>屋瓴账号管理</h2>
					<ol class="breadcrumb">
						<li><a href="${ctx}/static/index.html">管理首页</a></li>
						<li class="active">屋瓴账号管理</li>

					</ol>
				</div>
			</div>

			<!-----内容区域----------->
			<div class="wrapper wrapper-content animated fadeInRight">

				<div class="alert alert-warning alert-dismissible fade in" role="alert">
					<button type="button" class="close" data-dismiss="alert" aria-label="Close">
						<span aria-hidden="true">×</span>
					</button>
					<strong><i class="fa fa-exclamation-triangle"></i> 提示：</strong> 此配置关系整个平台的正常运行，请谨慎修改！（所有字段均为必填项）
				</div>

				<div class="ibox float-e-margins ">
					<div class="ibox-content p-t-slg">
						<form name="entity" id="input_form" class="form-horizontal">
							<div class="form-group">
								<label class="col-sm-12 col-md-5 col-lg-3 control-label"><span class="text-danger">*</span> 短信账号 </label>
								<div class="col-sm-12 col-md-6 col-lg-8">
									<input type="text" id="smsAccount" name="smsAccount" value="9SDK-EMY-0999-JBUPT" placeholder="短信账号" class="form-control" required>
								</div>
							</div>
							<div class="form-group">
								<label class="col-sm-12 col-md-5 col-lg-3 control-label"><span class="text-danger">*</span> 短信账号密码 </label>
								<div class="col-sm-12 col-md-6 col-lg-8">
									<input type="text" id="smsPassword" name="smsPassword" value="fdmsmskey" placeholder="短信账号密码" class="form-control" required> <span class="help-block m-b-none">短信账号登陆时所需的密码.</span>
								</div>
							</div>
							<div class="form-group">
								<label class="col-sm-12 col-md-5 col-lg-3 control-label"><span class="text-danger">*</span> 短信前缀 </label>

								<div class="col-sm-12 col-md-6 col-lg-8">
									<input type="text" id="smsPrefix" name="smsPrefix" value="上海屋瓴" placeholder="短信前缀" class="form-control" required>
								</div>
							</div>
							<div class="hr-line-dashed"></div>
							<div class="form-group">
								<label class="col-sm-12 col-md-5 col-lg-3 control-label"><span class="text-danger">*</span> 荣联云通讯主账号id </label>
								<div class="col-sm-12 col-md-6 col-lg-8">
									<input type="text" id="ryAccountId" name="ryAccountId" value="8a48b5514fd49643014fd91bb4fc0bf6" placeholder="荣联云通讯主账号id" class="form-control" required>
								</div>
							</div>
							<div class="form-group">
								<label class="col-sm-12 col-md-5 col-lg-3 control-label"><span class="text-danger">*</span> 荣联云通讯主账号token </label>
								<div class="col-sm-12 col-md-6 col-lg-8">
									<input type="text" id="ryAccountToken" name="ryAccountToken" value="4136b7db6ca64ffcbf2d9e0ee5d982d8" placeholder="荣联云通讯主账号token" class="form-control" required>
								</div>
							</div>

							<div class="hr-line-dashed"></div>
							<div class="form-group">
								<label class="col-sm-12 col-md-5 col-lg-3 control-label"><span class="text-danger">*</span> 荣联云通讯子账号id </label>
								<div class="col-sm-12 col-md-6 col-lg-8">
									<input type="text" class="form-control" id="rySubAccountId" name="rySubAccountId" value="fb5c053460ef11e58739ac853d9f54f2" placeholder="荣联云通讯子账号id" required>
								</div>
							</div>
							<div class="form-group">
								<label class="col-sm-12 col-md-5 col-lg-3 control-label"><span class="text-danger">*</span> 荣联云通讯子账号token</label>
								<div class="col-sm-12 col-md-6 col-lg-8">
									<input type="text" id="rySubAccountToken" name="rySubAccountToken" value="98c1c14def91ce624fa75adb099e4b94" placeholder="荣联云通讯子账号token" class="form-control" required>
								</div>
							</div>

							<div class="hr-line-dashed"></div>
							<div class="form-group">
								<label class="col-sm-12 col-md-5 col-lg-3 control-label">荣联云通讯应用id <span class="text-danger">*</span></label>
								<div class="col-sm-12 col-md-6 col-lg-8">
									<input type="text" id="ryAppId" name="ryAppId" value="8a48b5514fd49643014fdfe37c462176" placeholder="荣联云通讯应用id" class="form-control" required>

								</div>
							</div>
							<div class="form-group">
								<label class="col-sm-12 col-md-5 col-lg-3 control-label"><span class="text-danger">*</span> Rong iunin communication display number</label>
								<div class="col-sm-12 col-md-6 col-lg-8">
									<input type="text" id="ryDisplayName" name="ryDisplayName" value="4006021163" placeholder="荣联云通讯显示号码" class="form-control" required>
								</div>
							</div>

							<div class="hr-line-dashed"></div>
							<div class="form-group">
								<label class="col-sm-12 col-md-5 col-lg-3 control-label"><span class="text-danger">*</span> jpush经纪人app账号</label>
								<div class="col-sm-12 col-md-6 col-lg-8">
									<input type="text" id="jpushAgentKey" name="jpushAgentKey" value="0064522fb32da7863d171d32" placeholder="jpush经纪人app账号" class="form-control" required>
								</div>
							</div>
							<div class="form-group">
								<label class="col-sm-12 col-md-5 col-lg-3 control-label"><span class="text-danger">*</span> jpush经纪人app密码 </label>
								<div class="col-sm-12 col-md-6 col-lg-8">
									<input type="text" id="jpushAgentPwd" name="jpushAgentPwd" value="b385a1cbda33a5a08d53e0b5" placeholder="jpush经纪人app密码" class="form-control" required>
								</div>
							</div>

							<div class="hr-line-dashed"></div>
							<div class="form-group">
								<label class="col-sm-12 col-md-5 col-lg-3 control-label"><span class="text-danger">*</span> push置业顾问app账号 </label>
								<div class="col-sm-12 col-md-6 col-lg-8">
									<input type="text" id="jpushAdviserKey" name="jpushAdviserKey" value="ef135c788865b9d0ba971142" placeholder="jpush置业顾问app账号" class="form-control" required>
								</div>
							</div>
							<div class="form-group">
								<label class="col-sm-12 col-md-5 col-lg-3 control-label"><span class="text-danger">*</span> Jpush property consultant app password </label>
								<div class="col-sm-12 col-md-6 col-lg-8">
									<input type="text" id="jpushAdviserPwd" name="jpushAdviserPwd" value="e2b1b8b4012a4ba38f65271f" placeholder="jpush置业顾问app密码" class="form-control" required>
								</div>
							</div>

							<div class="hr-line-dashed"></div>
							<div class="form-group">
								<label class="col-sm-12 col-md-5 col-lg-3 control-label"><span class="text-danger">*</span> Push home consultant app account </label>
								<div class="col-sm-12 col-md-6 col-lg-8">
									<input type="text" id="jpushManagerKey" name="jpushManagerKey" value="4fab4e17d7c2c18c317d9a07" placeholder="jpush屋瓴通app账号" class="form-control" required>
								</div>
							</div>
							<div class="form-group">
								<label class="col-sm-12 col-md-5 col-lg-3 control-label"><span class="text-danger">*</span> Jpush Wu Ling Tong app password </label>
								<div class="col-sm-12 col-md-6 col-lg-8">
									<input type="text" id="jpushManagerPwd" name="jpushManagerPwd" value="200fae7853ceb3bbefb1f2a0" placeholder="jpush屋瓴通app密码" class="form-control" required>
								</div>
							</div>

							<div class="hr-line-dashed"></div>
							<div class="form-group">
								<div class="col-sm-12 col-sm-offset-0 col-md-5 col-md-offset-5 col-lg-3 col-lg-offset-3">
									<button class="btn btn-primary" type="submit">
										<i class="fa fa-check"></i> 提交
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
	<!-- 全局 scripts -->
	<script src="${ctx}/static/js/jquery-2.1.1.js"></script>
	<script src="${ctx}/static/js/bootstrap.js"></script>
	<script src="${ctx}/static/js/plugins/metisMenu/jquery.metisMenu.js"></script>
	<script src="${ctx}/static/js/plugins/slimscroll/jquery.slimscroll.min.js"></script>
	<script src="${ctx}/static/js/wuling.js"></script>
	<script src="${ctx}/static/js/plugins/pace/pace.min.js"></script>
	<!-- 插件 scripts -->
	<script src="${ctx}/static/js/plugins/toastr/toastr.min.js"></script>
	<!---顶部弹出提示--->
	<script src="${ctx}/static/js/plugins/validate/jquery.validate.min.js"></script>
	<!---表单验证--->
	<script src="${ctx}/static/js/plugins/validate/validate-cn.js"></script>
	<!---validate 自定义方法--->


	<script>
    //下拉框组件
    $(document).ready(function() {
      $("#input_form").validate({
        //debug: true,
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

          },
          error: function(responseText, textStatus, XMLHttpRequest) {

            toastr.error('错误代码：' + responseText.status + ',' + XMLHttpRequest + '', '配置修改失败！');
          }
        });
      }
    })
  </script>
</body>
</html>
