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
	    	$("#videoid").val(id);
	    	$("#videolabel").val(label);
	    	top.$.jBox.getBox().find("button[value='ok']").trigger("click");
	    }
	    function rowclick(id,label){
	    	$("#videoid").val(id);
	    	$("#videolabel").val(label);
	    }
    </script>
</head>
<body>
<input type="hidden" id="videoid" value="${value}" />
<input type="hidden" id="videolabel" value="${label}" />
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
<table id="video" class="table table-striped table-bordered table-condensed">
	<thead>
		<tr>
			<th>视频名称</th>
			<th>课程时长</th>
			<th>课程</th>
			<th>课程分类</th>
			<th>主讲</th>
			<th>创建者</th>
		</tr>
	</thead>
	<tbody>
	<c:forEach items="${page.list}" var="courseVideo">
		<tr ondblclick="rowdbclick('${courseVideo.id}','${courseVideo.name }')" onclick="rowclick('${courseVideo.id}','${courseVideo.name }')">
			<td>
				${courseVideo.name}
			</td>
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
		</tr>
	</c:forEach>
	</tbody>
</table>
<div class="pagination">${page}</div>
</body>
