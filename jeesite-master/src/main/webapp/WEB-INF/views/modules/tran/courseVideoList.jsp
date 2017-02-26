<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<html>
<head>
	<title>视频管理</title>
	<meta name="decorator" content="default"/>
	<script type="text/javascript">
		$(document).ready(function() {
			
		});
		function page(n,s){
			$("#pageNo").val(n);
			$("#pageSize").val(s);
			$("#searchForm").submit();
        	return false;
        }
	</script>
</head>
<body>
	<ul class="nav nav-tabs">
		<li class="active"><a href="${ctx}/tran/courseVideo/">视频列表</a></li>
		<shiro:hasPermission name="tran:courseVideo:edit"><li><a href="${ctx}/tran/courseVideo/form">视频添加</a></li></shiro:hasPermission>
	</ul>
	<form:form id="searchForm" modelAttribute="courseVideo" action="${ctx}/tran/courseVideo/" method="post" class="breadcrumb form-search">
		<input id="pageNo" name="pageNo" type="hidden" value="${page.pageNo}"/>
		<input id="pageSize" name="pageSize" type="hidden" value="${page.pageSize}"/>
		<ul class="ul-form">
			<li><label>视频名称：</label>
				<form:input path="name" htmlEscape="false" maxlength="200" class="input-medium"/>
			</li>
			<li><label>课程：</label>
				<form:select path="course.id" class="input-medium" >
					<form:option value="" label=""/>
					<form:options items="${fns:getAllCourses()}" itemLabel="name" itemValue="id" htmlEscape="false"/>
				</form:select>
			</li>
			<li><label>主讲：</label>
				<form:select path="teacher.id" class="input-medium">
					<form:option value="" label=""/>
					<form:options items="${fns:getTeacherList('')}" itemLabel="name" itemValue="id" htmlEscape="false"/>
				</form:select>
			</li>
			<li class="btns"><input id="btnSubmit" class="btn btn-primary" type="submit" value="查询"/></li>
			<li class="clearfix"></li>
		</ul>
	</form:form>
	<sys:message content="${message}"/>
	<table id="contentTable" class="table table-striped table-bordered table-condensed">
		<thead>
			<tr>
				<th>视频名称</th>
				<th>课程时长</th>
				<th>课程</th>
				<th>课程分类</th>
				<th>主讲</th>
				<th>创建者</th>
				<th>创建时间</th>
				<th>更新时间</th>
				<shiro:hasPermission name="tran:courseVideo:edit"><th>操作</th></shiro:hasPermission>
			</tr>
		</thead>
		<tbody>
		<c:forEach items="${page.list}" var="courseVideo">
			<tr>
				<td><a href="${ctx}/tran/courseVideo/form?id=${courseVideo.id}">
					${courseVideo.name}
				</a></td>
				<td>
					${courseVideo.length}分钟
				</td>
				<td>
					${courseVideo.course.name}
				</td>
				<td>
					<c:forEach items="${fns:getDictList('CourseVideo_type')}" var="type">
						<c:if test="${fn:contains(courseVideo.type, type.value)}">
						   ${type.label }
						</c:if>
					</c:forEach>
				</td>
				<td>
					${courseVideo.teacher.name}
				</td>
				<td>
					${courseVideo.createBy.name}
				</td>
				<td>
					<fmt:formatDate value="${courseVideo.createDate}" pattern="yyyy-MM-dd HH:mm:ss"/>
				</td>
				<td>
					<fmt:formatDate value="${courseVideo.updateDate}" pattern="yyyy-MM-dd HH:mm:ss"/>
				</td>
				<shiro:hasPermission name="tran:courseVideo:edit"><td>
    				<a href="${ctx}/tran/courseVideo/form?id=${courseVideo.id}">修改</a>
					<a href="${ctx}/tran/courseVideo/delete?id=${courseVideo.id}" onclick="return confirmx('确认要删除该视频吗？', this.href)">删除</a>
				</td></shiro:hasPermission>
			</tr>
		</c:forEach>
		</tbody>
	</table>
	<div class="pagination">${page}</div>
</body>
</html>