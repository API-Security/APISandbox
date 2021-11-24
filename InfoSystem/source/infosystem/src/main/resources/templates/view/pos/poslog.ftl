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
    <link href="${ctx}/static/css/plugins/iCheck/green.css" rel="stylesheet">
    <link href="${ctx}/static/css/animate.css" rel="stylesheet">
    <link href="${ctx}/static/css/style.css" rel="stylesheet">
</head>

<body class="fixed-sidebar">
    <div id="wrapper">
        <!----左侧导航开始----->
        <nav class="navbar-default navbar-static-side" role="navigation" id="leftnav">
        </nav>
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
                    <h2>POS交易记录</h2>
                    <ol class="breadcrumb">
                        <li>
                            <a href="${ctx}/index">管理首页</a>
                        </li>
                        <li>
                            <a class="active" href="javascript:void(0)">POS交易记录</a>
                        </li>
                    </ol>
                </div>
            </div>
            <!-----内容区域---->
            <div class="wrapper wrapper-content animated fadeInRight">
                <div class="ibox-content m-b-sm border-bottom">
                    <div class="row">
                        <div class="form-group col-md-2 m-t-xs m-b-none">
                            <input value="" placeholder="参考号" class="form-control input-sm">
                        </div>
                        <div class="form-group col-md-2 m-t-xs m-b-none">
                            <input value="" placeholder="楼盘名称" class="form-control input-sm">
                        </div>
                        <div class="form-group col-md-2 m-t-xs m-b-none">
                            <input value="" placeholder="交易类型" class="form-control input-sm">
                        </div>

                        <div class="form-group col-md-4 m-t-xs m-b-none">
                            <div class="input-group m-r-md">
                                <div class="checkbox-inline input-group-addon no-borders">
                                    <input type="checkbox" class="i-checks" name="agentsGuideType" checked>
                                    <label class="font-noraml">  未匹配电商</label>
                                </div>
                                <select class="input-sm form-control input input-s-sm m-l-md ">
                                    <option value="0">匹配状态</option>
                                    <option value="1">链家网</option>
                                    <option value="2">房多多</option>
                                </select>
                            </div>
                        </div>

                        <div class="col-md-2 m-t-xs m-b-none">
                            <button class="btn btn-primary btn-sm">搜索</button>
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
                                                <th>楼盘</th>
                                                <th>结果</th>
                                                <th>类型</th>
                                                <th>交易金额</th>
                                                <th>手续费</th>
                                                <th>POS编号</th>
                                                <th>参考号</th>
                                                <th>交易时间</th>
                                                <th>状态</th>
                                                <th>匹配状态</th>
                                                <th>匹配金额</th>
                                                <th class="text-right text-nowrap">操作</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td>测试－空中花园</td>
                                                <td><span class="label label-success">成功</span></td>
                                                <td>PUR</td>
                                                <td class="text-success text-price">+10000</td>
                                                <td class="text-danger">-80</td>
                                                <td>00001</td>
                                                <td>900000000011</td>
                                                <td>2015-10-14 00:00:00</td>
                                                <td  class="text-success">正常</td>
                                                <td class="text-success">全匹配</td>
                                                <td>9999</td>
                                                <td class="text-right text-nowrap">
                                                    <div class="btn-group ">
                                                        <button class="btn btn-white btn-sm edit" data-id="1" data-toggle="modal" data-target="#edit"><i class="fa fa-chain"></i>  匹配合同</button>
                                                        <button class="btn btn-white btn-sm edit" data-id="1" data-toggle="modal" data-target="#edit"><i class="fa fa-eye"></i>  查看</button>
                                                    </div>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>测试－空中花园</td>
                                                <td><span class="label label-danger">失败</span></td>
                                                <td>PUR</td>
                                                <td class="text-success text-price">+10000</td>
                                                <td class="text-danger">-80</td>
                                                <td>00001</td>
                                                <td>900000000011</td>
                                                <td>2015-10-14 00:00:00</td>
                                                <td  class="text-success">正常</td>
                                                <td class="text-warning">部分匹配</td>
                                                <td>20000</td>
                                                <td class="text-right text-nowrap">
                                                    <div class="btn-group ">
                                                        <button class="btn btn-white btn-sm edit" data-id="1" data-toggle="modal" data-target="#edit"><i class="fa fa-chain"></i>  匹配合同</button>
                                                        <button class="btn btn-white btn-sm edit" data-id="1" data-toggle="modal" data-target="#edit"><i class="fa fa-eye"></i>  查看</button>
                                                    </div>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>测试－空中花园</td>
                                                <td><span class="label label-warning">未知</span></td>
                                                <td>PUR</td>
                                                <td class="text-success text-price">+10000</td>
                                                <td class="text-danger">-80</td>
                                                <td>00001</td>
                                                <td>900000000011</td>
                                                <td>2015-10-14 00:00:00</td>
                                                <td class="text-success">正常</td>
                                                <td class="text-danger">未匹配</td>
                                                <td>87995</td>
                                                <td class="text-right text-nowrap">
                                                    <div class="btn-group ">
                                                        <button class="btn btn-white btn-sm edit" data-id="1" data-toggle="modal" data-target="#edit"><i class="fa fa-chain"></i>  匹配合同</button>
                                                        <button class="btn btn-white btn-sm edit" data-id="1" data-toggle="modal" data-target="#edit"><i class="fa fa-eye"></i>  查看</button>
                                                    </div>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>测试－空中花园</td>
                                                <td><span class="label label-success">成功</span></td>
                                                <td>PUR</td>
                                                <td class="text-success text-price">+10000</td>
                                                <td class="text-danger">-80</td>
                                                <td>00001</td>
                                                <td>900000000011</td>
                                                <td>2015-10-14 00:00:00</td>
                                                <td  class="text-success">正常</td>
                                                <td class="text-success">全匹配</td>
                                                <td>9999</td>
                                                <td class="text-right text-nowrap">
                                                    <div class="btn-group ">
                                                        <button class="btn btn-white btn-sm edit" data-id="1" data-toggle="modal" data-target="#edit"><i class="fa fa-chain"></i>  匹配合同</button>
                                                        <button class="btn btn-white btn-sm edit" data-id="1" data-toggle="modal" data-target="#edit"><i class="fa fa-eye"></i>  查看</button>
                                                    </div>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>测试－空中花园</td>
                                                <td><span class="label label-danger">失败</span></td>
                                                <td>PUR</td>
                                                <td class="text-success text-price">+10000</td>
                                                <td class="text-danger">-80</td>
                                                <td>00001</td>
                                                <td>900000000011</td>
                                                <td>2015-10-14 00:00:00</td>
                                                <td  class="text-success">正常</td>
                                                <td class="text-warning">部分匹配</td>
                                                <td>20000</td>
                                                <td class="text-right text-nowrap">
                                                    <div class="btn-group ">
                                                        <button class="btn btn-white btn-sm edit" data-id="1" data-toggle="modal" data-target="#edit"><i class="fa fa-chain"></i>  匹配合同</button>
                                                        <button class="btn btn-white btn-sm edit" data-id="1" data-toggle="modal" data-target="#edit"><i class="fa fa-eye"></i>  查看</button>
                                                    </div>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>测试－空中花园</td>
                                                <td><span class="label label-warning">未知</span></td>
                                                <td>PUR</td>
                                                <td class="text-success text-price">+10000</td>
                                                <td class="text-danger">-80</td>
                                                <td>00001</td>
                                                <td>900000000011</td>
                                                <td>2015-10-14 00:00:00</td>
                                                <td class="text-success">正常</td>
                                                <td class="text-danger">未匹配</td>
                                                <td>87995</td>
                                                <td class="text-right text-nowrap">
                                                    <div class="btn-group ">
                                                        <button class="btn btn-white btn-sm edit" data-id="1" data-toggle="modal" data-target="#edit"><i class="fa fa-chain"></i>  匹配合同</button>
                                                        <button class="btn btn-white btn-sm edit" data-id="1" data-toggle="modal" data-target="#edit"><i class="fa fa-eye"></i>  查看</button>
                                                    </div>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>测试－空中花园</td>
                                                <td><span class="label label-success">成功</span></td>
                                                <td>PUR</td>
                                                <td class="text-success text-price">+10000</td>
                                                <td class="text-danger">-80</td>
                                                <td>00001</td>
                                                <td>900000000011</td>
                                                <td>2015-10-14 00:00:00</td>
                                                <td  class="text-success">正常</td>
                                                <td class="text-success">全匹配</td>
                                                <td>9999</td>
                                                <td class="text-right text-nowrap">
                                                    <div class="btn-group ">
                                                        <button class="btn btn-white btn-sm edit" data-id="1" data-toggle="modal" data-target="#edit"><i class="fa fa-chain"></i>  匹配合同</button>
                                                        <button class="btn btn-white btn-sm edit" data-id="1" data-toggle="modal" data-target="#edit"><i class="fa fa-eye"></i>  查看</button>
                                                    </div>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>测试－空中花园</td>
                                                <td><span class="label label-danger">失败</span></td>
                                                <td>PUR</td>
                                                <td class="text-success text-price">+10000</td>
                                                <td class="text-danger">-80</td>
                                                <td>00001</td>
                                                <td>900000000011</td>
                                                <td>2015-10-14 00:00:00</td>
                                                <td  class="text-success">正常</td>
                                                <td class="text-warning">部分匹配</td>
                                                <td>20000</td>
                                                <td class="text-right text-nowrap">
                                                    <div class="btn-group ">
                                                        <button class="btn btn-white btn-sm edit" data-id="1" data-toggle="modal" data-target="#edit"><i class="fa fa-chain"></i>  匹配合同</button>
                                                        <button class="btn btn-white btn-sm edit" data-id="1" data-toggle="modal" data-target="#edit"><i class="fa fa-eye"></i>  查看</button>
                                                    </div>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>测试－空中花园</td>
                                                <td><span class="label label-warning">未知</span></td>
                                                <td>PUR</td>
                                                <td class="text-success text-price">+10000</td>
                                                <td class="text-danger">-80</td>
                                                <td>00001</td>
                                                <td>900000000011</td>
                                                <td>2015-10-14 00:00:00</td>
                                                <td class="text-success">正常</td>
                                                <td class="text-danger">未匹配</td>
                                                <td>87995</td>
                                                <td class="text-right text-nowrap">
                                                    <div class="btn-group ">
                                                        <button class="btn btn-white btn-sm edit" data-id="1" data-toggle="modal" data-target="#edit"><i class="fa fa-chain"></i>  匹配合同</button>
                                                        <button class="btn btn-white btn-sm edit" data-id="1" data-toggle="modal" data-target="#edit"><i class="fa fa-eye"></i>  查看</button>
                                                    </div>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>测试－空中花园</td>
                                                <td><span class="label label-success">成功</span></td>
                                                <td>PUR</td>
                                                <td class="text-success text-price">+10000</td>
                                                <td class="text-danger">-80</td>
                                                <td>00001</td>
                                                <td>900000000011</td>
                                                <td>2015-10-14 00:00:00</td>
                                                <td  class="text-success">正常</td>
                                                <td class="text-success">全匹配</td>
                                                <td>9999</td>
                                                <td class="text-right text-nowrap">
                                                    <div class="btn-group ">
                                                        <button class="btn btn-white btn-sm edit" data-id="1" data-toggle="modal" data-target="#edit"><i class="fa fa-chain"></i>  匹配合同</button>
                                                        <button class="btn btn-white btn-sm edit" data-id="1" data-toggle="modal" data-target="#edit"><i class="fa fa-eye"></i>  查看</button>
                                                    </div>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>测试－空中花园</td>
                                                <td><span class="label label-danger">失败</span></td>
                                                <td>PUR</td>
                                                <td class="text-success text-price">+10000</td>
                                                <td class="text-danger">-80</td>
                                                <td>00001</td>
                                                <td>900000000011</td>
                                                <td>2015-10-14 00:00:00</td>
                                                <td  class="text-success">正常</td>
                                                <td class="text-warning">部分匹配</td>
                                                <td>20000</td>
                                                <td class="text-right text-nowrap">
                                                    <div class="btn-group ">
                                                        <button class="btn btn-white btn-sm edit" data-id="1" data-toggle="modal" data-target="#edit"><i class="fa fa-chain"></i>  匹配合同</button>
                                                        <button class="btn btn-white btn-sm edit" data-id="1" data-toggle="modal" data-target="#edit"><i class="fa fa-eye"></i>  查看</button>
                                                    </div>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>测试－空中花园</td>
                                                <td><span class="label label-warning">未知</span></td>
                                                <td>PUR</td>
                                                <td class="text-success text-price">+10000</td>
                                                <td class="text-danger">-80</td>
                                                <td>00001</td>
                                                <td>900000000011</td>
                                                <td>2015-10-14 00:00:00</td>
                                                <td class="text-success">正常</td>
                                                <td class="text-danger">未匹配</td>
                                                <td>87995</td>
                                                <td class="text-right text-nowrap">
                                                    <div class="btn-group ">
                                                        <button class="btn btn-white btn-sm edit" data-id="1" data-toggle="modal" data-target="#edit"><i class="fa fa-chain"></i>  匹配合同</button>
                                                        <button class="btn btn-white btn-sm edit" data-id="1" data-toggle="modal" data-target="#edit"><i class="fa fa-eye"></i>  查看</button>
                                                    </div>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>测试－空中花园</td>
                                                <td><span class="label label-success">成功</span></td>
                                                <td>PUR</td>
                                                <td class="text-success text-price">+10000</td>
                                                <td class="text-danger">-80</td>
                                                <td>00001</td>
                                                <td>900000000011</td>
                                                <td>2015-10-14 00:00:00</td>
                                                <td  class="text-success">正常</td>
                                                <td class="text-success">全匹配</td>
                                                <td>9999</td>
                                                <td class="text-right text-nowrap">
                                                    <div class="btn-group ">
                                                        <button class="btn btn-white btn-sm edit" data-id="1" data-toggle="modal" data-target="#edit"><i class="fa fa-chain"></i>  匹配合同</button>
                                                        <button class="btn btn-white btn-sm edit" data-id="1" data-toggle="modal" data-target="#edit"><i class="fa fa-eye"></i>  查看</button>
                                                    </div>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>测试－空中花园</td>
                                                <td><span class="label label-danger">失败</span></td>
                                                <td>PUR</td>
                                                <td class="text-success text-price">+10000</td>
                                                <td class="text-danger">-80</td>
                                                <td>00001</td>
                                                <td>900000000011</td>
                                                <td>2015-10-14 00:00:00</td>
                                                <td  class="text-success">正常</td>
                                                <td class="text-warning">部分匹配</td>
                                                <td>20000</td>
                                                <td class="text-right text-nowrap">
                                                    <div class="btn-group ">
                                                        <button class="btn btn-white btn-sm edit" data-id="1" data-toggle="modal" data-target="#edit"><i class="fa fa-chain"></i>  匹配合同</button>
                                                        <button class="btn btn-white btn-sm edit" data-id="1" data-toggle="modal" data-target="#edit"><i class="fa fa-eye"></i>  查看</button>
                                                    </div>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>测试－空中花园</td>
                                                <td><span class="label label-warning">未知</span></td>
                                                <td>PUR</td>
                                                <td class="text-success text-price">+10000</td>
                                                <td class="text-danger">-80</td>
                                                <td>00001</td>
                                                <td>900000000011</td>
                                                <td>2015-10-14 00:00:00</td>
                                                <td class="text-success">正常</td>
                                                <td class="text-danger">未匹配</td>
                                                <td>87995</td>
                                                <td class="text-right text-nowrap">
                                                    <div class="btn-group ">
                                                        <button class="btn btn-white btn-sm edit" data-id="1" data-toggle="modal" data-target="#edit"><i class="fa fa-chain"></i>  匹配合同</button>
                                                        <button class="btn btn-white btn-sm edit" data-id="1" data-toggle="modal" data-target="#edit"><i class="fa fa-eye"></i>  查看</button>
                                                    </div>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>测试－空中花园</td>
                                                <td><span class="label label-success">成功</span></td>
                                                <td>PUR</td>
                                                <td class="text-success text-price">+10000</td>
                                                <td class="text-danger">-80</td>
                                                <td>00001</td>
                                                <td>900000000011</td>
                                                <td>2015-10-14 00:00:00</td>
                                                <td  class="text-success">正常</td>
                                                <td class="text-success">全匹配</td>
                                                <td>9999</td>
                                                <td class="text-right text-nowrap">
                                                    <div class="btn-group ">
                                                        <button class="btn btn-white btn-sm edit" data-id="1" data-toggle="modal" data-target="#edit"><i class="fa fa-chain"></i>  匹配合同</button>
                                                        <button class="btn btn-white btn-sm edit" data-id="1" data-toggle="modal" data-target="#edit"><i class="fa fa-eye"></i>  查看</button>
                                                    </div>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>测试－空中花园</td>
                                                <td><span class="label label-danger">失败</span></td>
                                                <td>PUR</td>
                                                <td class="text-success text-price">+10000</td>
                                                <td class="text-danger">-80</td>
                                                <td>00001</td>
                                                <td>900000000011</td>
                                                <td>2015-10-14 00:00:00</td>
                                                <td  class="text-success">正常</td>
                                                <td class="text-warning">部分匹配</td>
                                                <td>20000</td>
                                                <td class="text-right text-nowrap">
                                                    <div class="btn-group ">
                                                        <button class="btn btn-white btn-sm edit" data-id="1" data-toggle="modal" data-target="#edit"><i class="fa fa-chain"></i>  匹配合同</button>
                                                        <button class="btn btn-white btn-sm edit" data-id="1" data-toggle="modal" data-target="#edit"><i class="fa fa-eye"></i>  查看</button>
                                                    </div>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>测试－空中花园</td>
                                                <td><span class="label label-warning">未知</span></td>
                                                <td>PUR</td>
                                                <td class="text-success text-price">+10000</td>
                                                <td class="text-danger">-80</td>
                                                <td>00001</td>
                                                <td>900000000011</td>
                                                <td>2015-10-14 00:00:00</td>
                                                <td class="text-success">正常</td>
                                                <td class="text-danger">未匹配</td>
                                                <td>87995</td>
                                                <td class="text-right text-nowrap">
                                                    <div class="btn-group ">
                                                        <button class="btn btn-white btn-sm edit" data-id="1" data-toggle="modal" data-target="#edit"><i class="fa fa-chain"></i>  匹配合同</button>
                                                        <button class="btn btn-white btn-sm edit" data-id="1" data-toggle="modal" data-target="#edit"><i class="fa fa-eye"></i>  查看</button>
                                                    </div>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>测试－空中花园</td>
                                                <td><span class="label label-success">成功</span></td>
                                                <td>PUR</td>
                                                <td class="text-success text-price">+10000</td>
                                                <td class="text-danger">-80</td>
                                                <td>00001</td>
                                                <td>900000000011</td>
                                                <td>2015-10-14 00:00:00</td>
                                                <td  class="text-success">正常</td>
                                                <td class="text-success">全匹配</td>
                                                <td>9999</td>
                                                <td class="text-right text-nowrap">
                                                    <div class="btn-group ">
                                                        <button class="btn btn-white btn-sm edit" data-id="1" data-toggle="modal" data-target="#edit"><i class="fa fa-chain"></i>  匹配合同</button>
                                                        <button class="btn btn-white btn-sm edit" data-id="1" data-toggle="modal" data-target="#edit"><i class="fa fa-eye"></i>  查看</button>
                                                    </div>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>测试－空中花园</td>
                                                <td><span class="label label-danger">失败</span></td>
                                                <td>PUR</td>
                                                <td class="text-success text-price">+10000</td>
                                                <td class="text-danger">-80</td>
                                                <td>00001</td>
                                                <td>900000000011</td>
                                                <td>2015-10-14 00:00:00</td>
                                                <td  class="text-success">正常</td>
                                                <td class="text-warning">部分匹配</td>
                                                <td>20000</td>
                                                <td class="text-right text-nowrap">
                                                    <div class="btn-group ">
                                                        <button class="btn btn-white btn-sm edit" data-id="1" data-toggle="modal" data-target="#edit"><i class="fa fa-chain"></i>  匹配合同</button>
                                                        <button class="btn btn-white btn-sm edit" data-id="1" data-toggle="modal" data-target="#edit"><i class="fa fa-eye"></i>  查看</button>
                                                    </div>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>测试－空中花园</td>
                                                <td><span class="label label-warning">未知</span></td>
                                                <td>PUR</td>
                                                <td class="text-success text-price">+10000</td>
                                                <td class="text-danger">-80</td>
                                                <td>00001</td>
                                                <td>900000000011</td>
                                                <td>2015-10-14 00:00:00</td>
                                                <td class="text-success">正常</td>
                                                <td class="text-danger">未匹配</td>
                                                <td>87995</td>
                                                <td class="text-right text-nowrap">
                                                    <div class="btn-group ">
                                                        <button class="btn btn-white btn-sm edit" data-id="1" data-toggle="modal" data-target="#edit"><i class="fa fa-chain"></i>  匹配合同</button>
                                                        <button class="btn btn-white btn-sm edit" data-id="1" data-toggle="modal" data-target="#edit"><i class="fa fa-eye"></i>  查看</button>
                                                    </div>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>测试－空中花园</td>
                                                <td><span class="label label-success">成功</span></td>
                                                <td>PUR</td>
                                                <td class="text-success text-price">+10000</td>
                                                <td class="text-danger">-80</td>
                                                <td>00001</td>
                                                <td>900000000011</td>
                                                <td>2015-10-14 00:00:00</td>
                                                <td  class="text-success">正常</td>
                                                <td class="text-success">全匹配</td>
                                                <td>9999</td>
                                                <td class="text-right text-nowrap">
                                                    <div class="btn-group ">
                                                        <button class="btn btn-white btn-sm edit" data-id="1" data-toggle="modal" data-target="#edit"><i class="fa fa-chain"></i>  匹配合同</button>
                                                        <button class="btn btn-white btn-sm edit" data-id="1" data-toggle="modal" data-target="#edit"><i class="fa fa-eye"></i>  查看</button>
                                                    </div>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>测试－空中花园</td>
                                                <td><span class="label label-danger">失败</span></td>
                                                <td>PUR</td>
                                                <td class="text-success text-price">+10000</td>
                                                <td class="text-danger">-80</td>
                                                <td>00001</td>
                                                <td>900000000011</td>
                                                <td>2015-10-14 00:00:00</td>
                                                <td  class="text-success">正常</td>
                                                <td class="text-warning">部分匹配</td>
                                                <td>20000</td>
                                                <td class="text-right text-nowrap">
                                                    <div class="btn-group ">
                                                        <button class="btn btn-white btn-sm edit" data-id="1" data-toggle="modal" data-target="#edit"><i class="fa fa-chain"></i>  匹配合同</button>
                                                        <button class="btn btn-white btn-sm edit" data-id="1" data-toggle="modal" data-target="#edit"><i class="fa fa-eye"></i>  查看</button>
                                                    </div>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>测试－空中花园</td>
                                                <td><span class="label label-warning">未知</span></td>
                                                <td>PUR</td>
                                                <td class="text-success text-price">+10000</td>
                                                <td class="text-danger">-80</td>
                                                <td>00001</td>
                                                <td>900000000011</td>
                                                <td>2015-10-14 00:00:00</td>
                                                <td class="text-success">正常</td>
                                                <td class="text-danger">未匹配</td>
                                                <td>87995</td>
                                                <td class="text-right text-nowrap">
                                                    <div class="btn-group ">
                                                        <button class="btn btn-white btn-sm edit" data-id="1" data-toggle="modal" data-target="#edit"><i class="fa fa-chain"></i>  匹配合同</button>
                                                        <button class="btn btn-white btn-sm edit" data-id="1" data-toggle="modal" data-target="#edit"><i class="fa fa-eye"></i>  查看</button>
                                                    </div>
                                                </td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                                <div class="sumbox border-top">
                                    <div class="row m-t-md m-b-md">
                                        <div class="col-md-6">本页统计：共20条； 成功 <span class="text-success">20</span> 、 失败 <span class="text-danger"> 0 </span>； 金额：<span class="text-price text-success">￥200,000</span> 元</div>
                                        <div class="col-md-6 text-right">
                                            统计结果：共589条； 成功 <span class="text-success">23</span> 、 失败 <span class="text-danger"> 7 </span>； 金额：<span class="text-price text-success">￥898,665,899,00</span> 元
                                        </div>
                                    </div>
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

    <!----添加用户--->
    <div class="modal inmodal fade" id="edit" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header bg-primary">
                    <button aria-hidden="true" data-dismiss="modal" class="close" type="button">×</button>
                    <h4 class="modal-title">查看电商配置</h4>
                </div>
                <div class="modal-body">

                    <form role="form" id="add" name="add" class="form-horizontal">
                        <div class="form-group">
                            <label class="col-sm-4 control-label">电商名称 <span class="text-danger">*</span></label>
                            <div class="col-sm-8">
                                <input type="text" id="tenantName" name="tenantName" disabled placeholder="请输入6-12位中英文符"  required class="form-control">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-4 control-label">推荐客户CD时间 <span class="text-danger">*</span></label>
                            <div class="col-sm-8"><input type="text" name="tuijianCdDay" placeholder="该时间内不可将该客户推荐至其他楼盘" required class="form-control"></div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-4 control-label">发起带看CD时间 <span class="text-danger">*</span></label>
                            <div class="col-sm-8"><input type="tel" placeholder="该时间内不可再次对同一客户意向发起带看" name="daikanCdMin" required class="form-control"></div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-4 control-label">抢客外呼时效 <span class="text-danger">*</span></label>
                            <div class="col-sm-8"><input type="tel" placeholder="置业顾问抢到的客户必须在多少分钟内电话确认" name="grabPhoneMin" required class="form-control"></div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-4 control-label">未接听延长时效 <span class="text-danger">*</span></label>
                            <div class="col-sm-8"><input type="tel" placeholder="小时，置业顾问电话确认时如果客户未接听，保留多少小时" required name="grabExtendHour" class="form-control"></div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-4 control-label">到访CD时间 <span class="text-danger">*</span></label>
                            <div class="col-sm-8"><input type="tel" placeholder="分钟，置业顾问电话确认后至到访确认间隔多少分钟" required name="grabVisitCdMin" class="form-control"></div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-4 control-label">会员经纪人导客方式 <span class="text-danger">*</span></label>
                            <div class="col-sm-8">
                                <div class="checkbox-inline p-l-n">
                                    <input type="checkbox" class="i-checks" name="agentmGuideType" checked>
                                    <label class="font-noraml"> 推荐</label>
                                </div>
                                <div class="checkbox-inline">
                                    <input type="checkbox" class="i-checks" name="agentmGuideType" checked>
                                    <label class="font-noraml "> 带看</label>
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-4 control-label">门店经纪人导客方式 <span class="text-danger">*</span></label>
                            <div class="col-sm-8">
                                <div class="checkbox-inline p-l-n">
                                    <input type="checkbox" class="i-checks" name="agentsGuideType" checked>
                                    <label class="font-noraml"> 推荐</label>
                                </div>
                                <div class="checkbox-inline">
                                    <input type="checkbox" class="i-checks" name="agentsGuideType" checked>
                                    <label class="font-noraml"> 带看</label>
                                </div>
                            </div>
                        </div>
                        <div class="form-group m-t-sm" >
                            <div class="col-sm-6 col-sm-push-4">
                                <button class="btn btn-md btn-primary " type="submit"><strong>创建用户</strong></button>
                                <button type="button" class="btn btn-white m-l-sm" data-dismiss="modal">取消</button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
    <!---添加用户结束--->

    <!-- 全局 scripts -->
    <script src="${ctx}/static/js/jquery-2.1.1.js"></script>
    <script src="${ctx}/static/js/bootstrap.js"></script>
    <script src="${ctx}/static/js/wuling.js"></script>
    <script src="${ctx}/static/js/plugins/pace/pace.min.js"></script>
    <script src="${ctx}/static/js/plugins/slimscroll/jquery.slimscroll.min.js"></script>
    <script src="${ctx}/static/js/plugins/metisMenu/jquery.metisMenu.js"></script>
    <!-- 插件 scripts -->
    <script src="${ctx}/static/js/plugins/toastr/toastr.min.js" async></script><!---顶部弹出提示--->
    <script src="${ctx}/static/js/plugins/iCheck/icheck.min.js"></script>
<script>
    $(document).ready(function () {
        $('.i-checks').iCheck({
            checkboxClass: 'icheckbox_minimal-green',
            radioClass: 'iradio_minimal-green'
        });
    })
</script>
</body>
</html>
