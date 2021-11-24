<div class="ibox-content">
    <div class="table-responsive ">
        <table class="table table-centerbody table-striped table-condensed text-nowrap" id="editable-sample">
            <thead>
            <tr>
                <th>标题</th>
                <th>内容</th>
                <th>地址</th>
                <th>发生时间</th>
                <th>创建时间</th>
                <th class="text-right">操作</th>
            </tr>
            </thead>
            <tbody>
            <#if page?? && page.list?? && (page.list?size > 0) >
                <#list page.list as n>
                    <tr>
                        <td>${n.title }</td>
                        <td>${n.description }</td>
                        <td>${n.address }</td>
                        <td>${n.newsTime }</td>
                        <td>${n.createTime }</td>
                        <td class="text-right text-nowrap">
                            <div class="btn-group ">
                                <button class="btn btn-white btn-sm edit" data-id="${n.id }" data-toggle="modal"
                                        data-target="#edit">
                                    <i class="fa fa-pencil"></i> 编辑
                                </button>
                            </div>
                        </td>
                    </tr>
                </#list>
            </#if>
            </tbody>
        </table>
    </div>

    <!-- 分页表单 -->
    <form action="${ctx }/news/list_page" id="newsPageForm">
        <!-- 查询条件，用隐藏表单域 -->
        <input type="hidden" value="${keywords! }" name="keywords"/>

        <#assign formId = "newsPageForm"><!-- formId: 分页控件表单ID -->
        <#assign showPageId = "ibox"><!-- showPageId: ajax异步分页获取的数据需要加载到指定的位置 -->
        <#include "/common/page.ftl"/><!-- 分页控键 -->
    </form>

</div>