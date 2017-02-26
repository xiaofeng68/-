<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<html>
<head>
	<title>课程大纲管理</title>
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
			$("#treeTable").treeTable({expandLevel : 5});
		});
		function addRow(list, tpl, data, pid, root){
			for (var i=0; i<data.length; i++){
				var row = data[i];
				if ((${fns:jsGetVal('row.parentId')}) == pid){
					$(list).append(Mustache.render(tpl, {
						dict: {
							contype: getDictLabel(${fns:toJson(fns:getDictList('Course_contype'))}, row.contype),
							level: getDictLabel(${fns:toJson(fns:getDictList('CourseDg_level'))}, row.level),
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
		<li class="active"><a href="${ctx}/tran/courseDg/">课程大纲列表</a></li>
		<shiro:hasPermission name="tran:courseDg:edit"><li><a href="${ctx}/tran/courseDg/form">课程大纲添加</a></li></shiro:hasPermission>
	</ul>
	<form:form id="searchForm" modelAttribute="courseDg" action="${ctx}/tran/courseDg/" method="post" class="breadcrumb form-search">
		<ul class="ul-form">
			<li><label>大纲名称：</label>
				<form:input path="name" htmlEscape="false" maxlength="100" class="input-medium"/>
			</li>
			<li><label>大纲类别：</label>
				<form:radiobuttons path="contype" items="${fns:getDictList('Course_contype')}" itemLabel="label" itemValue="value" htmlEscape="false"/>
			</li>
			<li class="btns"><input id="btnSubmit" class="btn btn-primary" type="submit" value="查询"/></li>
			<li class="clearfix"></li>
		</ul>
	</form:form>
	<sys:message content="${message}"/>
	<table id="treeTable" class="table table-striped table-bordered table-condensed">
		<thead>
			<tr>
				<th>大纲名称</th>
				<th>大纲类别</th>
				<th>大纲分类</th>
				<th>创建者</th>
				<th>创建时间</th>
				<th>更新时间</th>
				<th>主讲</th>
				<shiro:hasPermission name="tran:courseDg:edit"><th>操作</th></shiro:hasPermission>
			</tr>
		</thead>
		<tbody id="treeTableList"></tbody>
	</table>
	<script type="text/template" id="treeTableTpl">
		<tr id="{{row.id}}" pId="{{pid}}">
			<td><a href="${ctx}/tran/courseDg/form?id={{row.id}}">
				{{row.name}}
			</a></td>
			<td>
				{{dict.contype}}
			</td>
			<td>
				{{dict.level}}
			</td>
			<td>
				{{row.createBy.name}}
			</td>
			<td>
				{{row.createDate}}
			</td>
			<td>
				{{row.updateDate}}
			</td>
			<td>
				{{row.teacher.name}}
			</td>
			<shiro:hasPermission name="tran:courseDg:edit"><td>
   				<a href="${ctx}/tran/courseDg/form?id={{row.id}}">修改</a>
				<a href="${ctx}/tran/courseDg/delete?id={{row.id}}" onclick="return confirmx('确认要删除该课程大纲及所有子课程大纲吗？', this.href)">删除</a>
				<a href="${ctx}/tran/courseDg/form?parent.id={{row.id}}">添加下级课程大纲</a> 
			</td></shiro:hasPermission>
		</tr>
	</script>
</body>
</html>