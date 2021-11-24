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
    <link href="${ctx}/static/css/bootstrap.css" rel="stylesheet">
    <link href="${ctx}/static/font-awesome/css/font-awesome.css" rel="stylesheet">
    <!--date style-->
    <link href="${ctx}/static/css/plugins/dataTables/dataTables.bootstrap.css" rel="stylesheet">
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
                    <h2>收入统计</h2>
                    <ol class="breadcrumb">
                        <li>
                            <a href="${ctx}/index">管理首页</a>
                        </li>
                        <li class="active">
                            <strong>财务统计</strong>
                        </li>
                    </ol>
                </div>
            </div>

            <!-----内容区域---->
            <div class="wrapper wrapper-content ">
                <div class="row">
                        <div class="ibox ">
                            <div class="ibox-content">
                                <div class="row">
                                    <div class="col-sm-4 col-lg-2 col-md-3 m-t-xs">
                                        <select class="input-sm form-control input-s-sm inline">
                                            <option value="0">全部电商</option>
                                            <option value="1">链家网</option>
                                            <option value="2">房多多</option>
                                        </select>
                                    </div>
                                    <div class="form-group col-sm-4 col-lg-3 m-t-xs m-b-none" id="data_5">
                                        <div class="input-daterange input-group" id="datepicker">
                                            <input type="text" class="input-sm form-control" name="start" value="09/07/2015">
                                            <span class="input-group-addon">至</span>
                                            <input type="text" class="input-sm form-control" name="end" value="10/07/2015">
                                            <span class="input-group-btn"><button type="button" class="btn btn-sm btn-primary no-margins"> 查询</button> </span>
                                        </div>
                                    </div>
                                    <div class="col-sm-4 m-t-xs m-b-none">
                                        <div data-toggle="buttons" class="btn-group">
                                            <label class="btn btn-sm btn-white"> <input type="radio" id="option1" name="options"> 按天 </label>
                                            <label class="btn btn-sm btn-primary active"> <input type="radio" id="option2" name="options"> 按周 </label>
                                            <label class="btn btn-sm btn-white"> <input type="radio" id="option3" name="options"> 按月 </label>
                                            <label class="btn btn-sm btn-white"> <input type="radio" id="option4" name="options"> 按年 </label>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="ibox float-e-margins">
                        <div class="ibox-title">
                            <h5>统计结果 （全部）</h5>
                            <div class="ibox-tools">
                                <a class="collapse-link">
                                    <i class="fa fa-chevron-up"></i>
                                </a>
                                <a class="close-link">
                                    <i class="fa fa-times"></i>
                                </a>
                            </div>
                        </div>
                        <div class="ibox-content">
                            <div class="row">

                                <div class="col-lg-2 col-md-3 col-sm-6">

                                    <div class="panel yellow-bg">
                                        <div class="panel-heading">
                                            <div class="panel-title">
                                                <h4>新增佣金笔数合计</h4>
                                            </div>
                                        </div>
                                        <div class="panel-body" style="padding-top:0">
                                            <div><label>会员：</label>468 笔</div>
                                            <div><label>门店：</label>912 笔</div>
                                            <div><label>置业顾问：</label>813 笔</div>
                                        </div>
                                    </div>

                                </div>
                                <div class="col-lg-2 col-md-3 col-sm-6">

                                    <div class="panel lazur-bg">
                                        <div class="panel-heading">
                                            <div class="panel-title">
                                                <h4>新增佣金金额合计</h4>
                                            </div>
                                        </div>
                                        <div class="panel-body" style="padding-top:0">
                                            <div><label>会员：</label>327 万元</div>
                                            <div><label>门店：</label>533 万元</div>
                                            <div><label>置业顾问：</label>482 万元</div>
                                        </div>
                                    </div>

                                </div>
                                <div class="col-lg-2 col-md-3 col-sm-6">

                                    <div class="panel blue-bg">
                                        <div class="panel-heading">
                                            <div class="panel-title">
                                                <h4>新增结佣笔数合计</h4>
                                            </div>
                                        </div>
                                        <div class="panel-body" style="padding-top:0">
                                            <div><label>会员：</label>395 笔</div>
                                            <div><label>门店：</label>873 笔</div>
                                            <div><label>置业顾问：</label>234 笔</div>
                                        </div>
                                    </div>

                                </div>
                                <div class="col-lg-2 col-md-3 col-sm-6">

                                    <div class="panel red-bg">
                                        <div class="panel-heading">
                                            <div class="panel-title">
                                                <h4>新增结佣金额合计</h4>
                                            </div>
                                        </div>
                                        <div class="panel-body" style="padding-top:0">
                                            <div><label>会员：</label>198 万元</div>
                                            <div><label>门店：</label>378 万元</div>
                                            <div><label>置业顾问：</label>286 万元</div>
                                        </div>
                                    </div>

                                </div>
                                <div class="col-lg-2 col-md-3 col-sm-6">

                                    <div class="panel yellow-bg">
                                        <div class="panel-heading">
                                            <div class="panel-title">
                                                <h4>佣金转元宝笔数合计</h4>
                                            </div>
                                        </div>
                                        <div class="panel-body" style="padding-top:0">
                                            <div><label>会员：</label>1921 笔</div>
                                            <div><label>门店：</label>2312 笔</div>
                                            <div><label>置业顾问：</label>1753 笔</div>
                                        </div>
                                    </div>

                                </div>
                                <div class="col-lg-2 col-md-3 col-sm-6">

                                    <div class="panel lazur-bg">
                                        <div class="panel-heading">
                                            <div class="panel-title">
                                                <h4>佣金转元宝金额</h4>
                                            </div>
                                        </div>
                                        <div class="panel-body" style="padding-top:0">
                                            <div><label>会员：</label>372 万元</div>
                                            <div><label>门店：</label>539 万元</div>
                                            <div><label>置业顾问：</label>473 万元</div>
                                        </div>
                                    </div>

                                </div>
                                <div class="col-lg-2 col-md-3 col-sm-6">

                                    <div class="panel blue-bg">
                                        <div class="panel-heading">
                                            <div class="panel-title">
                                                <h4>元宝提现笔数合计</h4>
                                            </div>
                                        </div>
                                        <div class="panel-body" style="padding-top:0">
                                            <div><label>会员：</label>2736 笔</div>
                                            <div><label>门店：</label>1811 笔</div>
                                            <div><label>置业顾问：</label>2143 笔</div>
                                        </div>
                                    </div>

                                </div>
                                <div class="col-lg-2 col-md-3 col-sm-6">

                                    <div class="panel red-bg">
                                        <div class="panel-heading">
                                            <div class="panel-title">
                                                <h4>元宝提现金额合计</h4>
                                            </div>
                                        </div>
                                        <div class="panel-body" style="padding-top:0">
                                            <div><label>会员：</label>1287 万元</div>
                                            <div><label>门店：</label>5261 万元</div>
                                            <div><label>置业顾问：</label>4983 万元</div>
                                        </div>
                                    </div>

                                </div>
                            </div>
                            <div class="table-responsive m-t-sm">
                                <div class="row" id="echarts" style="height: 400px; width: 100%">

                                </div>
                            </div>

                        </div>
                    </div>

                        <div class="ibox float-e-margins">
                            <div class="ibox-content">
                                <div class="table-responsive  m-t-sm">
                                    <table class="table table-centerheaer table-bordered table-striped table-condensed">
                                        <thead>
                                        <tr>

                                            <th rowspan="2">日期</th>
                                            <th colspan="3">新增佣金笔数 </th>
                                            <th colspan="3">新增佣金金额 </th>
                                            <th colspan="3">新增结佣笔数</th>
                                            <th colspan="3">新增结佣金额</th>
                                            <th colspan="2">佣金转元宝笔数</th>
                                            <th colspan="2">佣金转元宝金额</th>
                                            <th colspan="2">元宝提现笔数</th>
                                            <th colspan="2">元宝提现金额</th>
                                        </tr>
                                        <tr>
                                            <th>会员</th>
                                            <th>门店</th>
                                            <th>置业顾问</th>
                                            <th>会员</th>
                                            <th>门店</th>
                                            <th>置业顾问</th>
                                            <th>会员</th>
                                            <th>门店</th>
                                            <th>置业顾问</th>
                                            <th>会员</th>
                                            <th>门店</th>
                                            <th>置业顾问</th>
                                            <th>会员</th>
                                            <th>置业顾问</th>
                                            <th>会员</th>
                                            <th>置业顾问</th>
                                            <th>会员</th>
                                            <th>置业顾问</th>
                                            <th>会员</th>
                                            <th>置业顾问</th>
                                        </tr>
                                        </thead>
                                        <tbody>
                                        <tr>
                                            <td>2015-09-21</td>
                                            <td>6</td>
                                            <td>0</td>
                                            <td>0</td>
                                            <td>28220.0</td>
                                            <td>0.0</td>
                                            <td>0.0</td>
                                            <td>0</td>
                                            <td>0</td>
                                            <td>0</td>
                                            <td>0.0</td>
                                            <td>0.0</td>
                                            <td>0.0</td>
                                            <td>0</td>
                                            <td>0</td>
                                            <td>0.0</td>
                                            <td>0.0</td>
                                            <td>0</td>
                                            <td>0</td>
                                            <td>0.0</td>
                                            <td>0.0</td>
                                        </tr>
                                        <tr>
                                            <td>2015-09-21</td>
                                            <td>6</td>
                                            <td>0</td>
                                            <td>0</td>
                                            <td>28220.0</td>
                                            <td>0.0</td>
                                            <td>0.0</td>
                                            <td>0</td>
                                            <td>0</td>
                                            <td>0</td>
                                            <td>0.0</td>
                                            <td>0.0</td>
                                            <td>0.0</td>
                                            <td>0</td>
                                            <td>0</td>
                                            <td>0.0</td>
                                            <td>0.0</td>
                                            <td>0</td>
                                            <td>0</td>
                                            <td>0.0</td>
                                            <td>0.0</td>
                                        </tr>
                                        <tr>
                                            <td>2015-09-21</td>
                                            <td>6</td>
                                            <td>0</td>
                                            <td>0</td>
                                            <td>28220.0</td>
                                            <td>0.0</td>
                                            <td>0.0</td>
                                            <td>0</td>
                                            <td>0</td>
                                            <td>0</td>
                                            <td>0.0</td>
                                            <td>0.0</td>
                                            <td>0.0</td>
                                            <td>0</td>
                                            <td>0</td>
                                            <td>0.0</td>
                                            <td>0.0</td>
                                            <td>0</td>
                                            <td>0</td>
                                            <td>0.0</td>
                                            <td>0.0</td>
                                        </tr>
                                        <tr>
                                            <td>2015-09-21</td>
                                            <td>6</td>
                                            <td>0</td>
                                            <td>0</td>
                                            <td>28220.0</td>
                                            <td>0.0</td>
                                            <td>0.0</td>
                                            <td>0</td>
                                            <td>0</td>
                                            <td>0</td>
                                            <td>0.0</td>
                                            <td>0.0</td>
                                            <td>0.0</td>
                                            <td>0</td>
                                            <td>0</td>
                                            <td>0.0</td>
                                            <td>0.0</td>
                                            <td>0</td>
                                            <td>0</td>
                                            <td>0.0</td>
                                            <td>0.0</td>
                                        </tr>
                                        </tbody>
                                    </table>

                                </div>
                                <div class="row">
                                    <div class="col-sm-6">
                                        <div class="dataTables_info" id="editable_info" role="status" aria-live="polite">Showing 21 to 30 of 57 entries</div>
                                    </div>
                                    <div class="col-sm-6"><div class="dataTables_paginate paging_simple_numbers" id="editable_paginate">
                                        <ul class="pagination">
                                            <li class="paginate_button previous" aria-controls="editable" tabindex="0" id="editable_previous"><a href="#">上一页</a></li>
                                            <li class="paginate_button " aria-controls="editable" tabindex="0"><a href="#">…</a></li>
                                            <li class="paginate_button " aria-controls="editable" tabindex="0"><a href="#">1</a></li>
                                            <li class="paginate_button " aria-controls="editable" tabindex="0"><a href="#">2</a></li>
                                            <li class="paginate_button active" aria-controls="editable" tabindex="0"><a href="#">3</a></li>
                                            <li class="paginate_button " aria-controls="editable" tabindex="0"><a href="#">4</a></li>
                                            <li class="paginate_button " aria-controls="editable" tabindex="0"><a href="#">5</a></li>
                                            <li class="paginate_button " aria-controls="editable" tabindex="0"><a href="#">6</a></li>
                                            <li class="paginate_button " aria-controls="editable" tabindex="0"><a href="#">…</a></li>
                                            <li class="paginate_button next" aria-controls="editable" tabindex="0" id="editable_next"><a href="#">下一页</a></li>
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
                    <strong>Copyright</strong> Wuling Company &copy; 2014-2015
                </div>
            </div>
        </div>
        <!---右侧内容区结束----->
    </div>
    </div>
    <!-- Mainly scripts -->
    <script src="${ctx}/static/js/jquery-2.1.1.js"></script>
    <script src="${ctx}/static/js/bootstrap.min.js"></script>
    <script src="${ctx}/static/js/plugins/metisMenu/jquery.metisMenu.js"></script>
    <script src="${ctx}/static/js/wuling.js"></script>
    <script src="${ctx}/static/js/plugins/pace/pace.min.js"></script>

    <!-- Custom and plugin javascript -->
    <script src="${ctx}/static/js/plugins/slimscroll/jquery.slimscroll.min.js"></script>
    <script src="${ctx}/static/js/plugins/datapicker/bootstrap-datepicker.js"></script>
    <script src="${ctx}/static/js/plugins/echarts/echarts.js"></script>
    <script type="text/javascript">
        // 路径配置
        require.config({
            paths: {
                echarts: '${ctx}/static/js/plugins/echarts'
            }
        });
        // 使用
        require(
                [
                    'echarts',
                    'echarts/chart/bar',
                    'echarts/chart/line' // 使用柱状图就加载bar模块，按需加载
                ],
                function (ec) {
                    // 基于准备好的dom，初始化echarts图表
                    var myChart = ec.init(document.getElementById('echarts'));
                    var option = {"calculable": true,"toolbox": {"feature": {"magicType": {"show": true,"title": {"line": "折线图切换","stack": "堆积","bar": "柱形图切换","tiled": "平铺"},"type": ["line","bar"]},"saveAsImage": {"show": true,"title": "保存为图片","type": "png","lang": ["点击保存"]}},"orient": "vertical","show": true,"x": "right","y": "center"},"tooltip": {"trigger": "axis"},"legend": {"data": ["会员新增笔数","门店新增笔数","置业顾问新增笔数","会员新增金额","门店新增金额","置业顾问新增金额","会员结佣笔数","门店结佣笔数","置业顾问结佣笔数","会员结额","门店结额","置业顾问结额","经纪人转元宝笔数","置业顾问转元宝笔数","经纪人转元宝金额","置业顾问转元宝金额","经纪人元宝提现笔数","置业顾问元宝提现笔数","经纪人元宝提现金额","置业顾问元宝提现金额"]},"xAxis": [{"boundaryGap": true,"type": "category","data": ["2015-09-21","2015-09-22","2015-09-23","2015-09-28","2015-09-29","2015-10-09"]}],"yAxis": [{"type": "value"}],"series": [{"name": "会员新增笔数","type": "line","data": [6,0,1,0,1,1]},{"name": "门店新增笔数","type": "line","data": [0,0,0,1,0,0]},{"name": "置业顾问新增笔数","type": "line","data": [0,1,5,1,1,0]},{"name": "会员新增金额","type": "line","data": [28220.0,0.0,4444.0,0.0,1200.0,6000.0]},{"name": "门店新增金额","type": "line","data": [0.0,0.0,0.0,2000.0,0.0,0.0]},{"name": "置业顾问新增金额","type": "line","data": [0.0,100.0,500.0,200.0,2000.0,0.0]},{"name": "会员结佣笔数","type": "line","data": [0,0,0,0,0,0]},{"name": "门店结佣笔数","type": "line","data": [0,0,0,0,0,0]},{"name": "置业顾问结佣笔数","type": "line","data": [0,0,0,0,0,0]},{"name": "会员结额","type": "line","data": [0.0,0.0,0.0,0.0,0.0,0.0]},{"name": "门店结额","type": "line","data": [0.0,0.0,0.0,0.0,0.0,0.0]},{"name": "置业顾问结额","type": "line","data": [0.0,0.0,0.0,0.0,0.0,0.0]},{"name": "经纪人转元宝笔数","type": "line","data": [0,0,7,0,1,1]},{"name": "置业顾问转元宝笔数","type": "line","data": [0,0,0,0,0,0]},{"name": "经纪人转元宝金额","type": "line","data": [0.0,0.0,32664.0,0.0,1200.0,6000.0]},{"name": "置业顾问转元宝金额","type": "line","data": [0.0,0.0,0.0,0.0,0.0,0.0]},{"name": "经纪人元宝提现笔数","type": "line","data": [0,0,2,0,0,0]},{"name": "置业顾问元宝提现笔数","type": "line","data": [0,0,0,0,0,0]},{"name": "经纪人元宝提现金额","type": "line","data": [0.0,0.0,8888.0,0.0,0.0,0.0]},{"name": "置业顾问元宝提现金额","type": "line","data": [0.0,0.0,0.0,0.0,0.0,0.0]}]};
                    // 为echarts对象加载数据
                    myChart.setOption(option);
                }
        );
    </script>
    <!-- Page-Level Scripts -->
    <script>
        $('#data_5 .input-daterange').datepicker({
            keyboardNavigation: false,
            forceParse: false,
            autoclose: true
        });
    </script>
</body>
</html>
