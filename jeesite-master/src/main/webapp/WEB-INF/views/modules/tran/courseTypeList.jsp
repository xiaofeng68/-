<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<html>
<head>
	<title>课程类型管理</title>
	<meta name="decorator" content="default"/>
	<%@include file="/WEB-INF/views/include/treetable.jsp" %>
	<script type="text/javascript">
		$(document).ready(function() {
			var tpl = $("#treeTableTpl").html().replace(/(\/\/\<!\-\-)|(\/\/\-\->)/g,"");
			var data = ${fns:toJson(list)}, ids = [], rootIds = [];
			for (var i=0; i<data.length; i++){
				ids.push(data[i].id);
			}
			ids = ',' + ids.join(',') + ',';
			for (var i=0; i<data.length; i++){
				if (ids.indexOf(','+data[i].parentId+',') == -1){
					if ((','+rootIds.join(',')+',').indexOf(','+data[i].parentId+',') == -1){
						rootIds.push(data[i].parentId);
					}
				}
			}
			for (var i=0; i<rootIds.length; i++){
				addRow("#treeTableList", tpl, data, rootIds[i], true);
			}
			$("#treeTable").treeTable({expandLevel : 1});
		});
		function addRow(list, tpl, data, pid, root){
			for (var i=0; i<data.length; i++){
				var row = data[i];
				if ((${fns:jsGetVal('row.parentId')}) == pid){
					$(list).append(Mustache.render(tpl, {
						dict: {
							delFlag: getDictLabel(${fns:toJson(fns:getDictList('del_flag'))}, row.delFlag),
						blank123:0}, pid: (root?0:pid), row: row
					}));
					addRow(list, tpl, data, row.id);
				}
			}
		}
	</script>
</head>
<body>
	<ul class="nav nav-tabs">
		<li class="active"><a href="${ctx}/tran/courseType/">课程类型列表</a></li>
		<shiro:hasPermission name="tran:courseType:edit"><li><a href="${ctx}/tran/courseType/form">课程类型添加</a></li></shiro:hasPermission>
	</ul>
	<form:form id="searchForm" modelAttribute="courseType" action="${ctx}/tran/courseType/" method="post" class="breadcrumb form-search">
		<ul class="ul-form">
			<li><label>类型名称：</label>
				<form:input path="name" htmlEscape="false" maxlength="50" class="input-medium"/>
			</li>
			<li class="btns"><input id="btnSubmit" class="btn btn-primary" type="submit" value="查询"/></li>
			<li class="clearfix"></li>
		</ul>
	</form:form>
	<sys:message content="${message}"/>
	<table id="treeTable" class="table table-striped table-bordered table-condensed">
		<thead>
			<tr>
				<th>类型名称</th>
				<th>类型编号</th>
				<th>创建时间</th>
				<th>更新时间</th>
				<shiro:hasPermission name="tran:courseType:edit"><th>操作</th></shiro:hasPermission>
			</tr>
		</thead>
		<tbody id="treeTableList"></tbody>
	</table>
	<script type="text/template" id="treeTableTpl">
		<tr id="{{row.id}}" pId="{{pid}}">
			<td><a href="${ctx}/tran/courseType/form?id={{row.id}}">
				{{row.name}}
			</a></td>
			<td>
				{{row.code}}
			</td>
			<td>
				{{row.createDate}}
			</td>
			<td>
				{{row.updateDate}}
			</td>
			<shiro:hasPermission name="tran:courseType:edit"><td>
   				<a href="${ctx}/tran/courseType/form?id={{row.id}}">修改</a>
				<a href="${ctx}/tran/courseType/delete?id={{row.id}}" onclick="return confirmx('确认要删除该课程类型及所有子课程类型吗？', this.href)">删除</a>
				<a href="${ctx}/tran/courseType/form?parent.id={{row.id}}">添加下级课程类型</a> 
			</td></shiro:hasPermission>
		</tr>
	</script>
</body>
</html>