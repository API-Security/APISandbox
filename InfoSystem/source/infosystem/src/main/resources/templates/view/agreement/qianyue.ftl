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
                <h2>合同管理</h2>
                <ol class="breadcrumb">
                    <li>
                        <a href="${ctx }/index">管理首页</a>
                    </li>
                    <li>
                        合同管理
                    </li>
                    <li class="active">
                        签约
                    </li>
                </ol>
            </div>
        </div>

        <!-----内容区域---->
        <div class="wrapper wrapper-content animated fadeInRight">
            <div class="row">
                <div class="col-md-6">
                    <div class="ibox">
                        <div class="ibox-heading">
                            <div class="ibox-title">
                                <h4>荆子凡  签约 <small>（合同编号：00966000004151112103907）</small></h4>
                            </div>
                        </div>
                        <div class="ibox-content p-t-md">
                            <form class="form-horizontal" id="add_form" >
                                <div class="form-group">
                                    <label class="col-md-3 control-label">项目名称 </label>
                                    <div class="col-md-9">
                                        <p class="form-control-static"><b>测试多媒体大厦全称</b></p>
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label class="col-md-3 control-label">客户1名称 <span class="text-danger">*</span></label>
                                    <div class="col-md-9"><input type="text" class="form-control" value="" placeholder="" required></div>
                                </div>

                                <div class="form-group">
                                    <label class="col-md-3 control-label">客户1手机 <span class="text-danger">*</span></label>
                                    <div class="col-md-9"><input type="text" class="form-control" value="" placeholder="" required></div>
                                </div>

                                <div class="form-group">
                                    <label class="col-md-3 control-label">客户2名称 <span class="text-danger">*</span></label>
                                    <div class="col-md-9"><input type="text" class="form-control" value="" placeholder="" required></div>
                                </div>

                                <div class="form-group">
                                    <label class="col-md-3 control-label">客户2手机 <span class="text-danger">*</span></label>
                                    <div class="col-md-9"><input type="text" class="form-control" value="" placeholder="" required></div>
                                </div>
                                <div class="hr-line-dashed"></div>
                                <div class="form-group">
                                    <label class="col-md-3 control-label">认购日期 <span class="text-danger">*</span></label>
                                    <div class="col-md-9">
                                        <div class="input-group date">
                                            <span class="input-group-addon"><i class="fa fa-calendar"></i></span>
                                            <input type="text" class="form-control" value="" placeholder="" required>
                                        </div>
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label class="col-md-3 control-label">认购协议编号 <span class="text-danger">*</span></label>
                                    <div class="col-md-9">
                                        <input type="text" class="form-control" value="" placeholder="" required>
                                    </div>
                                </div>
                                <div class="hr-line-dashed"></div>
                                <div class="form-group">
                                    <label class="col-md-3 control-label">房源 <span class="text-danger">*</span></label>
                                    <div class="col-md-9">
                                        <select name="property" class="form-control">
                                            <option value="">--请选择--</option>
                                            <option value="1">住宅</option>
                                            <option value="2">别墅</option>
                                            <option value="3">商铺</option>
                                            <option value="4">写字楼</option>
                                            <option value="5">酒店式公寓</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-md-3 control-label">产品 <span class="text-danger">*</span></label>
                                    <div class="col-md-9">
                                        <select name="property" class="form-control">
                                            <option value="">--请选择--</option>
                                            <option value="1">住宅</option>
                                            <option value="2">别墅</option>
                                            <option value="3">商铺</option>
                                            <option value="4">写字楼</option>
                                            <option value="5">酒店式公寓</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-md-3 control-label">合同面积 <span class="text-danger">*</span></label>
                                    <div class="col-md-9">
                                        <div class="input-group">
                                            <input type="text" class="form-control" value="" placeholder="" required>
                                            <span class="input-group-addon"> M&sup2; </span>
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-md-3 control-label">合同金额 <span class="text-danger">*</span></label>
                                    <div class="col-md-9">
                                        <div class="input-group">
                                            <input type="text" class="form-control" value="" placeholder="" required>
                                            <span class="input-group-addon"> 元 </span>
                                        </div>
                                    </div>
                                </div>
                                <div class="hr-line-dashed"></div>
                                <div class="form-group">
                                    <label class="col-md-3 control-label">签约日期 <span class="text-danger">*</span></label>
                                    <div class="col-md-9">
                                        <div class="input-group date">
                                            <span class="input-group-addon"><i class="fa fa-calendar"></i></span>
                                            <input type="text" class="form-control" value="" placeholder="" required>
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-md-3 control-label">合同关键页 <span class="text-danger">*</span></label>
                                    <div class="col-md-9">
                                        <input type="file" class="file-loading addFile" id="addFile" name="logoFile" multiple >
                                        <span class="help-block m-b-none">为了合同内容清晰可辩，上传图片宽度至少在 1000px 以上.</span>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-3 control-label">说明备注 </label>
                                    <div class="col-sm-9">
                                        <textarea maxlength="255" rows="4"  placeholder="请输入小于225个字的内容"  class="form-control"></textarea>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="col-sm-4 col-sm-offset-3">
                                        <button class="btn btn-primary" type="submit" id="myButton"><i class="fa fa-check"></i> 填写完成，提交！</button>
                                        <button class="btn btn-white" type="reset">取消</button>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="ibox float-e-margins">
                        <div class="ibox-title">
                            <h5>操作记录</h5>
                        </div>
                        <div class="ibox-content">

                            <div>
                                <div class="feed-activity-list">

                                    <div class="feed-element">
                                        <a href="#" class="pull-left">
                                            <img alt="image" class="img-circle" src="${ctx}/static/img/a1.jpg">
                                        </a>
                                        <div class="media-body ">
                                            <small class="pull-right text-navy">1m ago</small>
                                            <strong class="text-info">案场经理 陈小林</strong> 签定 <strong> 由预约转认购</strong>. <br>
                                            <small class="text-muted">2015/11/20 12:10:00</small>
                                        </div>
                                    </div>

                                    <div class="feed-element">
                                        <a href="#" class="pull-left">
                                            <img alt="image" class="img-circle" src="${ctx}/static/img/profile.jpg">
                                        </a>
                                        <div class="media-body ">
                                            <small class="pull-right">5m ago</small>
                                            <strong class="text-info">什么什么经理</strong> 创建楼盘 <strong>大宁小城</strong>. <br>
                                            <small class="text-muted">Today 5:60 pm - 12.06.2014</small>
                                        </div>
                                    </div>

                                    <div class="feed-element">
                                        <a href="#" class="pull-left">
                                            <img alt="image" class="img-circle" src="${ctx}/static/img/a4.jpg">
                                        </a>
                                        <div class="media-body ">
                                            <small class="pull-right text-navy">5h ago</small>
                                            <strong  class="text-info">超级管理员</strong> 审核楼盘 <strong>大宁小城</strong>. <br>
                                            <small class="text-muted">Yesterday 1:21 pm - 11.06.2014</small>
                                            <div class="well">
                                                可以显示操作的系统备注！
                                            </div>
                                        </div>
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
<script src="${ctx}/static/js/plugins/toastr/toastr.min.js" async></script><!---顶部弹出提示--->
<script src="${ctx}/static/js/plugins/validate/jquery.validate.min.js"></script>  <!---表单验证--->
<script src="${ctx}/static/js/plugins/validate/validate-cn.js"></script> <!---validate 自定义方法--->
<script src="${ctx}/static/js/plugins/datapicker/bootstrap-datepicker.js"></script>
<script src="${ctx}/static/js/plugins/fileinput/fileinput.min.js" ></script><!---文件上传--->
<script src="${ctx}/static/js/plugins/fileinput/fileinput_locale_zh.js" ></script><!---文件上传中文配置--->
<script src="${ctx}/static/js/plugins/loading/jquery.loading.js"></script>

<script>

    $(document).ready(function () {
        $('.input-group.date').datepicker({
            todayBtn: "linked",
            keyboardNavigation: false,
            forceParse: false,
            calendarWeeks: true,
            autoclose: true
        });


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
                        error:function(error){
                            setTimeout(function(){
                                $('#myButton').button('reset');
                                $("#rslide").rslide("hide")
                            },3000);
                            toastr.error('错误代码：登陆超时，请重新登陆！', '配置修改失败！');
                        }
                    }
            );
        }


        $("#addFile").fileinput({
            uploadUrl: '#',    //服务端上传地址
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
        })
    });


</script>
</body>
</html>
