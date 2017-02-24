<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<html>
<head>
	<title>讲师管理</title>
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
		function updateSort() {
			loading('正在提交，请稍等...');
	    	$("#listForm").attr("action", "${ctx}/tran/teacher/updateSort");
	    	$("#listForm").submit();
    	}
	</script>
</head>
<body>
	<ul class="nav nav-tabs">
		<li class="active"><a href="${ctx}/tran/teacher/">讲师列表</a></li>
		<shiro:hasPermission name="tran:teacher:edit"><li><a href="${ctx}/tran/teacher/form">讲师添加</a></li></shiro:hasPermission>
	</ul>
	<form:form id="searchForm" modelAttribute="teacher" action="${ctx}/tran/teacher/" method="post" class="breadcrumb form-search">
		<input id="pageNo" name="pageNo" type="hidden" value="${page.pageNo}"/>
		<input id="pageSize" name="pageSize" type="hidden" value="${page.pageSize}"/>
		<ul class="ul-form">
			<li><label>老师姓名：</label>
				<form:input path="name" htmlEscape="false" maxlength="20" class="input-medium"/>
			</li>
			<li class="btns"><input id="btnSubmit" class="btn btn-primary" type="submit" value="查询"/></li>
			<li class="clearfix"></li>
			<li><shiro:hasPermission name="tran:teacher:edit"><div class="form-actions pagination-left">
			<input id="btnSubmit" class="btn btn-primary" type="button" value="保存排序" onclick="updateSort();"/>
		</div></shiro:hasPermission></li>
		</ul>
	</form:form>
	<sys:message content="${message}"/>
	<form id="listForm" method="post">
	<table id="contentTable" class="table table-striped table-bordered table-condensed">
		<thead>
			<tr>
				<th>老师姓名</th>
				<th>头像</th>
				<th>创建者</th>
				<th>排序</th>
				<th>创建时间</th>
				<th>更新时间</th>
				<shiro:hasPermission name="tran:teacher:edit"><th>操作</th></shiro:hasPermission>
			</tr>
		</thead>
		<tbody>
		<c:forEach items="${page.list}" var="teacher">
			<tr>
				<td><a href="${ctx}/tran/teacher/form?id=${teacher.id}">
					${teacher.name}
				</a></td>
				<td>
					<img src="${teacher.img}" width="80"/>
				</td>
				<td>
					${teacher.createBy.name}
				</td>
				<td style="text-align:center;">
					<shiro:hasPermission name="tran:teacher:edit">
						<input type="hidden" name="ids" value="${teacher.id}"/>
						<input name="sorts" type="text" value="${teacher.sort}" style="width:50px;margin:0;padding:0;text-align:center;">
					</shiro:hasPermission>
					<shiro:lacksPermission name="tran:teacher:edit">
						${teacher.sort}
					</shiro:lacksPermission>
				</td>
				<td>
					<fmt:formatDate value="${teacher.createDate}" pattern="yyyy-MM-dd HH:mm:ss"/>
				</td>
				<td>
					<fmt:formatDate value="${teacher.updateDate}" pattern="yyyy-MM-dd HH:mm:ss"/>
				</td>
				<shiro:hasPermission name="tran:teacher:edit"><td>
    				<a href="${ctx}/tran/teacher/form?id=${teacher.id}">修改</a>
					<a href="${ctx}/tran/teacher/delete?id=${teacher.id}" onclick="return confirmx('确认要删除该讲师吗？', this.href)">删除</a>
				</td></shiro:hasPermission>
			</tr>
		</c:forEach>
		</tbody>
	</table>
	<div class="pagination">${page}</div>
	</form>
</body>
</html>