<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<html>
<head>
	<title>课程类型管理</title>
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
		<li><a href="${ctx}/tran/courseType/">课程类型列表</a></li>
		<li class="active"><a href="${ctx}/tran/courseType/form?id=${courseType.id}&parent.id=${courseTypeparent.id}">课程类型<shiro:hasPermission name="tran:courseType:edit">${not empty courseType.id?'修改':'添加'}</shiro:hasPermission><shiro:lacksPermission name="tran:courseType:edit">查看</shiro:lacksPermission></a></li>
	</ul><br/>
	<form:form id="inputForm" modelAttribute="courseType" action="${ctx}/tran/courseType/save" method="post" class="form-horizontal">
		<form:hidden path="id"/>
		<sys:message content="${message}"/>		
		<div class="control-group">
			<label class="control-label">上级父级编号:</label>
			<div class="controls">
				<sys:treeselect id="parent" name="parent.id" value="${courseType.parent.id}" labelName="parent.name" labelValue="${courseType.parent.name}"
					title="父级编号" url="/tran/courseType/treeData" extId="${courseType.id}" cssClass="" allowClear="true"/>
			</div>
		</div>
		<div class="control-group">
			<label class="control-label">课程类型名称：</label>
			<div class="controls">
				<form:input path="name" htmlEscape="false" maxlength="50" class="input-xlarge required"/>
				<span class="help-inline"><font color="red">*</font> </span>
			</div>
		</div>
		<div class="control-group">
			<label class="control-label">课程类型编号：</label>
			<div class="controls">
				<form:input path="code" htmlEscape="false" maxlength="50" class="input-xlarge"/>
			</div>
		</div>
		<div class="control-group">
			<label class="control-label">排序：</label>
			<div class="controls">
				<form:input path="sort" htmlEscape="false" maxlength="11" class="input-xlarge required digits"/>
				<span class="help-inline"><font color="red">*</font> </span>
			</div>
		</div>
		<div class="control-group">
			<label class="control-label">课程背景：</label>
			<div class="controls">
				<input type="hidden" id="img" name="img" value="${courseType.img}" />
				<sys:ckfinder input="img" type="images" uploadPath="/tran/coursetype" selectMultiple="false"/>
			</div>
		</div>
		<div class="control-group">
			<label class="control-label">备注信息：</label>
			<div class="controls">
				<form:textarea path="remarks" htmlEscape="false" rows="4" maxlength="255" class="input-xxlarge "/>
			</div>
		</div>
		<div class="control-group">
			<label class="control-label">常见问题：</label>
			<div class="controls">
				<form:textarea id="questions" htmlEscape="true" path="questions" rows="4" maxlength="200" class="input-xxlarge"/>
				<sys:ckeditor replace="questions" uploadPath="/train/coursetype" />
			</div>
		</div>
		
		
		<div class="form-actions">
			<shiro:hasPermission name="tran:courseType:edit"><input id="btnSubmit" class="btn btn-primary" type="submit" value="保 存"/>&nbsp;</shiro:hasPermission>
			<input id="btnCancel" class="btn" type="button" value="返 回" onclick="history.go(-1)"/>
		</div>
	</form:form>
</body>
</html>