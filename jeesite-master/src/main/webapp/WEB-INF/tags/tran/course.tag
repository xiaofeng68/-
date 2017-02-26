<%@ tag language="java" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<%@ attribute name="id" type="java.lang.String" required="true" description="编号"%>
<%@ attribute name="name" type="java.lang.String" required="true" description="输入框名称"%>
<%@ attribute name="value" type="java.lang.String" required="true" description="输入框值"%>
<%@ attribute name="label" type="java.lang.String" required="false" description="名称"%>
<%@ attribute name="callback" type="java.lang.String" required="false"%>
<input id="${id}Id" name="${name}" type="hidden" value="${value}"/>
<input id="${id }Name" type="text" readonly="readonly" value="${label }"/>
<a id="${id}Button" href="javascript:" class="btn">选择</a>&nbsp;&nbsp;
<script type="text/javascript">
	$("#${id}Button").click(function(){
		top.$.jBox.open("iframe:${ctx}/tran/course/tag", "选择课程", 900, $(top.document).height()-180, {
            buttons:{"确定":"ok","清空":"clear","关闭":true}, submit:function(v, h, f){
                if (v=="ok"){
                	var videoid = h.find("iframe")[0].contentWindow.$("#courseid").val();
                	var videolabel = h.find("iframe")[0].contentWindow.$("#courselabel").val();
                	 $("#${id}Id").val(videoid);
                	 $("#${id}Name").val(videolabel);
                }else if (v=="clear"){
                	$("#${id}Id").val("");
               	 	$("#${id}Name").val("");
                }
                ${callback}
            }, loaded:function(h){
                $(".jbox-content", top.document).css("overflow-y","hidden");
            }
        });
	});
</script>
