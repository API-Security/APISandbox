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
					<h2>电商管理</h2>
					<ol class="breadcrumb">
						<li><a href="index.html">管理首页</a></li>
						<li>电商管理</li>
						<li class="active">电商列表</li>

					</ol>
				</div>
			</div>

			<!-----内容区域---->
			<div class="wrapper wrapper-content animated fadeInRight">
				<div class="ibox-content m-b-sm border-bottom">
					<div class="row">
						<div class="col-md-6 col-sm-4">
							<a class="btn btn-primary" href="${ctx }/view/tenant/tenant-add"> 添加电商 <i class="fa fa-plus"></i>
							</a>
						</div>
						<div class="col-md-6 col-sm-8">

							<div class="row">
								<div class="col-md-4">
									<div class="form-group m-b-none">
										<select name="com" class="form-control input-sm  m-t-xs">
											<option value="">请选择账户角色</option>
											<option value="1">链家网</option>
											<option value="2">房多多</option>
										</select>
									</div>
								</div>
								<div class="col-md-8">
									<div class="tablesearch pull-right m-t-xs">
										<div class="table-td">
											<div class="input-group m-b-none">
												<input type="text" class="input-sm form-control" name="end" value="" placeholder="输入账号搜索"> <span class="input-group-btn"><button type="button" class="btn btn-sm btn-primary ">查询</button></span>
											</div>
										</div>
										<div class="table-td">
											<div class="table-td m-l-sm pull-right">
												<a class="btn btn-sm btn-primary dropdown-toggle" role="button" data-toggle="collapse" href="#collapseExample" aria-expanded="false" aria-controls="collapseExample"> 高级搜索 <span class="caret"></span></a>
											</div>
										</div>
									</div>

								</div>
							</div>
						</div>
					</div>
					<!----高级搜索内容区---->
					<div class="collapse" id="collapseExample">
						<div class="border-top m-t-md m-b-none sidedown-box">
							<div class="row">
								<div class="col-sm-4">
									<div class="form-group">
										<label class="control-label" for="order_id">用户名称</label> <input type="text" id="order_id" name="order_id" value="" placeholder="输入用户名称" class="form-control">
									</div>
								</div>
								<div class="col-sm-4">
									<div class="form-group">
										<label class="control-label">电商</label> <select data-placeholder="-- 请选择电商 --" class="chosen-select" tabindex="2">
											<option value=""></option>
											<option value="1">电商公司 1</option>
											<option value="2">电商公司 2</option>
											<option value="3">电商公司 3</option>
											<option value="4">电商公司 4</option>
											<option value="5">电商公司 5</option>
											<option value="6">电商公司 6</option>
											<option value="7">电商公司 7</option>
											<option value="8">电商公司 8</option>
											<option value="9">电商公司 9</option>
											<option value="10">电商公司 10</option>
										</select>

									</div>
								</div>
								<div class="col-sm-4">
									<div class="form-group">
										<label class="control-label">楼盘</label> <select data-placeholder="-- 请选择楼盘 --" class="chosen-select" tabindex="2">
											<option value=""></option>
											<option value="1">电商公司 1</option>
											<option value="2">电商公司 2</option>
											<option value="3">电商公司 3</option>
											<option value="4">电商公司 4</option>
											<option value="5">电商公司 5</option>
											<option value="6">电商公司 6</option>
											<option value="7">电商公司 7</option>
											<option value="8">电商公司 8</option>
											<option value="9">电商公司 9</option>
											<option value="10">电商公司 10</option>
										</select>

									</div>
								</div>
							</div>
							<div class="row">
								<div class="col-sm-4">
									<div class="row">
										<div class="col-sm-6">
											<div class="form-group">
												<label class="control-label">经纪公司门店</label> <select name="" class="form-control input-s-sm inline">
													<option value="">-- 请选择经济公司 --</option>
												</select>
											</div>
										</div>
										<div class="col-sm-6">
											<div class="form-group">
												<label class="control-label">&nbsp;</label> <select name="" class="form-control input-s-sm inline">
													<option value="">-- 请选择门店 --</option>
												</select>
											</div>
										</div>
									</div>
								</div>


								<div class="col-sm-4">
									<div class="form-group">
										<label class="control-label">角色</label> <select name="" class="form-control input-s-sm inline">
											<option value="">---- 请选择角色 ----</option>
										</select>
									</div>
								</div>
								<div class="col-sm-4">
									<div class="form-group">
										<label class="control-label">城市</label> <select data-placeholder="-- 请选择楼盘 --" class="chosen-select" tabindex="2">
											<option value="1"></option>
											<option value="1">城市 1</option>
											<option value="2">城市 2</option>
											<option value="3">城市 3</option>
											<option value="4">城市 4</option>
											<option value="5">城市 5</option>
											<option value="6">城市 6</option>
											<option value="7">城市 7</option>
											<option value="8">城市 8</option>
											<option value="9">城市 9</option>
											<option value="10">城市 10</option>
											<option value="11">城市 11</option>
										</select>
									</div>
								</div>
							</div>
							<div class="row">

								<div class="col-sm-4 col-sm-push-8 text-right">
									<button type="button" class="btn btn-primary">
										<i class="fa fa-search"></i> 立即搜索
									</button>
								</div>
							</div>

						</div>
					</div>
					<!---高级搜索结束---->
				</div>


				<div class="row">
					<div class="col-lg-12">
						<div class="ibox">
							<div class="ibox-content">
								<div class="table-responsive ">
									<table class="table table-centerbody table-striped table-condensed text-nowrap" id="editable-sample">
										<thead>
											<tr>
												<th>电商名称</th>
												<th>电商唯一代码</th>
												<th>创建时间</th>
												<th>是否可用</th>
												<th class="text-right">操作</th>
											</tr>
										</thead>
										<tbody>
											<tr>
												<td>房易麦</td>
												<td>17168</td>
												<td>2015-10-09</td>
												<td><a class="btn btn-primary btn-circle btn-sm" type="button" data-userid="1"><i class="fa fa-check"></i></a></td>
												<td class="text-right text-nowrap">
													<div class="btn-group ">
														<button class="btn btn-white btn-sm edit" data-userid="[id]" data-toggle="modal" data-target="#modal-form">
															<i class="fa fa-pencil"></i> 编辑
														</button>
														<button class="btn-white  btn btn-sm rset" data-userid="1" data-toggle="modal" data-target="#myModa-reset">
															<i class="fa fa-eye"></i> 查看
														</button>
														<button class="btn-white  btn btn-sm delete" data-userid="1">
															<i class="fa fa-trash"></i> 删除
														</button>
													</div>
												</td>
											</tr>
											<tr>
												<td>房易麦</td>
												<td>17168</td>
												<td>2015-10-09</td>
												<td><a class="btn btn-primary btn-circle btn-sm" type="button" data-userid="1"><i class="fa fa-check"></i></a></td>
												<td class="text-right text-nowrap">
													<div class="btn-group ">
														<button class="btn btn-white btn-sm edit" data-userid="1" data-toggle="modal" data-target="#modal-form">
															<i class="fa fa-pencil"></i> 编辑
														</button>
														<button class="btn-white  btn btn-sm rset" data-userid="1" data-toggle="modal" data-target="#myModa-reset">
															<i class="fa fa-eye"></i> 查看
														</button>
														<button class="btn-white  btn btn-sm delete" data-userid="1">
															<i class="fa fa-trash"></i> 删除
														</button>
													</div>
												</td>
											</tr>
											<tr>
												<td>房易麦</td>
												<td>17168</td>
												<td>2015-10-09</td>
												<td><a class="btn btn-primary btn-circle btn-sm" type="button" data-userid="1"><i class="fa fa-check"></i></a></td>
												<td class="text-right text-nowrap">
													<div class="btn-group ">
														<button class="btn btn-white btn-sm edit" data-userid="1" data-toggle="modal" data-target="#modal-form">
															<i class="fa fa-pencil"></i> 编辑
														</button>
														<button class="btn-white  btn btn-sm rset" data-userid="1" data-toggle="modal" data-target="#myModa-reset">
															<i class="fa fa-eye"></i> 查看
														</button>
														<button class="btn-white  btn btn-sm delete" data-userid="1">
															<i class="fa fa-trash"></i> 删除
														</button>
													</div>
												</td>
											</tr>
											<tr>
												<td>房易麦</td>
												<td>17168</td>
												<td>2015-10-09</td>
												<td><a class="btn btn-primary btn-circle btn-sm" type="button" data-userid="1"><i class="fa fa-check"></i></a></td>
												<td class="text-right text-nowrap">
													<div class="btn-group ">
														<button class="btn btn-white btn-sm edit" data-userid="1" data-toggle="modal" data-target="#modal-form">
															<i class="fa fa-pencil"></i> 编辑
														</button>
														<button class="btn-white  btn btn-sm rset" data-userid="1" data-toggle="modal" data-target="#myModa-reset">
															<i class="fa fa-eye"></i> 查看
														</button>
														<button class="btn-white  btn btn-sm delete" data-userid="1">
															<i class="fa fa-trash"></i> 删除
														</button>
													</div>
												</td>
											</tr>
											<tr>
												<td>房易麦</td>
												<td>17168</td>
												<td>2015-10-09</td>
												<td><a class="btn btn-primary btn-circle btn-sm" type="button" data-userid="1"><i class="fa fa-check"></i></a></td>
												<td class="text-right text-nowrap">
													<div class="btn-group ">
														<button class="btn btn-white btn-sm edit" data-userid="1" data-toggle="modal" data-target="#modal-form">
															<i class="fa fa-pencil"></i> 编辑
														</button>
														<button class="btn-white  btn btn-sm rset" data-userid="1" data-toggle="modal" data-target="#myModa-reset">
															<i class="fa fa-eye"></i> 查看
														</button>
														<button class="btn-white  btn btn-sm delete" data-userid="1">
															<i class="fa fa-trash"></i> 删除
														</button>
													</div>
												</td>
											</tr>
											<tr>
												<td>房易麦</td>
												<td>17168</td>
												<td>2015-10-09</td>
												<td><a class="btn btn-primary btn-circle btn-sm" type="button" data-userid="1"><i class="fa fa-check"></i></a></td>
												<td class="text-right text-nowrap">
													<div class="btn-group ">
														<button class="btn btn-white btn-sm edit" data-userid="1" data-toggle="modal" data-target="#modal-form">
															<i class="fa fa-pencil"></i> 编辑
														</button>
														<button class="btn-white  btn btn-sm rset" data-userid="1" data-toggle="modal" data-target="#myModa-reset">
															<i class="fa fa-eye"></i> 查看
														</button>
														<button class="btn-white  btn btn-sm delete" data-userid="1">
															<i class="fa fa-trash"></i> 删除
														</button>
													</div>
												</td>
											</tr>
											<tr>
												<td>房易麦</td>
												<td>17168</td>
												<td>2015-10-09</td>
												<td><a class="btn btn-primary btn-circle btn-sm" type="button" data-userid="1"><i class="fa fa-check"></i></a></td>
												<td class="text-right text-nowrap">
													<div class="btn-group ">
														<button class="btn btn-white btn-sm edit" data-userid="1" data-toggle="modal" data-target="#modal-form">
															<i class="fa fa-pencil"></i> 编辑
														</button>
														<button class="btn-white  btn btn-sm rset" data-userid="1" data-toggle="modal" data-target="#myModa-reset">
															<i class="fa fa-eye"></i> 查看
														</button>
														<button class="btn-white  btn btn-sm delete" data-userid="1">
															<i class="fa fa-trash"></i> 删除
														</button>
													</div>
												</td>
											</tr>
											<tr>
												<td>房易麦</td>
												<td>17168</td>
												<td>2015-10-09</td>
												<td><a class="btn btn-primary btn-circle btn-sm" type="button" data-userid="1"><i class="fa fa-check"></i></a></td>
												<td class="text-right text-nowrap">
													<div class="btn-group ">
														<button class="btn btn-white btn-sm edit" data-userid="1" data-toggle="modal" data-target="#modal-form">
															<i class="fa fa-pencil"></i> 编辑
														</button>
														<button class="btn-white  btn btn-sm rset" data-userid="1" data-toggle="modal" data-target="#myModa-reset">
															<i class="fa fa-eye"></i> 查看
														</button>
														<button class="btn-white  btn btn-sm delete" data-userid="1">
															<i class="fa fa-trash"></i> 删除
														</button>
													</div>
												</td>
											</tr>
											<tr>
												<td>房易麦</td>
												<td>17168</td>
												<td>2015-10-09</td>
												<td><a class="btn btn-primary btn-circle btn-sm" type="button" data-userid="1"><i class="fa fa-check"></i></a></td>
												<td class="text-right text-nowrap">
													<div class="btn-group ">
														<button class="btn btn-white btn-sm edit" data-userid="1" data-toggle="modal" data-target="#modal-form">
															<i class="fa fa-pencil"></i> 编辑
														</button>
														<button class="btn-white  btn btn-sm rset" data-userid="1" data-toggle="modal" data-target="#myModa-reset">
															<i class="fa fa-eye"></i> 查看
														</button>
														<button class="btn-white  btn btn-sm delete" data-userid="1">
															<i class="fa fa-trash"></i> 删除
														</button>
													</div>
												</td>
											</tr>
											<tr>
												<td>房易麦</td>
												<td>17168</td>
												<td>2015-10-09</td>
												<td><a class="btn btn-primary btn-circle btn-sm" type="button" data-userid="1"><i class="fa fa-check"></i></a></td>
												<td class="text-right text-nowrap">
													<div class="btn-group ">
														<button class="btn btn-white btn-sm edit" data-userid="1" data-toggle="modal" data-target="#modal-form">
															<i class="fa fa-pencil"></i> 编辑
														</button>
														<button class="btn-white  btn btn-sm rset" data-userid="1" data-toggle="modal" data-target="#myModa-reset">
															<i class="fa fa-eye"></i> 查看
														</button>
														<button class="btn-white  btn btn-sm delete" data-userid="1">
															<i class="fa fa-trash"></i> 删除
														</button>
													</div>
												</td>
											</tr>


										</tbody>
									</table>
								</div>
								<div class="pages border-top">
									<div class="row">
										<div class="col-md-4">
											<div class="m-t-md">当前显示 1 到 10 条，共 57 条</div>
										</div>
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
	<script src="${ctx}/static/js/plugins/sweetalert/sweetalert.min.js" async></script>
	<!---对话框 alert--->
	<script src="${ctx}/static/js/plugins/chosen/chosen.jquery.js"></script>
	<!---下拉菜单--->
	<script src="${ctx}/static/js/plugins/toastr/toastr.min.js" async></script>
	<!---顶部弹出提示--->

	<script>
    $(".chosen-select").chosen({
      no_results_text: '未找到此项',
      width: "100%",
      allow_single_deselect: true,
      disable_search_threshold: 10
    });
    $(document).ready(function() {
      //更改状态
      $('#editable-sample a.btn').on("click", function() {
        var el = $(this);
        var elclass = el[0].className;
        //处理点击效果,先效果然后执行
        if (el.hasClass("btn-default")) {
          $(this).removeClass("btn-default").addClass("btn-primary");
        } else {
          $(this).removeClass("btn-primary").addClass("btn-default");
        }
        //设置成功
        toastr.success('用户 "香溢紫郡－案场经历" 状态已更改为无效！', '状态设置成功！');
        //AJAX操作，执行失败，按钮恢复默认
        //el[0].className=elclass;
        //toastr.error('服务器连接失败，请重试！','状态设置失败！');
      });
      //删除数据
      $('#editable-sample button.delete').on('click', function() {
        var row = $(this).parents("tr")[0];
        var userid = $(this).data("userid");
        swal({
          title: "您确定要删除吗?",
          text: "用户账户删除后将不可恢复!",
          type: "warning",
          showCancelButton: true,
          confirmButtonColor: "#1ab394",
          confirmButtonText: "确定删除！",
          closeOnConfirm: false
        }, function() {
          row.className = "animated bounceOut";
          setTimeout(function() {
            //请求成功返回
            // row.parentNode.removeChild(row);
            //swal("删除成功!", "用户 “香溢紫郡－案场经历” 删除成功！","success");
            //失败
            row.className = "animated fadeInLeft";
            swal("删除失败!", "用户userid=" + userid + " “香溢紫郡－案场经历” 删除失败！", "error");
          }, 1000)
        });
      });
    });
  </script>
</body>
</html>
