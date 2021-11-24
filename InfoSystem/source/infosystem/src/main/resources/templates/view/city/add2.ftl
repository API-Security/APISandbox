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
    <link href="${ctx}/static/css/plugins/multiselect/tree-multiselect.min.css" rel="stylesheet">
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
        <div class="row">
            <nav class="navbar navbar-fixed-top" role="navigation" id="topnav"></nav>
        </div>
        <!---顶部状态栏 end-->

        <!--------当前位置----->
        <div class="row  border-bottom white-bg page-heading">
            <div class="col-sm-4">
                <h2>电商配置</h2>
                <ol class="breadcrumb">
                    <li>
                        <a href="${ctx}/index">管理首页</a>
                    </li>
                    <li>
                        <a href="list">城市管理</a>
                    </li>
                    <li class="active">
                        城市列表
                    </li>

                </ol>
            </div>
        </div>

        <!-----内容区域---->
        <div class="wrapper wrapper-content animated fadeInRight">
            <div class="ibox float-e-margins">
                <div class="ibox-heading">
                    <div class="ibox-title">
                        <h5>开通城市</h5>
                    </div>

                </div>
                <div class="ibox-content m-b-sm border-bottom">
                    <div class="row">
                        <div class="col-md-6">
                            <button class="btn btn-primary btn-sm">保存城市信息</button>
                        </div>
                        <div class="col-md-6">
                            <h5>请选择城市 </h5>
                        </div>
                        
                    </div>
                    <div class="row">
                        <div class="col-md-12">
                        <div class="form-group last">
                            <form>
                                    <select id="demo1" multiple="multiple">
                                        <option value="0" data-section="直辖市" >上海</option>
                                        <option value="01" data-section="直辖市" >北京</option>
                                        <option value="02" data-section="直辖市" >深圳</option>
                                        <option value="03" data-section="直辖市" >上海</option>
                                        <option value="1" data-section="河南省" selected="selected" >郑州</option>
                                        <option value="2" data-section="河南省" selected="selected" >开封</option>
                                        <option value="3" data-section="河南省" selected="selected" data-description="这是一个神奇的地方！">洛阳</option>
                                        <option value="4" data-section="河南省">周口</option>
                                        <option value="5" data-section="河南省">驻马店</option>

                                        <option value="6" data-section="山东省" selected="selected" >济南</option>
                                        <option value="7" data-section="山东省" selected="selected" >青岛</option>
                                        <option value="8" data-section="山东省" selected="selected" >大连</option>
                                        <option value="9" data-section="山东省">大别山</option>
                                        <option value="10" data-section="山东省">太行山</option>

                                        <option value="11" data-section="苏州省" selected="selected" >苏洲市</option>
                                        <option value="12" data-section="苏州省" selected="selected" >南京市</option>
                                        <option value="13" data-section="苏州省" selected="selected" data-description="我们一起看日出！">南通市</option>
                                        <option value="14" data-section="苏州省">常熟市</option>
                                        <option value="15" data-section="苏州省">阳橙湖</option>
                                        <option value="1" data-section="河南省" selected="selected" >郑州</option>
                                        <option value="2" data-section="河南省" selected="selected" >开封</option>
                                        <option value="3" data-section="河南省" selected="selected" data-description="这是一个神奇的地方！">洛阳</option>
                                        <option value="4" data-section="河南省">周口</option>
                                        <option value="5" data-section="河南省">驻马店</option>

                                        <option value="6" data-section="山东省" selected="selected" >济南</option>
                                        <option value="7" data-section="山东省" selected="selected" >青岛</option>
                                        <option value="8" data-section="山东省" selected="selected" >大连</option>
                                        <option value="9" data-section="山东省">大别山</option>
                                        <option value="10" data-section="山东省">太行山</option>

                                    </select>

                            </form>
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
<script src="${ctx}/static/js/plugins/multiselect/tree-multiselect.min.js"></script>
<!-- 插件 scripts -->
<script src="${ctx}/static/js/plugins/toastr/toastr.min.js" async></script>
<!---顶部弹出提示--->


<script>

    $(document).ready(function () {
        function a() {
            $("select#demo1").treeMultiselect(c)
        }

        var c = {
            sortable:false,
            allowBatchSelection:true,
            collapsible:true,
            hideSidePanel:false, //Hide the right panel showing all the selected items
            sectionDelimiter:'/',	//Separator between sections in the select option data-section attribute
            showSectionOnSelected:true,//Show section name on the selected items
            startCollapsed:true
        };
        a()
    });

    /*        $('#my_multi_select3').multiSelect({
     selectableHeader: "<div class='custom-header '><h4>未开通城市<small>（列表中点击即可开通）</small></h4></div><input type='text' class='form-control search-input' autocomplete='off' placeholder='搜索城市...'>",
     selectionHeader: "<div class='custom-header '><h4 class='text-navy'>已开通城市</h4></div><input type='text' class='form-control search-input' autocomplete='off' placeholder='search...'>",

     selectableOptgroup: true,
     afterInit: function (ms) {

     var that = this,
     $selectableSearch = that.$selectableUl.prev(),
     $selectionSearch = that.$selectionUl.prev(),

     selectableSearchString = '#' + that.$container.attr('id') + ' .ms-elem-selectable:not(.ms-selected)',
     selectionSearchString = '#' + that.$container.attr('id') + ' .ms-elem-selection.ms-selected';

     that.qs1 = $selectableSearch.quicksearch(selectableSearchString)
     .on('keydown', function (e) {
     if (e.which === 40) {
     that.$selectableUl.focus();
     return false;
     }
     });

     that.qs2 = $selectionSearch.quicksearch(selectionSearchString)
     .on('keydown', function (e) {
     if (e.which == 40) {
     that.$selectionUl.focus();
     return false;
     }
     });
     $('.ms-list').slimScroll({
     height: '500px',
     railVisible: true,
     color:"#65cea7",
     opacity:.8,
     size: '4px',
     borderRadius: '0', //滚动条圆角
     railBorderRadius: '0',//轨道圆角

     distance:0,
     allowPageScroll: true,
     alwaysVisible: false
     });
     },
     afterSelect: function (values) {
     this.qs1.cache();
     this.qs2.cache();
     toastr.success('本次开通的城市！'+values, '城市开通成功！');
     },
     afterDeselect: function (values) {
     this.qs1.cache();
     this.qs2.cache();
     toastr.success('本次删除的城市！'+values, '城市成功删除！');
     }
     })*/


</script>
</body>
</html>
