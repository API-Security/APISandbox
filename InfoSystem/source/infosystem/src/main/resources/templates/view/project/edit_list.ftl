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
                    <h2>楼盘管理</h2>
                    <ol class="breadcrumb">
                        <li>
                            <a href="${ctx}/index">管理首页</a>
                        </li>
                        <li>
                            <a href="javascript:void(0)">开通楼盘</a>
                        </li>
                        <li class="active">
                            楼盘列表
                        </li>
                    </ol>
                </div>
            </div>
            <!-----内容区域---->
            <div class="wrapper wrapper-content animated fadeInRight">
                <div class="ibox-content m-b-sm border-bottom">
                    <div class="row">
                            <div class="col-lg-8 col-md-6 col-sm-4 ">
                                <a class="btn btn-primary" href="${ctx }/view/project/add_hezuo">
                                    新增合作楼盘 <i class="fa fa-plus"></i>
                                </a>
                            </div>
                            <div class=" col-lg-4 col-md-6 col-sm-8 " >
                                <div class="tablesearch pull-right m-t-xs">
                                    <div class="table-td">
                                        <div class="input-group" >
                                            <input type="text" class="input-sm form-control" name="end" value="" placeholder="输入楼盘名称">
                                            <span class="input-group-btn"><button type="button" class="btn btn-sm btn-primary "> 查询</button></span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-12">
                        <div class="ibox">
                            <div class="ibox-content">
                                <div class="table-responsive ">
                                    <table class="table table-centerbody table-striped table-condensed text-nowrap" id="editable-sample">
                                        <thead>
                                            <tr>
                                                <th>名称</th>
                                                <th>城市</th>
                                                <th>联系人</th>
                                                <th>最近合作起</th>
                                                <th>最近合作止</th>
                                                <th>是否上线</th>
                                                <th class="text-right">操作</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td><a href="#" class="td-link" title="">定制版测试楼盘</a></td>
                                                <td>郴州</td>
                                                <td>房易麦</td>
                                                <td>项目经理－f</td>
                                                <td>审核通过</td>
                                                <td><a class="btn btn-primary btn-circle btn-sm" onclick="setState(this)" data-id="1"><i class="fa fa-check"></i></a></td>
                                                <td class="text-right text-nowrap">
                                                    <div class="btn-group ">
                                                        <a href="add_hezuo.html" class="btn btn-white btn-sm edit"><i class="fa fa-eye"></i>  编辑/详细</a>
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
    <script>
        //下拉框组件
        $(".chosen-select").chosen({no_results_text:'未找到此项',width:"100%",allow_single_deselect:true,disable_search_threshold:10});
        //更改状态
        function setState (ev) {
            var el = $(ev);
            var elclass=el[0].className;
            var id=el.data("id"); //获取ID，可以通过AJAX操作数据

            //处理点击效果,先效果然后执行
            if (el.hasClass("btn-default")) {
                el.removeClass("btn-default").addClass("btn-primary");
            } else {
                el.removeClass("btn-primary").addClass("btn-default");
            }
            //设置成功
            toastr.success('用户 "香溢紫郡－案场经历" 状态已更改为无效！', '状态设置成功！');
            //AJAX操作，执行失败
            //el[0].className=elclass; //按钮恢复默认
            //toastr.error('服务器连接失败，请重试！','状态设置失败！');  //错误提示
        };
    </script>
</body>
</html>
