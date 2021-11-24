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
				</tr>
			</thead>
			<tbody>
				<#if page?? && page.list?? && (page.list?size > 0) >
					<#list page.list as n>  
						<tr>
							<td>${n.title }</td>
							<td>${n.description }</td>
							<td>${n.address }</td>
							<td>${n.newsTime?string("yyyy-MM-dd HH:mm") }</td>
							<td>${n.createTime?string("yyyy-MM-dd HH:mm") }</td>
						</tr>
					</#list>
				</#if>
			</tbody>
		</table>
	</div>
	<!-- 分页表单 -->
	<form action="${ctx }/news/list_page2" id="newsPageForm">
		<!-- 查询条件，用隐藏表单域 -->
		<input type="hidden" value="${keywords! }" name="keywords" />
		
		<#assign formId = "newsPageForm"><!-- formId: 分页控件表单ID -->
		<#assign showPageId = "ibox"><!-- showPageId: ajax异步分页获取的数据需要加载到指定的位置 -->
		<#include "/common/page.ftl"/><!-- 分页控键 -->
	</form>
</div>