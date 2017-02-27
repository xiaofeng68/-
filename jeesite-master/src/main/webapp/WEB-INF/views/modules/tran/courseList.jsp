<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<html>
<head>
	<title>课程管理</title>
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
		<li class="active"><a href="${ctx}/tran/course/">课程列表</a></li>
		<shiro:hasPermission name="tran:course:edit"><li><a href="${ctx}/tran/course/form">课程添加</a></li></shiro:hasPermission>
	</ul>
	<form:form id="searchForm" modelAttribute="course" action="${ctx}/tran/course/" method="post" class="breadcrumb form-search">
		<input id="pageNo" name="pageNo" type="hidden" value="${page.pageNo}"/>
		<input id="pageSize" name="pageSize" type="hidden" value="${page.pageSize}"/>
		<ul class="ul-form">
			<li><label>课程名称：</label>
				<form:input path="name" htmlEscape="false" maxlength="200" class="input-medium"/>
			</li>
			<li><label>主讲老师：</label>
				<form:select path="teacher.id" class="input-xlarge ">
					<form:option value="" label=""/>
					<form:options items="${fns:getTeacherList('')}" itemLabel="name" itemValue="id" htmlEscape="false"/>
				</form:select>
			</li>
			<li><label>课程类型：</label>
			<sys:treeselect id="type" name="courseType.id" value="${course.courseType.id}" labelName="courseType.name" labelValue="${course.courseType.name}"
					title="课程类型" url="/tran/courseType/treeData" cssClass="" allowClear="true" notAllowSelectParent="true"/>
			</li>
			<li class="btns"><input id="btnSubmit" class="btn btn-primary" type="submit" value="查询"/></li>
			<li class="clearfix"></li>
		</ul>
	</form:form>
	<sys:message content="${message}"/>
	<table id="contentTable" class="table table-striped table-bordered table-condensed">
		<thead>
			<tr>
				<th>课程名称</th>
				<th>课程类型</th>
				<th>主讲老师</th>
				<th>价格</th>
				<th>优惠价格</th>
				<th>VIP价格</th>
				<th>时长</th>
				<th>有效期</th>
				<th>学习人数</th>
				<th>创建者</th>
				<th>创建时间</th>
				<th>更新时间</th>
				<shiro:hasPermission name="tran:course:edit"><th>操作</th></shiro:hasPermission>
			</tr>
		</thead>
		<tbody>
		<c:forEach items="${page.list}" var="course">
			<tr>
				<td><a href="${ctx}/tran/course/form?id=${course.id}">
					${course.name}
				</a></td>
				<td>
					${course.courseType.name}
				</td>
				<td>
					${course.teacher.name}
				</td>
				<td>
					${course.price}
				</td>
				<td>
					${course.nprice}
				</td>
				<td>
					${course.vipprice}
				</td>
				<td>
					${course.timelength}
				</td>
				<td>
					${course.days}
				</td>
				<td>
					${course.students}
				</td>
				<td>
					${course.createBy.name}
				</td>
				<td>
					<fmt:formatDate value="${course.createDate}" pattern="yyyy-MM-dd HH:mm:ss"/>
				</td>
				<td>
					<fmt:formatDate value="${course.updateDate}" pattern="yyyy-MM-dd HH:mm:ss"/>
				</td>
				<shiro:hasPermission name="tran:course:edit"><td>
    				<a href="${ctx}/tran/course/form?id=${course.id}">修改</a>
					<a href="${ctx}/tran/course/delete?id=${course.id}" onclick="return confirmx('确认要删除该课程吗？', this.href)">删除</a>
				</td></shiro:hasPermission>
			</tr>
		</c:forEach>
		</tbody>
	</table>
	<div class="pagination">${page}</div>
</body>
</html>