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
                <h2>退款信息</h2>
                <ol class="breadcrumb">
                    <li>
                        <a href="${ctx }/index">管理首页</a>
                    </li>
                    <li>
                        退款信息
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
                                <h5>合同信息</h5>
                            </div>
                        </div>
                        <div class="ibox-content p-t-md">

                            <table class="table table-hover table-noborder">
                                <tbody>
                                <tr>
                                    <td class="text-right text-nowrap" style="width: 145px"><b>客户信息：</b></td>
                                    <td>客户一：陈小林（13598821365），客户二：陈小林（13598821365）</td>
                                </tr>
                                <tr>
                                    <td class="text-right text-nowrap"><b>房源信息：</b></td>
                                    <td>测试多媒体大厦</td>
                                </tr>
                                <tr>
                                    <td class="text-right text-nowrap"><b>经纪人信息：</b></td>
                                    <td>经纪人：明明  公司：测试经纪公司  门店：多媒体门店</td>
                                </tr>
                                <tr>
                                    <td class="text-right text-nowrap"><b>置业顾问信息：</b></td>
                                    <td>置业顾问：--</td>
                                </tr>
                                <tr>
                                    <td class="text-right text-nowrap"><b>合同状态：</b></td>
                                    <td>签约审核通过</td>
                                </tr>
                                <tr>
                                    <td class="text-right text-nowrap"><b>收款状态：</b></td>
                                    <td>应收：20000.0  已收：20000.0</td>
                                </tr>
                                <tr>
                                    <td class="text-right text-nowrap"><b>预约时间：</b></td>
                                    <td>2015-10-20</td>
                                </tr>
                                <tr>
                                    <td class="text-right text-nowrap"><b>认购时间：</b></td>
                                    <td>2015-10-20</td>
                                </tr>
                                <tr>
                                    <td class="text-right text-nowrap"><b>签约时间：</b></td>
                                    <td>2015-11-05</td>
                                </tr>
                                <tr>
                                    <td class="text-right text-nowrap"><b>取消时间：</b></td>
                                    <td></td>
                                </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                    <div class="ibox float-e-margins">
                        <div class="ibox-title">
                            <h5>退款信息</h5>
                        </div>
                        <div class="ibox-content">
                            <table class="table table-hover table-noborder">
                                <tbody>
                                <tr>
                                    <td class="text-right text-nowrap" style="width: 145px"><b>退款时间：</b></td>
                                    <td>77667899877</td>
                                </tr>
                                <tr>
                                    <td class="text-right text-nowrap"><b>退款金额：</b></td>
                                    <td>62736738189101001</td>
                                </tr>
                                <tr>
                                    <td class="text-right text-nowrap"><b>退款申请书：</b></td>
                                    <td><a href="#">点击查看</a></td>
                                </tr>
                                <tr>
                                    <td class="text-right text-nowrap"><b>退款协议书：</b></td>
                                    <td>13915425536</td>
                                </tr>
                                <tr>
                                    <td class="text-right text-nowrap"><b>客户银行卡号：</b></td>
                                    <td>审核通过</td>
                                </tr>
                                <tr>
                                    <td class="text-right text-nowrap"><b>客户银行卡姓名：</b></td>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td class="text-right text-nowrap"><b>客户银行卡开户行：</b></td>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td class="text-right text-nowrap"><b>客户身份证：</b></td>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td class="text-right text-nowrap"><b>银行卡正面照：</b></td>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td class="text-right text-nowrap"><b>备注：</b></td>
                                    <td></td>
                                </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="ibox">
                        <div class="ibox-heading">
                            <div class="ibox-title">
                                <h5>退款操作日志</h5>
                            </div>
                        </div>
                        <div class="ibox-content p-t-md">
                            <div class="table-responsive ">
                                <table class="table table-centerbody table-striped table-condensed text-nowrap" id="editable-sample">
                                    <thead>
                                    <tr>
                                        <th>操作时间 </th>
                                        <th>动作 </th>
                                        <th>操作人员 </th>
                                        <th>备注 </th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <tr>
                                        <td>2015-11-11 22:22:22</td>
                                        <td>审核通过</td>
                                        <td>陈小林</td>
                                        <td>经纪人：明明 公司：测试经纪公司 门店：多媒体门店</td>
                                    </tr>
                                    <tr>
                                        <td>2015-11-11 22:22:22</td>
                                        <td>审核通过</td>
                                        <td>陈小林</td>
                                        <td>经纪人：明明 公司：测试经纪公司 门店：多媒体门店</td>
                                    </tr>
                                    </tbody>
                                </table>
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
