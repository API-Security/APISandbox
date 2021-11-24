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
    <link href="${ctx}/static/css/plugins/gritter/jquery.gritter.css" rel="stylesheet">
    <link href="${ctx}/static/css/plugins/multiselect/tree-multiselect.min.css" rel="stylesheet">
    <link href="${ctx}/static/css/animate.css" rel="stylesheet">
    <link href="${ctx}/static/css/style.css" rel="stylesheet">
</head>

<body class="fixed-sidebar">
    <div id="wrapper">
        <!----左侧导航开始----->
        <nav class="navbar-default navbar-static-side animated fadeInLeft" role="navigation" id="leftnav"></nav>
        <!----左侧导航结束----->

        <!---右侧内容区开始---->
        <div id="page-wrapper" class="gray-bg">
            <!---顶部状态栏 star-->
            <div class="row ">
              <nav class="navbar navbar-fixed-top" role="navigation" id="topnav"></nav>
            </div>
            <!---顶部状态栏 end-->

            <!--------当前位置----->


            <!-----内容区域---->
            <div class=" wrapper wrapper-content ">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="text-center m-t-lg">
                            <h1>
                                Welcome in INSPINIA Static SeedProject<br>
                                <p class="textp">
                                    <span class="p1">************</span><span class="p2">123</span>
                                </p>
                                <style>
                                    .textp{}
                                    .textp span{display: inline-block}
                                    .textp .p1 { 
                                        font-size: 28px;
                                        font-family:Arial;
                                        line-height: 10px;
                                        vertical-align: text-bottom;
                                    }
                                    .textp .p2 { font-size: 22px;}
                                </style>
                                <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#myModal5">TAB弹出框</button>
                            </h1>
                            <small>
                                It is an application skeleton for a typical web app. You can use it to quickly bootstrap your webapp projects and dev environment for these projects.
                            </small>
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


        <!---右侧下方小聊天框---->
        <div class="small-chat-box fadeInRight animated">

            <div class="heading" draggable="true">
                <small class="chat-date pull-right">
                    02.19.2015
                </small>
                Small chat
            </div>

            <div class="content">

                <div class="left">
                    <div class="author-name">
                        Monica Jackson <small class="chat-date">
                        10:02 am
                    </small>
                    </div>
                    <div class="chat-message active">
                        Lorem Ipsum is simply dummy text input.
                    </div>

                </div>
                <div class="right">
                    <div class="author-name">
                        Mick Smith
                        <small class="chat-date">
                            11:24 am
                        </small>
                    </div>
                    <div class="chat-message">
                        Lorem Ipsum is simpl.
                    </div>
                </div>
                <div class="left">
                    <div class="author-name">
                        Alice Novak
                        <small class="chat-date">
                            08:45 pm
                        </small>
                    </div>
                    <div class="chat-message active">
                        Check this stock char.
                    </div>
                </div>
                <div class="right">
                    <div class="author-name">
                        Anna Lamson
                        <small class="chat-date">
                            11:24 am
                        </small>
                    </div>
                    <div class="chat-message">
                        The standard chunk of Lorem Ipsum
                    </div>
                </div>
                <div class="left">
                    <div class="author-name">
                        Mick Lane
                        <small class="chat-date">
                            08:45 pm
                        </small>
                    </div>
                    <div class="chat-message active">
                        I belive that. Lorem Ipsum is simply dummy text.
                    </div>
                </div>
            </div>
            <div class="form-chat">
                <div class="input-group input-group-sm"><input type="text" class="form-control"> <span class="input-group-btn"> <button
                        class="btn btn-primary" type="button">Send
                </button> </span></div>
            </div>

        </div>
        <div id="small-chat">

            <span class="badge badge-warning pull-right">5</span>
            <a class="open-small-chat">
                <i class="fa fa-comments"></i>

            </a>
        </div>
    </div>
    
    
    <div class="modal tabs-modal fade" id="myModal5" tabindex="-1" role="dialog"  aria-hidden="true">
        <div class="modal-dialog modal-lg">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
                    <ul class="nav nav-tabs">
                        <li class="active"><a data-toggle="tab" href="#tab-1"> 全部</a></li>
                        <li class=""><a data-toggle="tab" href="#tab-2">一级下线 ( 0 )</a></li>
                        <li class=""><a data-toggle="tab" href="#tab-2">一级下线 ( 2 )</a></li>
                    </ul>
                </div>
                <div class="modal-body">
                    <div class="tabs-container">
                        
                        <div class="tab-content">
                            <div id="tab-1" class="tab-pane active">
                                <div class="panel-body">
                                    <ul class="list-unstyled">
                                        <li>姓名:陈小林   电话:13598821365   等级:一级一上线</li>
                                    </ul>

                                </div>
                            </div>
                            <div id="tab-2" class="tab-pane">
                                <div class="panel-body">
                                    <strong>Donec quam felis</strong>
                                </div>
                            </div>
                        </div>

                    </div>
            </div>
        </div>
        
       </div>
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

    /**        
    $('#my_multi_select3').multiSelect({
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
     }) **/


</script>
</body>
</html>
