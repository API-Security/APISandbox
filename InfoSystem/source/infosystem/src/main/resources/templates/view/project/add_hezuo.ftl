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
    <link href="${ctx}/static/css/plugins/iCheck/green.css" rel="stylesheet">
    <link href="${ctx}/static/css/plugins/datapicker/datepicker3.css" rel="stylesheet">
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
                    <h2>楼盘管理</h2>
                    <ol class="breadcrumb">
                        <li><a href="${ctx }/index">管理首页</a></li>
                        <li>楼盘管理</li>
                        <li class="active">新增合作楼盘</li>
                    </ol>
                </div>
            </div>

            <!-----内容区域---->
            <div class="wrapper wrapper-content animated fadeInRight">
                <div class="ibox float-e-margins">
                    <div class="ibox-heading">
                        <div class="ibox-title">
                            新增合作楼盘
                        </div>
                    </div>
                    <div class="ibox-content p-t-slg">
                        <form name="entity" id="input_form" class="form-horizontal">
                            <div class="form-group">
                                <label class="col-md-2 control-label"><span class="text-danger">*</span> 城市</label>
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
                                <label class="col-md-2 control-label"><span class="text-danger">*</span> 楼盘名称</label>
                                <div class="col-md-10"><input type="text" class="form-control" value="" placeholder="" required></div>
                            </div>
                            <div class="form-group">
                                <label class="col-md-2 control-label" for="shortName"><span class="text-danger">*</span> 项目经理  </label>
                                <div class="col-md-10">
                                    <input type="text" id="shortName" name="shortName" value="" placeholder="请输入楼盘的简称"  class="form-control" required>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-md-2 control-label" for="shortName"><span class="text-danger">*</span> 合作起始日期 </label>
                                <div class="col-md-10" id="data">
                                    <div class="input-daterange input-group" id="datepicker">
                                        <input type="text" class="input-sm form-control" name="start" value="09/07/2015" required>
                                        <span class="input-group-addon">至</span>
                                        <input type="text" class="input-sm form-control" name="end" value="10/07/2015" required>
                                    </div>
                                </div>
                            </div>


                            <div class="form-group">
                                <label class="col-md-2 control-label" for="name"><span class="text-danger">*</span> 上下线</label>
                                <div class="col-md-10">
                                    <label class="checkbox-inline p-l-n"><input name="onLine" type="radio" class="i-checks" value="1" > 上线 </label>
                                    <label class="checkbox-inline"><input name="onLine" type="radio" class="i-checks" value="2" checked > 下线 </label>
                                </div>
                            </div>
                            <div class="hr-line-dashed"></div>
                            <div class="form-group">
                                <label class="col-md-2 control-label"><span class="text-danger">*</span> 联系人 </label>
                                <div class="col-md-10">
                                    <input type="text" value="" placeholder="输入联系人"  class="form-control">
                                </div>
                            </div>

                            <div class="form-group">
                                <label class="col-md-2 control-label"><span class="text-danger">*</span> 联系人电话 </label>
                                <div class="col-md-10">
                                    <input type="text" value="" placeholder="输入容积率"  class="form-control">
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-md-2 control-label" for="daikanPro"><span class="text-danger">*</span> 报备生效期  </label>
                                <div class="col-md-10">
                                    <div class="input-group">
                                        <input type="text" id="daikanPro" name="daikanPro" value="" placeholder="生效了才可以推荐/带看"  class="form-control" required>
                                        <span class="input-group-addon">分钟</span>
                                    </div>
                                </div>
                            </div>

                            <div class="form-group">
                                <label class="col-md-2 control-label" for="daofangPro">到访保护期  <span class="text-danger">*</span></label>
                                <div class="col-md-10">
                                    <div class="input-group">
                                        <input type="text" id="daofangPro" name="daofangPro" value="" placeholder="-1表示永久保护，到访的客户需在保护期内成交"  class="form-control" required>
                                        <span class="input-group-addon">天</span>
                                    </div>
                                </div>
                            </div>


                            <div class="form-group">
                                <label class="col-md-2 control-label" for="tuijianPro">推荐保护期  <span class="text-danger">*</span></label>
                                <div class="col-md-10">
                                    <div class="input-group">
                                        <input type="text" id="tuijianPro" name="tuijianPro" value="" placeholder="-1表示永久保护，推荐的客户需在保护期内到访"  class="form-control" required>
                                        <span class="input-group-addon">天</span>
                                    </div>
                                </div>
                            </div>


                            <div class="hr-line-dashed"></div>
                            <div class="form-group">
                                <label class="col-md-2 control-label">客服过滤开关</label>
                                <div class="col-md-10">
                                    <label class="checkbox-inline p-l-n"><input type="radio" name="radio1" class="i-checks" value="1" > 打开 </label>
                                    <label class="checkbox-inline"><input type="radio" name="radio1" class="i-checks" value="2" checked> 关闭 </label>
                                </div>
                            </div>

                            <div class="form-group">
                                <label class="col-md-2 control-label">案场接受客户方式</label>
                                <div class="col-md-10">
                                    <label class="checkbox-inline p-l-n"><input type="radio" name="radio2" class="i-checks" value="1" > 人式审核 </label>
                                    <label class="checkbox-inline"><input type="radio" name="radio2" class="i-checks" value="2" checked > 全部接受 </label>
                                </div>
                            </div>


                            <div class="hr-line-dashed"></div>
                            <div class="form-group">
                                <label class="col-md-2 control-label"><span class="text-danger">*</span> 专享优惠 </label>
                                <div class="col-md-10">
                                    <textarea  maxlength="255" rows="2"  placeholder="专享优惠"  class="form-control"></textarea>
                                </div>
                            </div>

                            <div class="form-group">
                                <div class="col-sm-4 col-sm-offset-2">
                                    <button class="btn btn-primary" type="submit"><i class="fa fa-check"></i> 填写完成，提交！</button>
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
    <script src="${ctx}/static/js/plugins/chosen/chosen.jquery.js"></script><!---下拉菜单--->
    <script src="${ctx}/static/js/plugins/toastr/toastr.min.js" async></script><!---顶部弹出提示--->
    <script src="${ctx}/static/js/plugins/iCheck/icheck.min.js"></script>
    <script src="${ctx}/static/js/plugins/validate/jquery.validate.min.js"></script>  <!---表单验证--->
    <script src="${ctx}/static/js/plugins/validate/validate-cn.js"></script> <!---validate 自定义方法--->
    <script src="${ctx}/static/js/plugins/datapicker/bootstrap-datepicker.js"></script>


    <script>
        $(document).ready(function () {
            $(".chosen-select").chosen({no_results_text:'未找到此项',width:"100%",allow_single_deselect:true,disable_search_threshold:10});
            $("#input_form").validate({
                debug: true,
                submitHandler: function (form) {
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
                                toastr.error('错误代码：登陆超时，请重新登陆！', '配置修改失败！');
                            }
                        }
                );
            }


            $('.i-checks').iCheck({  //
                checkboxClass: 'icheckbox_minimal-green',
                radioClass: 'iradio_minimal-green'
            });

            $('#data .input-daterange').datepicker({
                keyboardNavigation: false,
                forceParse: false,
                autoclose: true
            });

        })
    </script>
</body>
</html>
