<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<html>
<head>
    <title>视频选择</title>
	<meta name="decorator" content="blank"/>
    <script type="text/javascript">
	    function page(n,s){
			$("#pageNo").val(n);
			$("#pageSize").val(s);
			$("#searchForm").submit();
	    	return false;
	    }
	    function rowdbclick(id,label){
	    	$("#courseid").val(id);
	    	$("#courselabel").val(label);
	    	top.$.jBox.getBox().find("button[value='ok']").trigger("click");
	    }
	    function rowclick(id,label){
	    	$("#courseid").val(id);
	    	$("#courselabel").val(label);
	    }
    </script>
</head>
<body>
<input type="hidden" id="courseid" value="${value}" />
<input type="hidden" id="courselabel" value="${label}" />
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
				<th>课程分类</th>
				<th>主讲老师</th>
				<th>价格</th>
				<th>优惠价格</th>
				<th>VIP价格</th>
				<th>时长</th>
				<th>有效期</th>
			</tr>
		</thead>
		<tbody>
		<c:forEach items="${page.list}" var="course">
			<tr ondblclick="rowdbclick('${course.id}','${course.name }')" onclick="rowclick('${course.id}','${course.name }')">
				<td>
					${course.name}
				</td>
				<td>
					${course.courseType.name}
				</td>
				<td>
					${fns:getDictLabel(course.contype, 'CourseType_contype', '')}
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
			</tr>
		</c:forEach>
		</tbody>
	</table>
	<div class="pagination">${page}</div>
</body>
