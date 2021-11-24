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
    <link href="${ctx}/static/css/plugins/tagsinput/jquery.tagsinput.css" rel="stylesheet">
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
 
<!--                    <div class="col-md-2 col-lg-1">

                            <div  class="stepy-items current-step"><a href="add2.html">基础信息</a></div>

                    </div>
                    <div class="col-md-2 col-lg-1">户型管理</div>
                    <div class="col-md-2 col-lg-1">楼盘相册</div>-->
                    <div class="col-md-12">
                        
                        <div class="stepy-tab">
                            <ul id="" class="stepy-titles clearfix">
                                <li  class="current-step"><div>基础信息</div></li>
                                <li ><a href="${ctx }/view/project/add2"><div>户型管理</div></a></li>
                                <li ><a href="${ctx }/view/project/add3"><div>楼盘相册</div></a></li>
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
                            大城小爱 楼盘信息
                        </div>
                    </div>
                    <div class="ibox-content p-t-slg">
                        <form name="entity" id="input_form" class="form-horizontal">

                            <div class="form-group">
                                <label class="col-sm-12 col-md-3 col-lg-2 control-label" for="name">楼盘名称 <span class="text-danger">*</span></label>
                                <div class="col-sm-12 col-md-9 col-lg-10">
                                    <input type="text" id="name" name="name" value="" placeholder="请输入楼盘全称"  class="form-control" required>
                                </div>
                            </div>

                            <div class="form-group">
                                <label class="col-sm-12 col-md-3 col-lg-2 control-label" for="shortName">城市  <span class="text-danger">*</span></label>
                                <div class="col-sm-12 col-md-9 col-lg-10">
                                    <input type="text" id="shortName" name="shortName" value="" placeholder="请输入楼盘的简称"  class="form-control" required>
                                </div>
                            </div>

                            <div class="form-group">
                                <label class="col-sm-12 col-md-3 col-lg-2 control-label" for="address">楼盘地址  <span class="text-danger">*</span></label>
                                <div class="col-sm-12 col-md-9 col-lg-10">
                                    <input type="text" id="address" name="address" value="" placeholder="请输入楼盘地址"  class="form-control" required>
                                </div>
                            </div>

                            <div class="form-group">
                                <label class="col-sm-12 col-md-3 col-lg-2 control-label" for="smsPrefix">开发商保护期  <span class="text-danger">*</span></label>
                                <div class="col-sm-12 col-md-9 col-lg-10">
                                    <div class="input-group">
                                        <input type="text" id="smsPrefix" name="smsPrefix" value="" placeholder="请输入短信前缀"  class="form-control" required>
                                        <span class="input-group-addon">天,-1表示永久保护</span>
                                    </div>
                                </div>
                            </div>
                            <div class="hr-line-dashed"></div>
                            <div class="form-group">
                                <label class="col-sm-12 col-md-3 col-lg-2 control-label">建筑类别</label>
                                <div class="col-sm-12 col-md-9 col-lg-10">
                                    <label class="checkbox-inline p-l-n"><input type="checkbox" class="i-checks" value="1" > 板楼 </label>
                                    <label class="checkbox-inline"><input type="checkbox" class="i-checks" value="2" checked> 塔楼 </label>
                                    <label class="checkbox-inline"><input type="checkbox" class="i-checks" value="3" > 独栋 </label>
                                    <label class="checkbox-inline"><input type="checkbox" class="i-checks" value="4" > 联排 </label>
                                    <label class="checkbox-inline"><input type="checkbox" class="i-checks" value="5" > 双拼 </label>
                                    <label class="checkbox-inline"><input type="checkbox" class="i-checks" value="6" > 叠拼 </label>
                                    <label class="checkbox-inline"><input type="checkbox" class="i-checks" value="7" > 低层 </label>
                                    <label class="checkbox-inline"><input type="checkbox" class="i-checks" value="8" checked> 多层 </label>
                                    <label class="checkbox-inline"><input type="checkbox" class="i-checks" value="9" > 中高层 </label>
                                    <label class="checkbox-inline"><input type="checkbox" class="i-checks" value="10" > 高层 </label>
                                </div>
                            </div>

                            <div class="form-group">
                                <label class="col-sm-12 col-md-3 col-lg-2 control-label">物业类型</label>
                                <div class="col-sm-12 col-md-9 col-lg-10">
                                    <label class="checkbox-inline p-l-n"><input type="checkbox" class="i-checks" value="1" > 住宅 </label>
                                    <label class="checkbox-inline"><input type="checkbox" class="i-checks" value="2" checked > 别墅 </label>
                                    <label class="checkbox-inline"><input type="checkbox" class="i-checks" value="3" > 商铺 </label>
                                    <label class="checkbox-inline"><input type="checkbox" class="i-checks" value="4" > 写字楼 </label>
                                    <label class="checkbox-inline"><input type="checkbox" class="i-checks" value="5" checked> 商住 </label>
                                    <label class="checkbox-inline"><input type="checkbox" class="i-checks" value="6" > 酒店式公寓 </label>
                                </div>
                            </div>

                            <div class="form-group">
                                <label class="col-sm-12 col-md-3 col-lg-2 control-label">装修情况</label>
                                <div class="col-sm-12 col-md-9 col-lg-10">
                                    <label class="checkbox-inline p-l-n"><input type="checkbox" class="i-checks" value="1" checked> 毛坯 </label>
                                    <label class="checkbox-inline"><input type="checkbox" class="i-checks" value="2" > 精装 </label>
                                </div>
                            </div>

                            <div class="form-group">
                                <label class="col-sm-12 col-md-3 col-lg-2 control-label">楼盘标签</label>
                                <div class="col-sm-12 col-md-9 col-lg-10">
                                    <input id="tags_1" type="text" class="tags" value="地铁,学区房,徐汇商团,家乐福,地铁1号线,地铁2号线" />
                                </div>
                            </div>

                            <div class="hr-line-dashed"></div>
                            <div class="form-group">
                                <label class="col-sm-12 col-md-3 col-lg-2 control-label">开发商 </label>
                                <div class="col-sm-12 col-md-9 col-lg-10">
                                        <input type="text" value="" placeholder="开发商名称"  class="form-control">
                                </div>
                            </div>

                            <div class="form-group">
                                <label class="col-sm-12 col-md-3 col-lg-2 control-label">容积率 </label>
                                <div class="col-sm-12 col-md-9 col-lg-10">
                                    <div class="input-group">
                                        <input type="text" value="" placeholder="输入容积率"  class="form-control">
                                        <span class="input-group-addon">%</span>
                                    </div>
                                </div>
                            </div>

                            <div class="form-group">
                                <label class="col-sm-12 col-md-3 col-lg-2 control-label">绿化率 </label>
                                <div class="col-sm-12 col-md-9 col-lg-10">
                                    <div class="input-group">
                                        <input type="text" value="" placeholder="小区绿化率占比"  class="form-control">
                                        <span class="input-group-addon">%</span>
                                    </div>
                                </div>
                            </div>

                            <div class="form-group">
                                <label class="col-sm-12 col-md-3 col-lg-2 control-label">绿化率 </label>
                                <div class="col-sm-12 col-md-9 col-lg-10">
                                    <div class="input-group">
                                        <input type="text" value="" placeholder="输入产权年限"  class="form-control">
                                        <span class="input-group-addon">年</span>
                                    </div>
                                </div>
                            </div>

                            <div class="hr-line-dashed"></div>

                            <div class="form-group">
                                <label class="col-sm-12 col-md-3 col-lg-2 control-label">物业公司 </label>
                                <div class="col-sm-12 col-md-9 col-lg-10">
                                    <input type="text" value="" placeholder="物业公司全称"  class="form-control">
                                </div>
                            </div>

                            <div class="form-group">
                                <label class="col-sm-12 col-md-3 col-lg-2 control-label">物业费 </label>
                                <div class="col-sm-12 col-md-9 col-lg-10">
                                    <div class="input-group">
                                        <input type="text" value="" placeholder="输入每 “ 平米/月 ” 的物业费用"  class="form-control">
                                        <span class="input-group-addon">元/平方米/月</span>
                                    </div>
                                </div>
                            </div>

                            <div class="form-group">
                                <label class="col-sm-12 col-md-3 col-lg-2 control-label">停车位 </label>
                                <div class="col-sm-12 col-md-9 col-lg-10">
                                    <div class="input-group">
                                        <input type="text" value="" placeholder="规划停车位总数"  class="form-control">
                                        <span class="input-group-addon">个</span>
                                    </div>
                                </div>
                            </div>

                            <div class="form-group">
                                <label class="col-sm-12 col-md-3 col-lg-2 control-label">规划户数 </label>
                                <div class="col-sm-12 col-md-9 col-lg-10">
                                    <div class="input-group">
                                        <input type="text" value="" placeholder="总规划户数"  class="form-control">
                                        <span class="input-group-addon">户</span>
                                    </div>
                                </div>
                            </div>

                            <div class="form-group">
                                <label class="col-sm-12 col-md-3 col-lg-2 control-label">单价 </label>
                                <div class="col-sm-12 col-md-9 col-lg-10">
                                    <div class="input-group">
                                        <input type="text" value="" placeholder="每平方米单价"  class="form-control">
                                        <span class="input-group-addon">元/平方米</span>
                                    </div>
                                </div>
                            </div>

                            <div class="form-group">
                                <label class="col-sm-12 col-md-3 col-lg-2 control-label">总价范围 </label>
                                <div class="col-sm-12 col-md-9 col-lg-10">
                                    <div class="input-group">
                                        <input type="text" value="" placeholder="最低总价/套"  class="form-control">
                                        <span class="input-group-addon" style="background: #eee">至</span>
                                        <input type="text" value="" placeholder="最高总价/套"  class="form-control">
                                        <span class="input-group-addon">元/套</span>
                                    </div>
                                </div>
                            </div>

                            <div class="form-group" id="data_1">
                                <label class="col-sm-12 col-md-3 col-lg-2 control-label">开盘时间 </label>
                                <div class="col-sm-12 col-md-9 col-lg-10">
                                    <div class="input-group date">
                                        <span class="input-group-addon"><i class="fa fa-calendar"></i></span>
                                        <input type="text" value="" placeholder="请选择开盘时间"  class="form-control">
                                    </div>
                                </div>
                            </div>

                            <div class="form-group" id="data_2">
                                <label class="col-sm-12 col-md-3 col-lg-2 control-label">交房时间 </label>
                                <div class="col-sm-12 col-md-9 col-lg-10">
                                    <div class="input-group">
                                        <span class="input-group-addon">
                                            <label class="checkbox-inline p-l-n p-t-n"><input type="radio" name="colseType" class=" jdate" value="现房" checked > 现房 </label>
                                            <label class="checkbox-inline p-t-n"><input type="radio" name="colseType" class=" jdate" value="期房" > 期房 </label>
                                        </span>
                                        <input type="text" value="" name="colseDay" disabled placeholder="请选择交房时间"  class="form-control date" id="colseDay">
                                    </div>
                                </div>
                            </div>
                            <div class="hr-line-dashed"></div>
                            <div class="form-group">
                                <label class="col-sm-12 col-md-3 col-lg-2 control-label">公交配套 </label>
                                <div class="col-sm-12 col-md-9 col-lg-10">
                                    <textarea  maxlength="255" rows="2"  placeholder="周边的公交线路"  class="form-control"></textarea>
                                </div>
                            </div>

                            <div class="form-group">
                                <label class="col-sm-12 col-md-3 col-lg-2 control-label">地铁配套 </label>
                                <div class="col-sm-12 col-md-9 col-lg-10">
                                    <textarea maxlength="255" rows="2"  placeholder="周边的地铁线路"  class="form-control"></textarea>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-12 col-md-3 col-lg-2 control-label">学校配套 </label>
                                <div class="col-sm-12 col-md-9 col-lg-10">
                                    <textarea maxlength="255" rows="2"  placeholder="周边的学校"  class="form-control"></textarea>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-12 col-md-3 col-lg-2 control-label">银行配套 </label>
                                <div class="col-sm-12 col-md-9 col-lg-10">
                                    <textarea maxlength="255" rows="2"  placeholder="周边的银行"  class="form-control"></textarea>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-12 col-md-3 col-lg-2 control-label">医院配套 </label>
                                <div class="col-sm-12 col-md-9 col-lg-10">
                                    <textarea maxlength="255" rows="2"  placeholder="周边的医院"  class="form-control"></textarea>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-12 col-md-3 col-lg-2 control-label">其它配套 </label>
                                <div class="col-sm-12 col-md-9 col-lg-10">
                                    <textarea maxlength="255" rows="2"  placeholder="周边的其它配套设施"  class="form-control"></textarea>
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
    <script src="${ctx}/static/js/plugins/tagsinput/jquery.tagsinput.js"></script>
    <script src="${ctx}/static/js/plugins/datapicker/bootstrap-datepicker.js"></script>


    <script>
        $(document).ready(function () {
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

            $(".jdate").change(function(){
                var c=$(this).val();
                var b=$("#colseDay");
                if(c=="期房"){
                    b.attr("disabled",false)
                }else{
                    b.val("").attr("disabled",true)
                }
            });

            $('.i-checks').iCheck({  //
                checkboxClass: 'icheckbox_minimal-green',
                radioClass: 'iradio_minimal-green'
            });

            $('#tags_1').tagsInput({
                width:'auto',
                maxChars:"4",

            });

            $('#data_1 .input-group.date').datepicker({
                todayBtn: "linked",
                keyboardNavigation: false,
                forceParse: false,
                calendarWeeks: true,
                autoclose: true
            });

            $('#data_2 input.date').datepicker({
                todayBtn: "linked",
                keyboardNavigation: false,
                forceParse: false,
                calendarWeeks: true,
                autoclose: true
            });


        })
    </script>
</body>
</html>
