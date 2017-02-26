<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<html>
<head>
	<title>课程大纲管理</title>
	<meta name="decorator" content="default"/>
	<script type="text/javascript">
		$(document).ready(function() {
			$("#name").focus();
			$("#inputForm").validate({
				submitHandler: function(form){
					loading('正在提交，请稍等...');
					form.submit();
				},
				errorContainer: "#messageBox",
				errorPlacement: function(error, element) {
					$("#messageBox").text("输入有误，请先更正。");
					if (element.is(":checkbox") || element.is(":radio") || element.parent().is(".input-append")){
						error.appendTo(element.parent().parent());
					} else {
						error.insertAfter(element);
					}
				}
			});
		});
	</script>
</head>
<body>
	<ul class="nav nav-tabs">
		<li><a href="${ctx}/tran/courseDg/">课程大纲列表</a></li>
		<li class="active"><a href="${ctx}/tran/courseDg/form?id=${courseDg.id}&parent.id=${courseDgparent.id}">课程大纲<shiro:hasPermission name="tran:courseDg:edit">${not empty courseDg.id?'修改':'添加'}</shiro:hasPermission><shiro:lacksPermission name="tran:courseDg:edit">查看</shiro:lacksPermission></a></li>
	</ul><br/>
	<form:form id="inputForm" modelAttribute="courseDg" action="${ctx}/tran/courseDg/save" method="post" class="form-horizontal">
		<form:hidden path="id"/>
		<sys:message content="${message}"/>	
		<div class="control-group">
			<label class="control-label">上级父级编号:</label>
			<div class="controls">
				<sys:treeselect id="parent" name="parent.id" value="${courseDg.parent.id}" labelName="parent.name" labelValue="${courseDg.parent.name}"
					title="父级编号" url="/tran/courseDg/treeData" extId="${courseDg.id}" cssClass="" allowClear="true"/>
			</div>
		</div>	
		<div class="control-group">
			<label class="control-label">大纲名称：</label>
			<div class="controls">
				<form:input path="name" htmlEscape="false" maxlength="100" class="input-xlarge "/>
			</div>
		</div>
		<div class="control-group">
			<label class="control-label">所属课程：</label>
			<div class="controls">
				<tran:course name="course.id" callback="searchVideo()"  value="${courseDg.course.id }" label="${courseDg.course.name }" id="course"></tran:course>
			</div>
		</div>
		<div class="control-group">
			<label class="control-label">大纲类别：</label>
			<div class="controls">
				<form:radiobuttons path="contype" items="${fns:getDictList('Course_contype')}" itemLabel="label" itemValue="value" htmlEscape="false" class=""/>
			</div>
		</div>
		<div class="control-group">
			<label class="control-label">大纲分类：</label>
			<div class="controls">
				<form:radiobuttons path="level" items="${fns:getDictList('CourseDg_level')}" itemLabel="label" itemValue="value" htmlEscape="false" class=""/>
			</div>
		</div>
		<div class="control-group">
			<label class="control-label">排序：</label>
			<div class="controls">
				<form:input path="sort" htmlEscape="false" maxlength="11" class="input-xlarge  digits"/>
			</div>
		</div>
		<div class="control-group">
			<label class="control-label">大纲简介：</label>
			<div class="controls">
				<form:textarea path="remarks" htmlEscape="false" rows="4" maxlength="255" class="input-xxlarge "/>
			</div>
		</div>
		<div class="control-group">
			<label class="control-label">视频：</label>
			<div class="controls">
				<tran:video name="video.id" courseid="${courseDg.course.id }" value="${courseDg.video.id }" label="${courseDg.video.name }" id="video"></tran:video>
			</div>
		</div>
		<div class="control-group">
			<label class="control-label">大纲详情：</label>
			<div class="controls">
				<form:input path="des" htmlEscape="false" maxlength="255" class="input-xlarge "/>
			</div>
		</div>
		<div class="form-actions">
			<shiro:hasPermission name="tran:courseDg:edit"><input id="btnSubmit" class="btn btn-primary" type="submit" value="保 存"/>&nbsp;</shiro:hasPermission>
			<input id="btnCancel" class="btn" type="button" value="返 回" onclick="history.go(-1)"/>
		</div>
	</form:form>
	<div id="videoBox" class="hide">
		<form id="importForm" action="${ctx}/sys/user/import" method="post" enctype="multipart/form-data"
			class="form-search" style="padding-left:20px;text-align:center;" onsubmit="loading('正在导入，请稍等...');"><br/>
			<input id="uploadFile" name="file" type="file" style="width:330px"/><br/><br/>　　
			<input id="btnImportSubmit" class="btn btn-primary" type="submit" value="   导    入   "/>
			<a href="${ctx}/sys/user/import/template">下载模板</a>
		</form>
	</div>
	<script type="text/javascript">
		function searchVideo(){
			$("#videoCourseId").val($("#courseId").val());
		}
	</script>
</body>
</html>