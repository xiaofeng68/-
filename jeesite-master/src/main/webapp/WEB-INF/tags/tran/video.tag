<%@ tag language="java" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<%@ attribute name="id" type="java.lang.String" required="true" description="编号"%>
<%@ attribute name="name" type="java.lang.String" required="true" description="输入框名称"%>
<%@ attribute name="value" type="java.lang.String" required="true" description="输入框值"%>
<%@ attribute name="label" type="java.lang.String" required="false" description="名称"%>
<%@ attribute name="courseid" type="java.lang.String" required="false" description="课程id"%>
<input id="${id}Id" name="${name}" type="hidden" value="${value}"/>
<input id="${id }Name" type="text" readonly="readonly" value="${label }"/>
<a id="${id}Button" href="javascript:" class="btn">选择</a>&nbsp;&nbsp;
<input id="${id }CourseId" type="hidden" value="${courseid }"/>
<script type="text/javascript">
	$("#${id}Button").click(function(){
		var courseId = $("#${id}CourseId").val();
		courseId = courseId?courseId:"";
		top.$.jBox.open("iframe:${ctx}/tran/courseVideo/tag?course.id="+courseId, "选择视频", 900, $(top.document).height()-180, {
            buttons:{"确定":"ok","清空":"clear","关闭":true}, submit:function(v, h, f){
                if (v=="ok"){
                	var videoid = h.find("iframe")[0].contentWindow.$("#videoid").val();
                	var videolabel = h.find("iframe")[0].contentWindow.$("#videolabel").val();
                	 $("#${id}Id").val(videoid);
                	 $("#${id}Name").val(videolabel);
                }else if (v=="clear"){
                	$("#${id}Id").val("");
               	 	$("#${id}Name").val("");
                }
            }, loaded:function(h){
                $(".jbox-content", top.document).css("overflow-y","hidden");
            }
        });
	});
</script>
