<%@ page contentType="text/html;charset=UTF-8"%>
<%@ include file="/WEB-INF/views/modules/cms/front/include/taglib.jsp"%>
<!DOCTYPE html>
<html>
<head>
<TITLE>${course.name }</TITLE>
<meta name="decorator" content="cms_default_${site.theme}" />
<meta name="description" content="${site.description}" />
<meta name="keywords" content="${site.keywords}" />
<link href="${ctxStaticTheme }/css/register.css" rel="stylesheet"
	type="text/css">
<script type="text/javascript"
	src="${ctxStaticTheme }/js/jquery.min.js "></script>
<link rel="stylesheet"
	href="${ctxStaticTheme }/css/common_sync0_libs_4f30de2.css" />
<link rel="stylesheet" href="${ctxStaticTheme }/css/common_sync1_libs_4637308.css" />
<link rel="stylesheet" href="${ctxStaticTheme }/css/header_d41d8cd.css" />
<link rel="stylesheet" href="${ctxStaticTheme }/css/simditor_de1c92b.css" />
<link rel="stylesheet" href="${ctxStaticTheme }/css/player_59b7d6b.css" />
<link rel="stylesheet" href="${ctxStaticTheme }/css/pop_79bec68.css" />
<link rel="stylesheet" href="${ctxStaticTheme }/css/videojs_8552290.css" />
<link href="${ctxStatic }/jQuery-video5.8/css/video-js.min.css" rel="stylesheet">
<script src="${ctxStatic }/jQuery-video5.8/js/video.min.js"></script>
<script type="text/javascript">
function changeVideo(src){
	$("video").attr("src",src);//更新url
	$('video').load()
	$('video').trigger('play');
}
</script>
</head>
<body>
	<div id="wrapper">
		<script src="${ctxStaticTheme }/js/browser.js?t=1475152597000"></script>
		<script src="${ctxStaticTheme }/js/growingio.js?t=1475152597000"></script>
		<script src="${ctxStaticTheme }/js/jquery.min.js?t=1475152597000"></script>
		<link rel="stylesheet" href="${ctxStaticTheme }/css/header.css?t=1475152597000" />
		<script src="${ctxStaticTheme }/js/header.min.js?t=1475152597000"></script>
		<script src="${ctxStaticTheme }/js/web_socket.js?t=1475152597000"></script>
		<script src="${ctxStaticTheme }/js/websocket.js?t=1475152597000"></script>
		<div id="pager">

			<div class="crumbs">
				<div class="w-1000">
					<a href="${ctx }/${frontPath }">首页</a> <em>&gt;</em> 
					<a href="${ctx }/${frontPath }/course/">职业课程库</a> <em>&gt;</em>
					<a href="${ctx }/${frontPath }/course/${course.courseType.name }/">${course.courseType.name }</a> <em>&gt;</em>
					<a href="${ctx }/${frontPath }/course/${course.id }.html">${course.name }</a>
				</div>
			</div>
			<div id="palyer-box" class="cf">
				<!-- new isnoLogin -->
				<div class="player-video player-video-no diaLoginBtn">
					<video id="example_video_1" class="video-js vjs-default-skin" controls preload="none" width="960px" height="400"
					      poster="${ctxStaticTheme }/images/play_bg_v5_abb492b.png"
					      data-setup="{}">
					    <source src="${ctxStatic }/jQuery-video5.8/1.mp4" type='video/mp4' id="videoSource"/>
					</video>
				</div>
			</div>
			<div class="lesson-table cf">
				<script src="${ctxStaticTheme }/js/module_171ec63.js"></script>
				<script src="${ctxStaticTheme }/js/hotkeys_e175c92.js"></script>
				<script src="${ctxStaticTheme }/js/uploader_ad281df.js"></script>
				<script src="${ctxStaticTheme }/js/simditor_4c30884.js"></script>
				<div class="lesson-teacher">
					<div class="bc-box">
						<h2>
							<a href="${ctx }/${frontPath }/course/${course.id }${urlSuffix }">${course.name }</a>
						</h2>
						<div class="timebox">
							<span>3课时，${course.timelength/60 }分钟</span><span class="mar-l30">
							<fmt:formatDate value="${course.createDate }" pattern="yyyy-MM-dd"/>
							</span>
						</div>
						<div class="teacher-infor cf">
							<a href="${ctx }/${frontPath }/course/teacher/${course.teacher.id }${urlSuffix }">
							<img src="${ctxStaticTheme }/images/57e4efeb7cd86.png" alt="${course.teacher.name }"></a>
							<div class="infor-text">
								<strong><a href="${ctx }/${frontPath }/course/teacher/${course.teacher.id }${urlSuffix }">${course.teacher.name }</a></strong>
								<p></p>
							</div>
						</div>
						<div class="infor-content">
							${course.remarks }
						</div>
						<div class="btn-box">
							<a href="javascript:void('0');"
								class="greenbtn sc_btn diaLoginBtn">收藏</a> <a
								class="orinagebtn diaLoginBtn" title="下载课程对应的源代码、素材等资料"
								href="javascript:void('0');">资料下载</a>
						</div>
					</div>
					<div class="less-tag">
						<span><a href="${ctx }/${frontPath }/tag/Android${urlSuffix }">Android</a></span>
						<span><a href="${ctx }/${frontPath }/tag/Android${urlSuffix }">Android</a></span>
					</div>
				</div>
				<div class="video-list">
					<div class="lessonlist-nav cf">
						<ul class="cf time-hot">
							<li class="nav_on" >课时列表</li>
							<li>技术问答</li>
						</ul>
					</div>
					<div class="lesson-box" style="display: block;">
						<ul>
							<c:forEach var="video" items="${fns:getCourseVideos(course.id) }" varStatus="num">
							<li class="on diaLoginBtn"><i class="lessonmbers"><em>${num.index+1 }</em></i>
								<div class="text-box">
									<h2>
										<a href="javascript:void(0);" class="diaLoginBtn" onclick="changeVideo('${pageContext.request.contextPath}/userfiles/1/video/tran/video/${video.id }.mp4')">${video.name }</a>
										<p class="f_r">${vieo.length }</p>
									</h2>
									<p>${discontent }</p>
								</div>
							</li>
							</c:forEach>
						</ul>
					</div>
					<!--lesson-box-->
					<div class="lesson-box" style="display:none;">
						<div class="jkxy-subask-nologin">
							只有成为VIP会员才能提问&amp;回复，快
							<a id="diaLoginBtn" href="javascript:void(0);">登录</a>吧！如果你还没有账号你可以
							<a href="javascript:void(0)" ;="" id="diaregBtn" name="reg"
								postion="qa_show_r_f">注册</a>一个账号。
						</div>

						<div class="lesson-list2" id="">
							<ul class="cf" id="course_question_list">

							</ul>
							<div id="page-nav"></div>
						</div>
					</div>
					<style>
						ul.pages li {
							width: 30px !important;
							height: 30px !important;
							padding: 0px !important;
							clear: inherit !important;
							float: left;
							border: 1px solid #e4e4e4 !important;
						}
						
						ul.pages li.pgNext {
							width: 40px !important;
						}
						
						ul.pages li.pagenow {
							width: 100px !important;
						}
						
						ul.pages li.pgEmpty {
							border: 1px solid #f0f0f0;
							color: #d9d6c3;
							background-color: #f0f0f0;
							width: 50px !important;
						}
						
						ul.pages li.thpoint {
							margin-top: 0px !important;
							border: none !important;
						}
						
						ul.pages li.go {
							margin-top: 0px !important;
							line-height: 30px !important;
						}
						
						ul.pages li.pagetotal {
							width: 70px !important;
						}
						</style>
					<!--lesson-box end-->
					<!--lesson-box-->
					<!--lesson-box end-->
				</div>
				<!--弹出1-->
				<div class="add-pop1" id="pop-one" style="display: none;">
					<span class="popclose close-one"></span>
					<div class="add-title">
						<strong>添加新技术问题</strong>
						<!-- <span>非技术类问题，请移步 <a href="#">[互动交流区]</a></span> -->
					</div>
					<div class="input-title">
						<div class="inputbox cf">
							<div class="user-img">
								<img src="" alt="">
							</div>
							<input type="text" placeholder="请输入问题的标题" class="one-input">
						</div>
						<button class="input-inforbtn">填写详情</button>
					</div>
					<div class="lesson-qustiontitle">
						课程 <a>[DragonboardTM 410c 概览] </a> 中已存在问题
					</div>
					<div class="qustion-list">
						<ul id="returnQaTopics">
						</ul>
					</div>
				</div>
				<!--弹出1 end-->
				<!--弹出2-->
				<div class="add-pop1" id="pop-tow" style="display: none;">
					<span class="popclose close-two"></span>
					<div class="add-title">
						<strong>添加新技术问题</strong>
						<!-- <span>非技术类问题，请移步 <a href="#">[互动交流区]</a></span> -->
					</div>
					<form id='reply_form'
						myurl=http://www.jikexueyuan.com/image/upload?uid=ecb6hA3Si7Q39EfmBSxOIsaB0hENqKrvqO6pKuqq5NvJgzJTIb4JlQ>
						<div class="input-title">
							<div class="inputbox2 cf">
								<div class="user-img">
									<img src="" alt="">
								</div>
								<div>
									<input type="text" name="qa_sub_title" id="qa_sub_title" data-type="blur" class="tow-input" autocomplete="off">
								</div>
							</div>
						</div>
						<div class="lesson-qustiontitle">问题描述越详细，被解答的速度越快</div>
						<div class="edit-box" id="replies_editor">
							<textarea id="editor"
								placeholder="文字请尽量表述清晰、详尽、完整，针对课程的问题请注明出现时间，以便于快速查找问题并及时为你解答。"
								autofocus>
							</textarea>
						</div>
						<div class="emailandlevel cf">
							<div class="email">
								<input type="checkbox" checked="checked" name="send_email">有新回答时请邮件提醒我
							</div>
							<div class="level">
								<span><input type="radio" name="qalevel" value="1">十万火急</span>
								<span><input type="radio" name="qalevel" value="2" checked="">着急，拜托快点</span>
								<span><input type="radio" name="qalevel" value="3">不急，慢慢解决</span>
							</div>
						</div>
						<div class="otherlesson">
							关联课程 <a>[${course.name } 概览]</a>
						</div>
						<button class="greenbtn tiwt-btn" id="qa_subask_submit">提交问题</button>
					</form>
				</div>
				<!--弹出2end-->
			</div>
		</div>
	</div>
</body>
</html>
