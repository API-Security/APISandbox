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
                            合同列表
                        </li>
                    </ol>
                </div>
            </div>

            <!-----内容区域---->
            <div class="wrapper wrapper-content animated fadeInRight">
                <div class="ibox-content m-b-sm ibox-content-t border-bottom" id="ibox-content">
                    <div class="row">

                        <div class="form-group col-sm-4 col-md-4 col-lg-5">
                            <div class="btn-group">
                                <a class="btn btn-primary active" data-toggle="collapse" data-target="#collapseOne" aria-expanded="false" ><i class="fa fa-plus"></i>  预约</a>
                                <a class="btn btn-primary"  data-toggle="collapse" data-target="#collapseTwo" aria-expanded="false"><i class="fa fa-plus" ></i> 认购 </a>
                            </div>
                        </div>


                        <div class="col-sm-8 col-md-8 col-lg-7 hidden-xs">
                            <div class="row">
                                <div class="form-group col-md-2 hidden-sm">
                                    <input value="" placeholder="合同编号" class="form-control input-sm">
                                </div>
                                <div class="form-group col-md-2 col-sm-4">
                                    <input value="" placeholder="客户手机号" class="form-control input-sm">
                                </div>
                                <div class="form-group col-md-2 hidden-sm" >
                                    <input value="" placeholder="房号" class="form-control input-sm">
                                </div>
                                <div class="form-group col-md-6 col-sm-8">
                                    <div class="input-group ">
                                        <select class="input-sm form-control input-s-sm ">
                                            <option value="0">状态</option>
                                            <option value="1">未售</option>
                                            <option value="2">已售</option>
                                        </select>
                                        <span class="input-group-btn"><button class="btn btn-primary btn-sm m-b-none">搜索</button></span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!----预约操作区 START---->
                    <div class="collapse" id="collapseOne">
                        <div class="border-top m-t-sm sidedown-box" >
                            <div class="row">
                                <div class="form-group col-sm-8 col-md-6 col-lg-5">
                                    <div class="input-group">
                                        <input type="text" value="" placeholder="手机号前三位" class="form-control">
                                        <span class="input-group-addon" style="background:#eee">******</span>
                                        <input type="text" value="" placeholder="手机号后四位" class="form-control">
                                        <span class="input-group-btn"><button class="btn btn-primary" id="search_yuyue"><i class="fa fa-search"></i> 查询预约</button></button></span>
                                    </div>
                                </div>
                                <div class="form-group col-sm-4 col-md-6 col-lg-7" >
                                    <button class="btn btn-warning" data-toggle="rslide" data-target="#add_rslide" data-title="现场客户预约"><i class="fa fa-edit"></i> 作为现场客户预约</button>
                                </div>
                            </div>
                        </div>
                        <div class="" id="search_ResultOne">

                        </div>
                    </div>
                    <!---预约操作区结束 END---->

                    <!----认购操作区 START---->
                    <div class="collapse" id="collapseTwo" >
                        <div class="border-top m-t-sm sidedown-box" >
                            <div class="row">
                                <div class="form-group col-md-4">
                                    <div class="input-group">
                                        <input type="text" value="" placeholder="请输入手机号码" class="form-control">
                                        <span class="input-group-btn"><button class="btn btn-primary"><i class="fa fa-search"></i> 查询认购</button></span>
                                    </div>
                                </div>
                                <div class="form-group col-md-8">
                                    <button class="btn btn-success" data-toggle="rslide" data-target="#add_rslide" data-title="现场客户认购"><i class="fa fa-edit"></i> 作为现场客户认购</button>
                                </div>
                            </div>
                        </div>
                        <div class="" id="search_ResultTwo">

                        </div>
                    </div>
                    <!---认购操作区 END---->
                </div>
                <div class="ibox">
                    <div class="ibox-heading">
                        <div class="ibox-title">
                            <h4>合同列表</h4>
                        </div>
                    </div>
                    <div class="ibox-content p-t-md">
                        <div class="table-responsive ">
                            <table class="table table-centerbody table-striped table-condensed text-nowrap" id="editable-sample">
                                <thead>
                                    <tr>
                                        <th>合同编号 </th>
                                        <th>房源信息 </th>
                                        <th>客户信息 </th>
                                        <th>时间 </th>
                                        <th>状态 </th>
                                        <th class="text-right">操作 </th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td ><a href="view.html" class="td-link">00966000004151112103907</a></td>
                                        <td>测试多媒体大厦全称<br>11幢11单元1121室</td>
                                        <td>荆子凡(135****1365)<br>陈小林 (135****1366)</td>
                                        <td>预约：2015-10-20<br>认购：2015-10-20<br>签约：2015-11-05</td>
                                        <td>认购<br>部分付款<br>不可结佣</td>
                                        <td class="text-right">
                                            <div class="btn-group ">
                                                <a class="btn-white  btn btn-sm delete" data-userid="1"><i class="fa fa-external-link"></i>  转认购</a>
                                                <a class="btn btn-white btn-sm edit" role="button" data-userid="1" data-toggle="modal" data-target="#modal-form"><i class="fa fa-pencil"></i>  签约</a>
                                                <a class="btn-white  btn btn-sm delete" data-userid="1"><i class="fa fa-cny"></i>  收款</a>
                                                <a class="btn-white  btn btn-sm delete" data-userid="1"><i class="fa fa-minus-circle"></i>  取消</a>
                                                <a class="btn-white  btn btn-sm " ><i class="fa fa-eye"></i>  查看</a>
                                                <a class="btn-white  btn btn-sm " data-userid="1"><i class="fa fa-trash"></i>  删除</a>
                                            </div>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                        <div class="pages border-top">
                            <div class="row">
                                <div class="col-md-4"><div class="m-t-md">当前显示 1 到 10 条，共 57 条</div></div>
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

    <div class="rslide fadeInRightBig" id="add_rslide">
        <div class="rslide-heading">
            <div class="rslide-title">
                <button class="close" type="button" data-dismiss="rslide" aria-hidden="true"><i>×</i></button>
                <h4>新增信息</h4>
            </div>
        </div>
        <div class="rslide-body">
            <!--右滑框 ，内容加载到此-->
        </div>
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
    <script src="${ctx}/static/js/plugins/rslide/rslide.js"></script>
    <script src="${ctx}/static/js/plugins/loading/jquery.loading.js"></script>

    <script>

        $(document).ready(function () {

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
        });

        $("#add_rslide").on("show.bs.rslide",function(event){ //编辑框出现前执行
                var button = $(event.relatedTarget);
                var id = button.data('id');
                var rslide = $(this);
                var title = button.data('title');
                $('.rslide-title h4',this).text(title)
                $('.rslide-body',this).loading('show').load('loadpage/rslide.html',function(){
                    $("#add_form").validate({
                        submitHandler: function (form) {
                            $('#myButton').button('loading')
                            addform(form);
                        }
                    });

                })
        });

        $(document).on("show.bs.collapse",function(event){
            $("#ibox-content").addClass("edit-border").removeClass("border-bottom")
            $("*").collapse('hide');
            var ele=$("#add_rslide")
            if (!ele.is(":hidden")){
                ele.rslide("hide");
            }
        });




        $(document).on("hidden.bs.collapse",function(event){
            var one=$("#collapseOne");
            var two=$("#collapseTwo");
            if(one.is(":hidden")&&two.is(":hidden")){
                $("#ibox-content").addClass("border-bottom").removeClass("edit-border")
            }
            var ele=$("#add_rslide")
            if (!ele.is(":hidden")){
                ele.rslide("hide");
            }
        });

        $("#search_yuyue").on('click',function(){
            var that=$(this);
            that.button('loading');
            var date=new Date();
            $("#search_ResultOne").loading("show").load("loadpage/search_result.html?time=date",/*{id:1},*/function(response,status,xhr){

                if (status=="success") {
                    $(this).loading("hide");
                    setTimeout(function(){
                        that.button('reset');
                        console.log(status)
                    },1000)}
                else
                {
                    $(this).html("错误代码: <br/>" + xhr.status + " " + xhr.statusText)
                }
            })
        });

       function setState (ev) {
            var el = $(ev);
            //处理点击效果,先效果然后执行
            if (el.hasClass("btn-default")) {
               el.removeClass("btn-default").addClass("btn-primary");
            } else {
               el.removeClass("btn-primary").addClass("btn-default");
            }
            //设置成功
            toastr.success('用户 "香溢紫郡－案场经历" 状态已更改为无效！', '状态设置成功！');
            //AJAX操作，执行失败，按钮恢复默认
            //el[0].className=elclass;
            //toastr.error('服务器连接失败，请重试！','状态设置失败！');
        }
    </script>
</body>
</html>
