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
                    <h2>账号管理</h2>
                    <ol class="breadcrumb">
                        <li>
                            <a href="${ctx}/index">管理首页</a>
                        </li>
                        <li class="active">
                            账号管理
                        </li>

                    </ol>
                </div>
            </div>

            <!-----内容区域---->
            <div class="wrapper wrapper-content animated fadeInRight">
                <div class="ibox-content m-b-sm border-bottom">
                    <div class="row">
                        <div class="col-lg-8 col-md-6 col-sm-4 ">
                            <a id="editable-sample_new" class="btn btn-primary" data-toggle="modal"  href="#modal-form">
                                添加用户 <i class="fa fa-plus"></i>
                            </a>
                        </div>
                        <div class=" col-lg-4 col-md-6 col-sm-8 " >
                                <div class="tablesearch pull-right m-t-xs">
                                   <div class="table-td">
                                        <div class="input-group" >
                                                <input type="text" class="input-sm form-control" name="end" value="" placeholder="输入账号搜索">
                                                <span class="input-group-btn"><button type="button" class="btn btn-sm btn-primary "> 查询</button></span>
                                        </div>
                                   </div>
                                   <div class="table-td m-l-sm pull-right">
                                       <a  class="btn btn-sm btn-primary dropdown-toggle" role="button" data-toggle="collapse" href="#collapseExample" aria-expanded="false" aria-controls="collapseExample"> 高级搜索 <span class="caret"></span></a>

                                   </div>
                                </div>
                        </div>
                    </div>
                    <!----高级搜索内容区---->
                    <div class="collapse" id="collapseExample">
                        <div class="border-top m-t-md m-b-none sidedown-box" >
                            <div class="row">
                                <div class="col-sm-4">
                                    <div class="form-group">
                                        <label class="control-label" for="order_id">用户名称</label>
                                        <input type="text" id="order_id" name="order_id" value="" placeholder="输入用户名称" class="form-control">
                                    </div>
                                </div>
                                <div class="col-sm-4">
                                    <div class="form-group">
                                        <label class="control-label" >电商</label>
                                        <select data-placeholder="-- 请选择电商 --" class="chosen-select" tabindex="2">
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
                                        <label class="control-label" >楼盘</label>
                                        <select data-placeholder="-- 请选择楼盘 --" class="chosen-select" tabindex="2">
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
                                                <label class="control-label" >经纪公司门店</label>
                                                <select name="" class="form-control input-s-sm inline">
                                                    <option value="">-- 请选择经济公司 --</option>
                                                </select>
                                            </div>
                                        </div>
                                        <div class="col-sm-6">
                                            <div class="form-group">
                                                <label class="control-label" >&nbsp;</label>
                                                <select name="" class="form-control input-s-sm inline">
                                                    <option value="">-- 请选择门店 --</option>
                                                </select>
                                            </div>
                                        </div>
                                    </div>
                                </div>


                                <div class="col-sm-4">
                                    <div class="form-group">
                                        <label class="control-label" >角色</label>
                                        <select name="" class="form-control input-s-sm inline">
                                            <option value="">---- 请选择角色 ----</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="col-sm-4">
                                    <div class="form-group">
                                        <label class="control-label" >城市</label>
                                        <select data-placeholder="-- 请选择楼盘 --" class="chosen-select" tabindex="2">
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
                                    <button type="button" class="btn btn-primary"><i class="fa fa-search"></i> 立即搜索</button>
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
                                                <th>账号</th>
                                                <th>角色 </th>
                                                <th>联系人 </th>
                                                <th>联系电话</th>
                                                <th>创建时间</th>
                                                <th>电商</th>
                                                <th>状态</th>
                                                <th class="text-right">操作</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td>香溢紫郡－案场经历</td>
                                                <td>项目助理</td>
                                                <td>张晨</td>
                                                <td>13776365219</td>
                                                <td>2015-10-09</td>
                                                <td>上海屋瓴</td>
                                                <td>
                                                    <a class="btn btn-primary btn-circle btn-sm" onclick="setState(this)" data-id="1"><i class="fa fa-check"></i></a>
                                                </td>
                                                <td class="text-right text-nowrap">
                                                    <div class="btn-group ">
                                                        <button class="btn btn-white btn-sm edit" data-userid="1" data-toggle="modal" data-target="#modal-form"><i class="fa fa-pencil"></i>  编辑</button>
                                                        <button class="btn-white  btn btn-sm rset" data-userid="1" data-toggle="modal" data-target="#myModa-reset"><i class="fa fa-eye"></i>  重置密码</button>
                                                        <button class="btn-white  btn btn-sm delete" data-userid="1"><i class="fa fa-trash"></i>  删除</button>
                                                    </div>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>香溢紫郡－案场经历</td>
                                                <td>项目助理</td>
                                                <td>张晨</td>
                                                <td>13776365219</td>
                                                <td>2015-10-09</td>
                                                <td>上海屋瓴</td>
                                                <td>
                                                    <a class="btn btn-primary btn-circle btn-sm" onclick="setState(this)" data-id="1"><i class="fa fa-check"></i></a>
                                                </td>
                                                <td class="text-right text-nowrap">
                                                    <div class="btn-group ">
                                                        <button class="btn btn-white btn-sm edit" data-userid="1" data-toggle="modal" data-target="#modal-form"><i class="fa fa-pencil"></i>  编辑</button>
                                                        <button class="btn-white  btn btn-sm rset" data-userid="1" data-toggle="modal" data-target="#myModa-reset"><i class="fa fa-eye"></i>  重置密码</button>
                                                        <button class="btn-white  btn btn-sm delete" data-userid="1"><i class="fa fa-trash"></i>  删除</button>
                                                    </div>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>香溢紫郡－案场经历</td>
                                                <td>项目助理</td>
                                                <td>张晨</td>
                                                <td>13776365219</td>
                                                <td>2015-10-09</td>
                                                <td>上海屋瓴</td>
                                                <td>
                                                    <a class="btn btn-primary btn-circle btn-sm" onclick="setState(this)" data-id="1"><i class="fa fa-check"></i></a>
                                                </td>
                                                <td class="text-right text-nowrap">
                                                    <div class="btn-group ">
                                                        <button class="btn btn-white btn-sm edit" data-userid="1" data-toggle="modal" data-target="#modal-form"><i class="fa fa-pencil"></i>  编辑</button>
                                                        <button class="btn-white  btn btn-sm rset" data-userid="1" data-toggle="modal" data-target="#myModa-reset"><i class="fa fa-eye"></i>  重置密码</button>
                                                        <button class="btn-white  btn btn-sm delete" data-userid="1"><i class="fa fa-trash"></i>  删除</button>
                                                    </div>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>香溢紫郡－案场经历</td>
                                                <td>项目助理</td>
                                                <td>张晨</td>
                                                <td>13776365219</td>
                                                <td>2015-10-09</td>
                                                <td>上海屋瓴</td>
                                                <td>
                                                    <a class="btn btn-primary btn-circle btn-sm" onclick="setState(this)" data-id="1"><i class="fa fa-check"></i></a>
                                                </td>
                                                <td class="text-right text-nowrap">
                                                    <div class="btn-group ">
                                                        <button class="btn btn-white btn-sm edit" data-userid="1" data-toggle="modal" data-target="#modal-form"><i class="fa fa-pencil"></i>  编辑</button>
                                                        <button class="btn-white  btn btn-sm rset" data-userid="1" data-toggle="modal" data-target="#myModa-reset"><i class="fa fa-eye"></i>  重置密码</button>
                                                        <button class="btn-white  btn btn-sm delete" data-userid="1"><i class="fa fa-trash"></i>  删除</button>
                                                    </div>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>香溢紫郡－案场经历</td>
                                                <td>项目助理</td>
                                                <td>张晨</td>
                                                <td>13776365219</td>
                                                <td>2015-10-09</td>
                                                <td>上海屋瓴</td>
                                                <td>
                                                    <a class="btn btn-primary btn-circle btn-sm" onclick="setState(this)" data-id="1"><i class="fa fa-check"></i></a>
                                                </td>
                                                <td class="text-right text-nowrap">
                                                    <div class="btn-group ">
                                                        <button class="btn btn-white btn-sm edit" data-userid="1" data-toggle="modal" data-target="#modal-form"><i class="fa fa-pencil"></i>  编辑</button>
                                                        <button class="btn-white  btn btn-sm rset" data-userid="1" data-toggle="modal" data-target="#myModa-reset"><i class="fa fa-eye"></i>  重置密码</button>
                                                        <button class="btn-white  btn btn-sm delete" data-userid="1"><i class="fa fa-trash"></i>  删除</button>
                                                    </div>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>香溢紫郡－案场经历</td>
                                                <td>项目助理</td>
                                                <td>张晨</td>
                                                <td>13776365219</td>
                                                <td>2015-10-09</td>
                                                <td>上海屋瓴</td>
                                                <td>
                                                    <a class="btn btn-primary btn-circle btn-sm" onclick="setState(this)" data-id="1"><i class="fa fa-check"></i></a>
                                                </td>
                                                <td class="text-right text-nowrap">
                                                    <div class="btn-group ">
                                                        <button class="btn btn-white btn-sm edit" data-userid="1" data-toggle="modal" data-target="#modal-form"><i class="fa fa-pencil"></i>  编辑</button>
                                                        <button class="btn-white  btn btn-sm rset" data-userid="1" data-toggle="modal" data-target="#myModa-reset"><i class="fa fa-eye"></i>  重置密码</button>
                                                        <button class="btn-white  btn btn-sm delete" data-userid="1"><i class="fa fa-trash"></i>  删除</button>
                                                    </div>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>香溢紫郡－案场经历</td>
                                                <td>项目助理</td>
                                                <td>张晨</td>
                                                <td>13776365219</td>
                                                <td>2015-10-09</td>
                                                <td>上海屋瓴</td>
                                                <td>
                                                    <a class="btn btn-primary btn-circle btn-sm" onclick="setState(this)" data-id="1"><i class="fa fa-check"></i></a>
                                                </td>
                                                <td class="text-right text-nowrap">
                                                    <div class="btn-group ">
                                                        <button class="btn btn-white btn-sm edit" data-userid="1" data-toggle="modal" data-target="#modal-form"><i class="fa fa-pencil"></i>  编辑</button>
                                                        <button class="btn-white  btn btn-sm rset" data-userid="1" data-toggle="modal" data-target="#myModa-reset"><i class="fa fa-eye"></i>  重置密码</button>
                                                        <button class="btn-white  btn btn-sm delete" data-userid="1"><i class="fa fa-trash"></i>  删除</button>
                                                    </div>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>香溢紫郡－案场经历</td>
                                                <td>项目助理</td>
                                                <td>张晨</td>
                                                <td>13776365219</td>
                                                <td>2015-10-09</td>
                                                <td>上海屋瓴</td>
                                                <td>
                                                    <a class="btn btn-primary btn-circle btn-sm" onclick="setState(this)" data-id="1"><i class="fa fa-check"></i></a>
                                                </td>
                                                <td class="text-right text-nowrap">
                                                    <div class="btn-group ">
                                                        <button class="btn btn-white btn-sm edit" data-userid="1" data-toggle="modal" data-target="#modal-form"><i class="fa fa-pencil"></i>  编辑</button>
                                                        <button class="btn-white  btn btn-sm rset" data-userid="1" data-toggle="modal" data-target="#myModa-reset"><i class="fa fa-eye"></i>  重置密码</button>
                                                        <button class="btn-white  btn btn-sm delete" data-userid="1"><i class="fa fa-trash"></i>  删除</button>
                                                    </div>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>香溢紫郡－案场经历</td>
                                                <td>项目助理</td>
                                                <td>张晨</td>
                                                <td>13776365219</td>
                                                <td>2015-10-09</td>
                                                <td>上海屋瓴</td>
                                                <td>
                                                    <a class="btn btn-primary btn-circle btn-sm" onclick="setState(this)" data-id="1"><i class="fa fa-check"></i></a>
                                                </td>
                                                <td class="text-right text-nowrap">
                                                    <div class="btn-group ">
                                                        <button class="btn btn-white btn-sm edit" data-userid="1" data-toggle="modal" data-target="#modal-form"><i class="fa fa-pencil"></i>  编辑</button>
                                                        <button class="btn-white  btn btn-sm rset" data-userid="1" data-toggle="modal" data-target="#myModa-reset"><i class="fa fa-eye"></i>  重置密码</button>
                                                        <button class="btn-white  btn btn-sm delete" data-userid="1"><i class="fa fa-trash"></i>  删除</button>
                                                    </div>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>香溢紫郡－案场经历</td>
                                                <td>项目助理</td>
                                                <td>张晨</td>
                                                <td>13776365219</td>
                                                <td>2015-10-09</td>
                                                <td>上海屋瓴</td>
                                                <td>
                                                    <a class="btn btn-primary btn-circle btn-sm" onclick="setState(this)" data-id="1"><i class="fa fa-check"></i></a>
                                                </td>
                                                <td class="text-right text-nowrap">
                                                    <div class="btn-group ">
                                                        <button class="btn btn-white btn-sm edit" data-userid="1" data-toggle="modal" data-target="#modal-form"><i class="fa fa-pencil"></i>  编辑</button>
                                                        <button class="btn-white  btn btn-sm rset" data-userid="1" data-toggle="modal" data-target="#myModa-reset"><i class="fa fa-eye"></i>  重置密码</button>
                                                        <button class="btn-white  btn btn-sm delete" data-userid="1"><i class="fa fa-trash"></i>  删除</button>
                                                    </div>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>香溢紫郡－案场经历</td>
                                                <td>项目助理</td>
                                                <td>张晨</td>
                                                <td>13776365219</td>
                                                <td>2015-10-09</td>
                                                <td>上海屋瓴</td>
                                                <td>
                                                    <a class="btn btn-primary btn-circle btn-sm" onclick="setState(this)" data-id="1"><i class="fa fa-check"></i></a>
                                                </td>
                                                <td class="text-right text-nowrap">
                                                    <div class="btn-group ">
                                                        <button class="btn btn-white btn-sm edit" data-userid="1" data-toggle="modal" data-remote="edit_show.html" data-target="#modal-form2"><i class="fa fa-pencil"></i>  编辑</button>
                                                        <button class="btn-white  btn btn-sm rset" data-userid="1" data-toggle="modal" data-target="#myModa-reset"><i class="fa fa-eye"></i>  重置密码</button>
                                                        <button class="btn-white  btn btn-sm delete" data-userid="1"><i class="fa fa-trash"></i>  删除</button>
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

    <!----添加用户--->
    <div class="modal fade" id="modal-form2" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
        <div class="modal-dialog">
            <div class="modal-content">
                
            </div>
        </div>
    </div>
    <!---添加用户结束--->
    <div class="modal fade" id="modal-form" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header bg-primary">
                    <button aria-hidden="true" data-dismiss="modal" class="close" type="button">×</button>
                    <h4 class="modal-title">添加用户账号</h4>
                </div>
                <div class="modal-body">

                    <form role="form" id="add" name="add" class="form-horizontal">
                        <div class="form-group">
                            <label class="col-sm-3 control-label">账号名称</label>
                            <div class="col-sm-8">
                                <input type="text" id="username" name="usseracc" placeholder="请输入6-12位中英文符"  required class="form-control">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label">真实姓名</label>
                            <div class="col-sm-8"><input type="text" name="userName" placeholder="请输入姓名,2-4位中文字符" class="form-control"></div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label">手机号</label>
                            <div class="col-sm-8"><input type="tel" id="phoneNum" placeholder="请输入11位手机号码" name="phoneNum" class="form-control"></div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label">确认手机号</label>
                            <div class="col-sm-8"><input type="tel" placeholder="再次输入手机号码" name="sphoneNum" class="form-control"></div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label">电商</label>
                            <div class="col-sm-8">
                                <select name="business" class="form-control input-s-sm inline">
                                    <option value="">请选择账户角色</option>
                                    <option value="1">链家网</option>
                                    <option value="2">房多多</option>
                                </select>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label">角色</label>
                            <div class="col-sm-8">
                                <select name="jiaos" class="form-control input-s-sm inline"  data-toggle-name="#jiaosbox">
                                    <option value="" >请选择账户角色</option>
                                    <option value="1" data-box-name="lianjia">链家网</option>
                                    <option value="2" data-box-name="fangdd">房多多</option>
                                </select>
                            </div>
                        </div>

                        <div id="jiaosbox">
                            <div id="lianjia" style="display: none">
                                <div class="form-group">
                                    <label class="col-sm-3 control-label">链家网</label>
                                    <div class="col-sm-8">
                                        <select name="com" class="form-control input-s-sm inline" required>
                                            <option value="">请选择账户角色</option>
                                            <option value="1">链家网</option>
                                            <option value="2">房多多</option>
                                        </select>
                                    </div>
                                </div>
                            </div>

                            <div id="fangdd" style="display: none">
                                <div class="form-group">
                                    <label class="col-sm-3 control-label">房多多</label>
                                    <div class="col-sm-8">
                                        <select name="com" class="form-control input-s-sm inline" required>
                                            <option value="">请选择账户角色</option>
                                            <option value="1">链家网</option>
                                            <option value="2">房多多</option>
                                        </select>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="form-group">
                            <label class="col-sm-3 control-label">带搜索选择</label>
                            <div class="col-sm-8">
                                <select  name="city" id="city" data-placeholder="-- 请选择 --"  class="chosen-select" onchange="appendSelect();" tabindex="2" required>
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
                            <label class="col-sm-3 control-label">下拉多选</label>
                            <div class="col-sm-8">
                                <select  data-placeholder="-- 请选择 --" id="city2" name="round" class="chosen-select" tabindex="4" required>
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

                                </select>
                            </div>
                        </div>

                        <div class="form-group m-t-sm" >
                            <div class="col-sm-6 col-sm-push-3">
                                <button class="btn btn-md btn-primary " type="submit"><strong>创建用户</strong></button>
                                <button type="button" class="btn btn-white m-l-sm" data-dismiss="modal">取消</button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>

    <!----重置密码---->
    <div class="modal inmodal fade" id="myModa-reset" tabindex="-1" role="dialog" aria-hidden="true">
        <div class="modal-dialog modal-sm">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">×</span><span class="sr-only">Close</span></button>
                    <h4 class="modal-title">重置用户密码</h4>
                    <small>密码重置后，密码将与短信方式发送到用户手机。</small>
                </div>
                <div class="modal-body">
                    <form name="resetform" id="resetform">
                        <div class="form-group"><label class="control-label" for="order_id">输入验证码</label><input name="userid" id="userid" type="hidden" value=""> <input type="text" id="restcode" name="restcode" maxlength="6" placeholder="请输入验证码" class="form-control" value=""></div>
                        <div class="form-group"><a href="#" title="换一张"><img src="" id="codeimg" alt="点击刷新" width="150" height="40">&nbsp;&nbsp;换一张</a></div>
                        <div class="form-group m-t-sm" >
                                <button class="btn btn-md btn-primary " type="submit"><strong>确认重置</strong></button>
                                <button type="button" class="btn btn-white m-l-sm" data-dismiss="modal">取消</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
    <!----重置结束---->


    <!-- 全局 scripts -->
    <script src="${ctx}/static/js/jquery-2.1.1.js"></script>
    <script src="${ctx}/static/js/bootstrap.js"></script>
    <script src="${ctx}/static/js/wuling.js"></script>
    <script src="${ctx}/static/js/plugins/pace/pace.min.js"></script>
    <script src="${ctx}/static/js/plugins/slimscroll/jquery.slimscroll.min.js"></script>
    <script src="${ctx}/static/js/plugins/metisMenu/jquery.metisMenu.js"></script>

    <!-- 插件 scripts -->
    <script src="${ctx}/static/js/plugins/chosen/chosen.jquery.js"></script>
    <script src="${ctx}/static/js/plugins/toastr/toastr.min.js" async></script><!---顶部弹出提示--->
    <script src="${ctx}/static/js/plugins/sweetalert/sweetalert.min.js" async></script><!---对话框 alert--->
    <script src="${ctx}/static/js/plugins/validate/jquery.validate.min.js"></script>  <!---表单验证--->
    <script src="${ctx}/static/js/plugins/validate/validate-cn.js" ></script> <!---validate 自定义方法--->
    <script>

    //下拉框组件
    $(".chosen-select").chosen({no_results_text:'未找到此项',width:"100%",disable_search_threshold:10});
    function appendSelect(){
        var json=[
            {name:'下拉菜单一',val:"1"},
            {name:'下拉菜单二',val:"1"},
            {name:'下拉菜单三',val:"1"},
            {name:'下拉菜单四',val:"1"},
            {name:'下拉菜单五',val:"1"},
            {name:'下拉菜单六',val:"1"},
            {name:'下拉菜单七',val:"1"}
        ];

        var select=$("#city2");
        for(var i=0; i<json.length; i++){
            var op=document.createElement('option');
            op.value=json[i].val;
            op.text=json[i].name;
            select.append(op);
        }

        $(".chosen-select").trigger("chosen:updated");

    }
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
        $(document).ready(function () {
        //添加用户表单验证
            $("#add").validate({

            rules: {
                usseracc: {
                    required: true,
                    rangelength: [6, 12],
                    //remote: "异步验证"
                },
                userName: {
                    required: true,
                    rangelength: [3, 6]
                },
                phoneNum: {
                    required: true,
                    isMobile:true
                },
                sphoneNum: {
                    required: true,
                    equalTo: "#phoneNum"
                },
                business: "required",
                jiaos: "required",
                round: "required"
            },
            messages: {
                usseracc: {
                    required: "请输入用户名称，用于登陆管理平台",
                    rangelength: jQuery.validator.format("登陆名称应为6-12位的英文字母或中方字符"),
                    remote: jQuery.validator.format("{0} is already in use")
                },
                userName: {
                    required: "请填写您的真实姓名",
                    minlength: jQuery.validator.format("Enter at least {0} characters")
                },
                phoneNum: {
                    required: "请输入手机号码",
                    isMobile: "请输入正确的手机号码"
                },
                sphoneNum: {
                    required: "请重复输入手机号码",
                    equalTo: "两次输入号码不一致，请重新输入"
                },
                business: "请选择所属电商",
                jiaos: "请选择所属角色",
                terms: " "
            },
            //debug: true,
            submitHandler: function (form) {
                addform(form);
            }
        });

        function addform(form) {
            $.ajax(
                    {
                        url: "/view/user/user_list",
                        type: "post",
                        data: $(form).serialize(),
                        success: function (data) {
                            swal("用户添加成功!", "", "success");
                            //alert($(form).serialize())
                        }
                    }
            );
            return false;
        }

    //重置密码

            $("#resetform").validate({
                rules: {
                    restcode: {
                        required: true,
                        rangelength: [6, 6]
                        //remote: "异步验证"
                    }
                },
                messages: {
                    restcode: {
                        required: "请输入验证码",
                        rangelength: jQuery.validator.format("请输入6位验证码"),
                        remote: jQuery.validator.format("{0} is already in use")
                    }
                },
                //debug: true,
                submitHandler: function (form) {
                    setform(form);
                }
            });

            function setform(form) {
                $.ajax(
                    {
                        url: "?",
                        type: "post",
                        data: $(form).serialize(),
                        success: function (data) {
                            toastr.success('密码已发送到用户手机！','密码重置成功！');
                            $("#myModa-reset").modal("hide");
                        },
                        error:function(error){
                            $("#myModa-reset").modal("hide");
                            toastr.error('密码已发送到用户手机！','密码重置失败！');
                        }
                    }
                );
                return false;
            }

            //验证码在模态框出现前加载
            $("#myModa-reset").on('show.bs.modal', function (event) {
                var button=$(event.relatedTarget );
                var userid=button.data("userid");
                $("#userid").val(userid);
                $('#codeimg').attr("src","http://www.wulingtest.com:8780/jcaptcha")
                alert("userid = "+ userid);
            });


            
            
            
            //关闭模态框清空表单值
            $("#myModa-reset").on('hidden.bs.modal', function (event) {
                $(this).find("input").val("");
            });
    //删除数据
            $(document).on('click','#editable-sample button.delete', function () {
                var row=$(this).parents("tr")[0];
                var userid=$(this).data("userid");
                    swal({
                        title: "您确定要删除吗?",
                        text: "用户账户删除后将不可恢复!",
                        type: "warning",
                        showCancelButton: true,
                        confirmButtonColor: "#1ab394",
                        confirmButtonText: "确定删除！",
                        closeOnConfirm: false
                    }, function () {
                        row.className="animated bounceOut";
                        setTimeout(function(){
                            //请求成功返回
                           // row.parentNode.removeChild(row);
                            //swal("删除成功!", "用户 “香溢紫郡－案场经历” 删除成功！","success");

                            //失败
                            row.className="animated fadeInLeft";
                            swal("删除失败!", "用户userid="+userid+" “香溢紫郡－案场经历” 删除失败！","error");
                            },1000
                        )
                    });
            });
    });

    </script>
</body>
</html>
