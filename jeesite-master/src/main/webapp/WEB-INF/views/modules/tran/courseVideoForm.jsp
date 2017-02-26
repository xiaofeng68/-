<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<html>
<head>
	<title>视频管理</title>
	<meta name="decorator" content="default"/>
	<script type="text/javascript">
		$(document).ready(function() {
			//$("#name").focus();
			$("#inputForm").validate({
				submitHandler: function(form){
					loading('正在提交，请稍等...');
					form.submit();
				},
				errorContainer: "#messageBox",
				errorPlacement: function(error, element) {
					$("#messageBox").text("输入有误，请先更正。");
					if (element.is(":checkbox")||element.is(":radio")||element.parent().is(".input-append")){
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
		<li><a href="${ctx}/tran/courseVideo/">视频列表</a></li>
		<li class="active"><a href="${ctx}/tran/courseVideo/form?id=${courseVideo.id}">视频<shiro:hasPermission name="tran:courseVideo:edit">${not empty courseVideo.id?'修改':'添加'}</shiro:hasPermission><shiro:lacksPermission name="tran:courseVideo:edit">查看</shiro:lacksPermission></a></li>
	</ul><br/>
	<form:form id="inputForm" modelAttribute="courseVideo" action="${ctx}/tran/courseVideo/save" method="post" class="form-horizontal">
		<form:hidden path="id"/>
		<sys:message content="${message}"/>		
		<div class="control-group">
			<label class="control-label">视频名称：</label>
			<div class="controls">
				<form:input path="name" htmlEscape="false" maxlength="200" class="input-xlarge "/>
			</div>
		</div>
		<div class="control-group">
			<label class="control-label">课程时长：</label>
			<div class="controls">
				<form:input path="length" htmlEscape="false" maxlength="10" class="input-xlarge "/>
			</div>
		</div>
		<div class="control-group">
			<label class="control-label">简介：</label>
			<div class="controls">
				<form:input path="discontent" htmlEscape="false" class="input-xlarge "/>
			</div>
		</div>
		<div class="control-group">
			<label class="control-label">视频路径：</label>
			<div class="controls">
				<input type="hidden" id="url" name="url" value="${courseVideo.url}" />
				<sys:ckfinder input="url" type="video" uploadPath="/tran/video" selectMultiple="false"/>
			</div>
		</div>
		<div class="control-group">
			<label class="control-label">课程：</label>
			<div class="controls">
				<form:select path="course.id" class="input-xlarge ">
					<form:option value="" label=""/>
					<form:options items="${fns:getAllCourses()}" itemLabel="name" itemValue="id" htmlEscape="false"/>
				</form:select>
			</div>
		</div>
		<div class="control-group">
			<label class="control-label">主讲：</label>
			<div class="controls">
				<form:select path="teacher.id" class="input-xlarge ">
					<form:option value="" label=""/>
					<form:options items="${fns:getTeacherList('')}" itemLabel="name" itemValue="id" htmlEscape="false"/>
				</form:select>
			</div>
		</div>
		<div class="control-group">
			<label class="control-label">备注信息：</label>
			<div class="controls">
				<form:textarea path="remarks" htmlEscape="false" rows="4" maxlength="255" class="input-xxlarge "/>
			</div>
		</div>
		<div class="control-group">
			<label class="control-label">视频分类：</label>
			<div class="controls">
				<form:checkboxes path="type" items="${fns:getDictList('CourseVideo_type')}" itemLabel="label" itemValue="value" htmlEscape="false" class=""/>
			</div>
		</div>
		<div class="form-actions">
			<shiro:hasPermission name="tran:courseVideo:edit"><input id="btnSubmit" class="btn btn-primary" type="submit" value="保 存"/>&nbsp;</shiro:hasPermission>
			<input id="btnCancel" class="btn" type="button" value="返 回" onclick="history.go(-1)"/>
		</div>
	</form:form>
</body>
</html>