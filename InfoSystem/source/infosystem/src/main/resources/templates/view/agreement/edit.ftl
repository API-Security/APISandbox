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
    <link href="${ctx}/static/css/plugins/sweetalert/sweetalert.css" rel="stylesheet">
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
            <div class="row m-b-sm">
                <div class="col-md-12">
                    <button class="btn btn-primary btn-lg m-r-sm"><i class="fa fa-edit"></i> 签约</button>
                    <button class="btn btn-primary btn-lg m-r-sm"><i class="fa fa-minus-circle"></i> 取消</button>
                    <button class="btn btn-primary btn-lg"><i class="fa fa-mail-reply"></i> 返回</button>
                </div>
            </div>
            <div class="row">
                <div class="col-md-6">
                    <div class="ibox">
                        <div class="ibox-heading">
                            <div class="ibox-title">
                                <h5>房源信息</h5>
                                <div class="ibox-tools">
                                    <a class="tool-btn" data-item="house" data-event="edit"><i class="fa fa-pencil"></i> 编辑</a>
                                </div>
                            </div>
                        </div>

                        <div class="ibox-content p-t-md">
                            <form class="form-horizontal" id="house_form" >
                                <div class="form-group">
                                    <label class="col-md-4 col-lg-3 control-label" readonly="readonly">楼盘名称</label>
                                    <div class="col-md-8 col-lg-9"><input type="text" class="form-control" value="" placeholder="" disabled="disabled" readonly="readonly"></div>
                                </div>

                                <div class="form-group">
                                    <label class="col-md-4 col-lg-3 control-label">房源</label>
                                    <div class="col-md-8 col-lg-9">
                                        <select name="property" class="form-control change onchange" disabled="disabled">
                                            <option value="">--请选择--</option>
                                            <option value="1">住宅</option>
                                            <option value="2">别墅</option>
                                            <option value="3">商铺</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-md-4 col-lg-3 control-label">产品类型</label>
                                    <div class="col-md-8 col-lg-9">
                                        <select name="property" class="form-control change" disabled="disabled">
                                            <option value="">--请选择--</option>
                                            <option value="1">住宅</option>
                                            <option value="2">别墅</option>
                                            <option value="3">商铺</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-md-4 col-lg-3 control-label">合同面积</label>
                                    <div class="col-md-8 col-lg-9">
                                        <div class="input-group">
                                            <input type="text" class="form-control change" value="" placeholder="" disabled="disabled">
                                            <span class="input-group-addon"> M&sup2; </span>
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-md-4 col-lg-3 control-label">合同金额</label>
                                    <div class="col-md-8 col-lg-9">
                                        <div class="input-group">
                                            <input type="text" class="form-control change" value="" placeholder="" disabled="disabled">
                                            <span class="input-group-addon"> 元 </span>
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group hidden" id="house_btn">
                                    <div class="col-sm-8 col-sm-offset-4 col-lg-offset-3">
                                        <button class="btn btn-primary" type="submit" id="myButton2"><i class="fa fa-check"></i> 填写完成，提交！</button>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                    <div class="ibox">
                        <div class="ibox-heading">
                            <div class="ibox-title">
                                <h5>客户信息</h5>
                                <div class="ibox-tools">
                                    <a class="tool-btn" data-item="customer" data-event="edit"><i class="fa fa-pencil"></i> 编辑</a>
                                </div>
                            </div>
                        </div>
                        <div class="ibox-content p-t-md">
                            <form class="form-horizontal" id="customer_form" >
                                <div class="form-group">
                                    <label class="col-md-4 col-lg-3 control-label">客户1名称</label>
                                    <div class="col-md-8 col-lg-9"><input type="text" class="form-control" value="陈小林" placeholder="" readonly="readonly" disabled="disabled"></div>
                                </div>

                                <div class="form-group">
                                    <label class="col-md-4 col-lg-3 control-label">客户1手机</label>
                                    <div class="col-md-8 col-lg-9"><input type="text" class="form-control" value="13598821365" placeholder="" readonly="readonly" disabled="disabled"></div>
                                </div>

                                <div class="form-group">
                                    <label class="col-md-4 col-lg-3 control-label">客户2名称</label>
                                    <div class="col-md-8 col-lg-9"><input type="text" class="form-control change" value="陈大宝" placeholder="" disabled="disabled"></div>
                                </div>

                                <div class="form-group">
                                    <label class="col-md-4 col-lg-3 control-label">客户2手机</label>
                                    <div class="col-md-8 col-lg-9"><input type="text" class="form-control change" value="13213213231" placeholder="" disabled="disabled"></div>
                                </div>

                                <div class="form-group">
                                    <label class="col-md-4 col-lg-3 control-label">客户来源</label>
                                    <div class="col-md-8 col-lg-9">
                                        <select name="property" class="form-control change" disabled="disabled" readonly="readonly">
                                            <option value="">--请选择--</option>
                                            <option value="1">住宅</option>
                                            <option value="2">别墅</option>
                                            <option value="3" selected>商铺</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="form-group hidden" id="customer_btn">
                                    <div class="col-sm-8 col-sm-offset-4 col-lg-offset-3">
                                        <button class="btn btn-primary" type="submit" id="myButton"><i class="fa fa-check"></i> 填写完成，提交！</button>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                    <div class="ibox">
                        <div class="ibox-heading">
                            <div class="ibox-title">
                                <h5>合同信息</h5>
                                <div class="ibox-tools">
                                    <a class="tool-btn" data-item="rengou" data-event="edit"><i class="fa fa-pencil"></i> 编辑</a>
                                </div>
                            </div>
                        </div>
                        <div class="ibox-content p-t-md">
                            <form class="form-horizontal" id="rengou_form" >
                                <div class="form-group">
                                    <label class="col-md-4 col-lg-3 control-label">合同编号</label>
                                    <div class="col-md-8 col-lg-9"><input type="text" class="form-control change" value="003325254545" placeholder="" disabled="disabled" readonly="readonly"></div>
                                </div>
                                <div class="form-group">
                                    <label class="col-md-4 col-lg-3 control-label">合同状态</label>
                                    <div class="col-md-8 col-lg-9"><input type="text" class="form-control change" value="认购,已付款,不可结佣" placeholder="" disabled="disabled" readonly="readonly"></div>
                                </div>
                                <div class="form-group">
                                    <label class="col-md-4 col-lg-3 control-label">应付金额</label>
                                    <div class="col-md-8 col-lg-9">
                                        <div class="input-group">
                                            <input type="text" class="form-control change" value="20000.10" placeholder="" disabled="disabled" readonly="readonly">
                                            <span class="input-group-addon"> 元 </span>
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-md-4 col-lg-3 control-label">已付金额</label>
                                    <div class="col-md-8 col-lg-9">
                                        <div class="input-group">
                                            <input type="text" class="form-control change" value="10000.00" placeholder="" disabled="disabled" readonly="readonly">
                                            <span class="input-group-addon"> 元 </span>
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-md-4 col-lg-3 control-label">预约日期</label>
                                    <div class="col-md-8 col-lg-9">
                                        <div class="input-group date">
                                            <span class="input-group-addon"><i class="fa fa-calendar"></i></span>
                                            <input type="text" class="form-control change" value="" placeholder="" disabled="disabled">
                                        </div>
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label class="col-md-4 col-lg-3 control-label">预约协议编号</label>
                                    <div class="col-md-8 col-lg-9"><input type="text" class="form-control change" value="" placeholder="" disabled="disabled"></div>
                                </div>

                                <div class="form-group ">
                                    <label class="col-md-4 col-lg-3 control-label">认购日期</label>
                                    <div class="col-md-8 col-lg-9">
                                        <div class="input-group date " >
                                            <span class="input-group-addon"><i class="fa fa-calendar"></i></span>
                                            <input type="text" class="form-control change" value="" placeholder="" disabled="disabled">

                                        </div>
                                    </div>
                                </div>

                                <div class="form-group ">
                                    <label class="col-md-4 col-lg-3 control-label">认购协议编号</label>
                                    <div class="col-md-8 col-lg-9"><input type="text" class="form-control change" value="" placeholder="" disabled="disabled"></div>
                                </div>

                                <div class="form-group hidden" id="rengou_btn">
                                    <div class="col-sm-8 col-sm-offset-4 col-lg-offset-3">
                                        <button class="btn btn-primary" type="submit" id="myButton3"><i class="fa fa-check"></i> 填写完成，提交！</button>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>



                </div>
                <div class="col-md-6">
                    <div class="ibox float-e-margins">
                        <div class="ibox-title">
                            <h5>合同关键页</h5>
                        </div>
                        <div class="ibox-content">
                            <div class="form-group">

                                    <input type="file" class="file-loading addFile" id="addFile" name="logoFile" multiple >
                                    <span class="help-block m-b-none">为了合同内容清晰可辩，上传图片宽度至少在 1000px 以上.</span>

                            </div>
                        </div>
                    </div>

                    <div class="ibox float-e-margins">
                        <div class="ibox-title">
                            <h5>付款记录</h5>
                        </div>
                        <div class="ibox-content">
                            <div class="table-responsive ">
                                <table class="table table-centerbody table-striped table-condensed text-nowrap" id="editable-sample">
                                    <thead>
                                    <tr>
                                        <th>付款时间 </th>
                                        <th>POS编号 </th>
                                        <th>金额 </th>
                                        <th>缩略卡号 </th>
                                        <th>签购单凭证 </th>
                                        <th>状态</th>
                                        <th>正常</th>
                                        <th class="text-right">操作 </th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <tr>
                                        <td ><a href="view.html" class="td-link">2015-11-11 22:22:22</a></td>
                                        <td>33433444</td>
                                        <td>20000.0</td>
                                        <td>6223456765</td>
                                        <td>201511111111</td>
                                        <td>认购</td>
                                        <td>正常</td>
                                        <td class="text-right">
                                            <div class="btn-group ">
                                                <a class="btn-primary  btn btn-sm cancel" data-infoid="1"><i class="fa fa-minus-circle"></i>  取消</a>
                                            </div>
                                        </td>
                                    </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>

                    <div class="ibox float-e-margins">
                        <div class="ibox-title">
                            <h5>合同操作记录</h5>
                        </div>
                        <div class="ibox-content">
                            <div>
                                <div class="feed-activity-list">
                                    <div class="feed-element">
                                        <a href="#" class="pull-left"><img alt="image" class="img-circle" src="${ctx}/static/img/a1.jpg"></a>
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
<script src="${ctx}/static/js/plugins/sweetalert/sweetalert.min.js" async></script><!---对话框 alert--->
<script src="${ctx}/static/js/plugins/fileinput/fileinput.min.js" ></script><!---文件上传--->
<script src="${ctx}/static/js/plugins/fileinput/fileinput_locale_zh.js" ></script><!---文件上传中文配置--->
<script src="${ctx}/static/js/plugins/loading/jquery.loading.js"></script>

<script>

    $(document).ready(function () {


        //日期控件
        $('.input-group.date').datepicker({
            todayBtn: 'linked',
            keyboardNavigation: false,
            forceParse: false,
            calendarWeeks: true,
            autoclose: true
        });

        //验证提交
        $('#add_form').validate({
            submitHandler: function (form) {
                $('#myButton').button('loading')
                addform(form);
            }
        });
        function addform(form) {
            $.ajax(
                    {
                        url: '?',
                        type: 'post',
                        data: $(form).serialize(),
                        success: function (data) {
                            toastr.success('', '配置修改成功！');
                        },
                        error:function(error){
                            setTimeout(function(){
                                $('#myButton').button('reset');
                                $('#rslide').rslide('hide')
                            },3000);
                            toastr.error('错误代码：登陆超时，请重新登陆！', '配置修改失败！');
                        }
                    }
            );
        }

        //文件上传
        $('#addFile').fileinput({
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
            previewFileType: 'image',   //文件类型
            allowedFileExtensions: ['jpg', 'gif', 'png', 'jpeg'],//文件允许后缀名称
            browseClass: 'btn btn-primary', //自定义浏览按钮样式
            minImageWidth: 1000,
            msgFilesTooLess: '必须上传 <b>{n}</b>个{files}，您可以选择新的文件进行替换. ',
            initialPreview: [],//编辑页面初始化数据
            initialPreviewConfig: [],//通过此方法可以删除服务端上传的图片
            uploadExtraData: function(previewId, index) {
                if (previewId!=undefined && index!=undefined){
                    alert(previewId+','+index)
                }
                return{
                    userid: '10000',
                    username: 'zifan',
                    key: index
                    //classid:classid
                }
            } //扩展AJAX传送数据。
        })

        //编辑脚本
        $('.tool-btn').on('click',function(){
            var ev=$(this).data('event');
            var items=$(this).data('item');

            if(ev=='edit'){
                $('#'+items+'_btn').removeClass("hidden");
                $(this).data('event','cancel');
                $(this).html('<i class="fa fa-times"></i> 取消');
                $('#'+items+'_form').find('.change').removeAttr('disabled');
            }else{
                $('#'+items+'_btn').addClass("hidden");
                $(this).data('event','edit')
                $(this).html('<i class="fa fa-pencil"></i> 编辑');
                $('#'+items+'_form').find('.change').attr('disabled', 'true')
            }
        });
        //取消合同

        $(document).on('click','#editable-sample a.cancel', function () {
            var row=$(this).parents("tr")[0];
            var userid=$(this).data("userid");
            swal({
                title: "您确定要取消该次收款匹配吗?",
                text: "取消后将直接删除，将不能恢复，需要您重新匹配！",
                type: "warning",
                showCancelButton: true,
                cancelButtonText: "放弃",
                confirmButtonColor: "#1ab394",
                confirmButtonText: "确定！",
                closeOnConfirm: false
            }, function () {
                row.className="animated bounceOut";
                setTimeout(function(){
                            //请求成功返回
                            // row.parentNode.removeChild(row);
                            //swal("删除成功!", "用户 “香溢紫郡－案场经历” 删除成功！","success");

                            //失败
                            row.className="animated fadeInLeft";
                            swal("取消失败!", "用户userid="+userid+" “香溢紫郡－案场经历” 删除失败！","error");
                        },1000
                )
            });
        });
    });


</script>
</body>
</html>
