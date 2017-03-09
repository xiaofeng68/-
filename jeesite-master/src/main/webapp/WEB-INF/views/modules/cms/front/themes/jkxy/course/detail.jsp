<%@ page contentType="text/html;charset=UTF-8"%>
<%@ include file="/WEB-INF/views/modules/cms/front/include/taglib.jsp"%>
<!DOCTYPE html>
<html>
<head>
<TITLE>${course.name }</TITLE>
<meta name="decorator" content="cms_default_${site.theme}" />
<meta name="description" content="${site.description}" />
<meta name="keywords" content="${site.keywords}" />
<link rel="stylesheet" href="${ctxStaticTheme }/css/common_sync0_libs_5e95d01.css" />
<link rel="stylesheet" href="${ctxStaticTheme }/css/common_sync1_libs_4637308.css" />
<link rel="stylesheet" href="${ctxStaticTheme }/css/header_d41d8cd.css" />
<link rel="stylesheet" href="${ctxStaticTheme }/css/detail_3233258.css" />
</head>
<body>
	<div id="wrapper">
		<script src="${ctxStaticTheme }/js/browser.js?t=1483671031000"></script>
		<script src="${ctxStaticTheme }/js/growingio.js?t=1483671031000"></script>
		<script src="${ctxStaticTheme }/js/jquery.min.js?t=1483671031000"></script>
		<link rel="stylesheet" href="${ctxStaticTheme }/css/header.css?t=1483671031000" />
		<script src="${ctxStaticTheme }/js/header.min.js?t=1483671031000"></script>
		<script src="${ctxStaticTheme }/js/web_socket.js?t=1483671031000"></script>
		<script src="${ctxStaticTheme }/js/websocket.js?t=1483671031000"></script>
		<div id="pager">
			<div class="crumbs">
				<div class="w-1000">
					<a href="${ctx }/train/course-${courseType.code}-${courseType.id}${urlSuffix}">${courseType.name }</a> 
					<em> > </em> 
					${course.name }
				</div>
			</div>
			<!-- /crumbs -->
			<!-- zyd-top -->
			<div class="zyd-top w-1000 cf">
				<div class="media f_l">
					<img src="${course.img }"
						alt="${course.name }">
				</div>
				<ul class="explain f_r">
					<li>
						<h1>${course.name }</h1> <i class="icon-tag-yellow">新</i> <!-- <i class="icon-tag-red">周年庆</i> -->
					</li>
					<li class="author">主讲 : 
					<c:set var="teachers" value="${fns:getTeacherByCourse(course.id) }"/>
					<c:forEach var="teacher" items="${teachers }" end="2">
						${teacher.name }&nbsp;
					</c:forEach>
					<c:if test="${fn:length(teachers)>3}">等</c:if>
					</li>
					<li class="intor">${course.remarks }</li>
					<li class="price"><span class="curr-price">￥${course.nprice }</span> <span
						class="old-price">￥${course.price }</span> <span class="vip-price">￥${course.vipprice }</span>
					</li>
					<li class="cf last">
						<!-- 免费试学、立即报名、去学习 --> 
						<a class="greenbtn" href="${ctx }${frontPath}/train/video-${course.id}-0${urlSuffix }" target="_blank">免费试学</a> 
						<!-- 登录用户已购买 --> 
						<a class="greenbtn2" href="${ctx }${frontPath}/train/baoming-${course.id}-0${urlSuffix }" target="_blank" lessonid="${course.id }" price="${course.nprice }" data-zhiye-id="7">立即报名</a>
						<p class="time">
							<span>${course.students }人学习</span><span>时长 : ${course.timelength/60 } 小时</span><span>有效期 : ${course.days }
								天 <i class="icon-ques2"> <span
									class="absolute pop-buy-infor"><em></em>
									有效期自支付成功后开始计算，到期后仍可观看课程视频和图文，但不再享受问答和作业批改等服务。
									</span>
							</i>
							</span>
						</p>
					</li>
				</ul>
			</div>
			<!-- /zyd-top -->
			<div class="zyd-main w-1000 cf">
				<!-- zyd-tab -->
				<div class="zyd-tab mar-t20 mar-r20 f_l">
					<div id="fixed">
						<ul class="tabnav cf">
							<li class="active">课程详情</li>
							<li>课程大纲</li>
							<li class="show"><a class="greenbtn"
								href="http://xue.jikexueyuan.com/zhiye/course/try?zhiye_class_id=7&goods_id=10&ke_id=13&amp;type=lesson&amp;lesson_id=414"
								target="_blank">免费试学</a> <!-- 登录用户已购买 --> <a class="greenbtn2"
								href="http://xue.jikexueyuan.com/zhiye/course/buy/10/7"
								target="_blank" lessonid="10" price="999.00" data-zhiye-id="7">立即报名</a>
							</li>
						</ul>
					</div>
					<!-- tabcon -->
					<div class="tabcon">
						<div class="ke-detail active">
							${course.des }
						</div>
						<div class="ke-outline">
							<!-- 没有分组 -->
							<!-- 有分组 -->
							<span class="tag-bg-level">职业入门</span>
							<!-- 课程完成 -->
							<div class="catalog">
								<c:forEach var="dg1" items="${fns:getCourseDgs(course.id,1,1)}">
								<h2 class="theme">${dg1.name }</h2>
								<i class="icon-pull-down toggle"></i> <span class="author">主讲：${dg1.teacher.name }</span>
								<p class="desc">${dg1.remarks }</p>
								<!-- 部分 -->
								<div class="book">
									<c:forEach var="dg2" items="${fns:getCourseDgsByParent(dg1.id)}">
									<h3 class="sub-theme">
										${dg2.name } <em>${dg2.timelength }分钟</em>
									</h3>
									<c:forEach var="dg3" items="${fns:getCourseDgsByParent(dg2.id)}">
									<!-- 节 -->
									<!-- 不可学 -->
									<dl class="play">
										<dt>
											${dg3.name }<span>${dg3.timelength } 分钟</span>
										</dt>
										<c:forEach var="dg4" items="${fns:getCourseDgsByParent(dg3.id)}">
										<!-- 课时 -->
										<dd>
											${dg4.name } <span class="icon-play"></span>
										</dd>
										</c:forEach>
									</dl>
									</c:forEach>
									</c:forEach>
									<!-- 作业 -->
								</div>
								</c:forEach>
							</div>
							<!-- 课程未完成 -->
							<!-- /课程未完成 -->
							<span class="tag-bg-level">基础知识</span>
							<!-- 课程完成 -->
							<div class="catalog">
								<c:forEach var="dg1" items="${fns:getCourseDgs(course.id,2,1)}">
								<h2 class="theme">${dg1.name }</h2>
								<i class="icon-pull-down toggle"></i> <span class="author">主讲：${dg1.teacher.name }</span>
								<p class="desc">${dg1.remarks }</p>
								<!-- 部分 -->
								<div class="book">
									<c:forEach var="dg2" items="${fns:getCourseDgsByParent(dg1.id)}">
									<h3 class="sub-theme">
										${dg2.name } <em>${dg2.timelength }分钟</em>
									</h3>
									<c:forEach var="dg3" items="${fns:getCourseDgsByParent(dg2.id)}">
									<!-- 节 -->
									<!-- 不可学 -->
									<dl class="play">
										<dt>
											${dg3.name }<span>${dg3.timelength } 分钟</span>
										</dt>
										<c:forEach var="dg4" items="${fns:getCourseDgsByParent(dg3.id)}">
										<!-- 课时 -->
										<dd>
											${dg4.name } <span class="icon-play"></span>
										</dd>
										</c:forEach>
									</dl>
									</c:forEach>
									</c:forEach>
									<!-- 作业 -->
								</div>
								</c:forEach>
							</div>
							<!-- 课程未完成 -->
							<!-- /课程未完成 -->
							<div class="serve">
								<h4>学员服务</h4>
								<ul class="cf">
									<li><i class="icon-check"></i> 作业批改</li>
									<li><i class="icon-ques"></i> 有问必答</li>
									<li><i class="icon-star"></i> 学业完成证明</li>
								</ul>
							</div>

						</div>
					</div>
					<!-- /tabcon -->
				</div>
				<!-- /zyd-tab -->
				<!-- zyd-aside -->
				<div class="zyd-aside mar-t20 f_r">
					<h3 class="caption">主讲老师</h3>
					<ul class="list">
						<c:forEach var="teacher" items="${teachers }">
						<li>
							<div class="teacher cf">
								<a class="headpic" href="javascript:;"> <img
									src="${teacher.img }" alt="">
								</a>
								<h2 class="tit">
									<a href="javascript:;">${teacher.code }</a>
								</h2>
								<span class="desc">${teacher.name }</span>
							</div>
							<p class="intor">${teacher.remarks }</p>
						</li>
						</c:forEach>
					</ul>
				</div>
				<!-- /zyd-aside -->
			</div>
			<!-- pop -->
			<ul id="notifyPop" data-id="10">
				<input type='hidden' name="CSRF" value="ZXwAeC9sy3kFMmJLxyGzgDDe" />
				<li class="cf"><label>姓名</label> <input type="text"
					name="nickname" id="nickName" placeholder="如何称呼您" value="">
					<span class="err"></span></li>
				<li class="cf"><label>手机 <span class="must">*</span></label> <input
					type="text" name="" id="mobile" placeholder="请填写11位手机号码" value="">
					<span class="err"></span></li>
				<li class="btn-def"><a class="greenbtn" id="notifyBtn"
					href="javascript:;">提交</a></li>
			</ul>
			<!-- pop -->
			<script src="${ctxStaticTheme }/js/layer.js"></script>
			<script src="${ctxStaticTheme }/js/detail_7cd68f6.js"></script>
			<script src="${ctxStaticTheme }/js/meiqia_fd9ab62.js"></script>
		</div>

		<script src="${ctxStaticTheme }/js/footer.min.js"></script>
		<script src="${ctxStaticTheme }/js/os.js"></script>
		<script type="text/javascript">
			BAIDU_CLB_fillSlotAsync('2478912', 'diaochaid');
		</script>
		<script type="text/javascript" src="${ctxStaticTheme }/js/dsp.js"></script>
		<link href="${ctxStaticTheme }/css/register.css" rel="stylesheet"
			type="text/css">
		<script type="text/javascript"
			src="${ctxStaticTheme }/js/LoginAndRegister.js"></script>
	</div>
	
</body>
</html>
