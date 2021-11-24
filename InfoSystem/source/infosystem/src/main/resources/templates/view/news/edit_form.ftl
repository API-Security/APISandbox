<input type="hidden" name="id" value="${news.id }" />
<div class="form-group">
	<label class="col-sm-4 control-label" for="title">标题 <span class="text-danger">*</span></label>
	<div class="col-sm-8">
		<input type="text" id="title" name="title" value="${news.title }" required class="form-control">
	</div>
</div>
<div class="form-group">
	<label class="col-sm-4 control-label" for="description">内容 <span class="text-danger">*</span></label>
	<div class="col-sm-8">
		<input type="text" id="description" name="description" value="${news.description }" required class="form-control">
	</div>
</div>
<div class="form-group">
	<label class="col-sm-4 control-label" for="address">地址 <span class="text-danger">*</span></label>
	<div class="col-sm-8">
		<input type="text" id="address" name="address" value="${news.address }" required class="form-control">
	</div>
</div>
<div class="form-group">
	<label class="col-sm-4 control-label" for="newsTime">新闻发生时间 <span class="text-danger">*</span></label>
	<div class="col-sm-8">
		<input type="text" id="newsTime" name="newsTime" onfocus="WdatePicker({skin:'whyGreen',dateFmt:'yyyy-MM-dd HH:mm',firstDayOfWeek:1,readOnly:true})" value='${news.newsTime}?string("yyyy-MM-dd HH:mm")' class="form-control Wdate" required>
	</div>
</div>
<div class="form-group m-t-sm">
	<div class="col-sm-6 col-sm-push-4">
		<button class="btn btn-md btn-primary " type="submit">
			<strong>保存，重新发布</strong>
		</button>
		<button type="button" class="btn btn-white m-l-sm" data-dismiss="modal">取消</button>
	</div>
</div>
