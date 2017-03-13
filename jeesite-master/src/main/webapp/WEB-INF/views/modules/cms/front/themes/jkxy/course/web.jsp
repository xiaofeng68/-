<%@ page contentType="text/html;charset=UTF-8"%>
<%@ include file="/WEB-INF/views/modules/cms/front/include/taglib.jsp"%>
<!DOCTYPE html>
<html>
<head>
<TITLE>web大前端 - ${site.name }</TITLE>
<meta name="decorator" content="cms_default_${site.theme}" />
<meta name="description" content="JeeSite ${site.description}" />
<meta name="keywords" content="JeeSite ${site.keywords}" />

<link rel="stylesheet"
	href="${ctxStaticTheme }/css/common_sync0_libs_5e95d01.css" />
<link rel="stylesheet"
	href="${ctxStaticTheme }/css/common_sync1_libs_4637308.css" />
<link rel="stylesheet" href="${ctxStaticTheme }/css/header_d41d8cd.css" />
<link rel="stylesheet" href="${ctxStaticTheme }/css/list_3b96129.css" />
</head>
<body>
	<div id="wrapper">
		<script src="${ctxStaticTheme }/js/browser.js?t=1483671031000"></script>
		<script src="${ctxStaticTheme }/js/growingio.js?t=1483671031000"></script>
		<script src="${ctxStaticTheme }/js/jquery.min.js?t=1483671031000"></script>
		<link rel="stylesheet"
			href="${ctxStaticTheme }/css/header.css?t=1483671031000" />
		<script src="${ctxStaticTheme }/js/header.min.js?t=1483671031000"></script>
		<script src="${ctxStaticTheme }/js/web_socket.js?t=1483671031000"></script>
		<script src="${ctxStaticTheme }/js/websocket.js?t=1483671031000"></script>
		<div id="pager">
			<!-- banner 图 -->
			<div class="banner"
				style="background-image: url('${courseType.img}');">
				<div class="banbox">
					<h1>${courseType.name }</h1>
					<div class="banner-info">${courseType.remarks }</div>
				</div>
			</div>
			<div class="main">
				<c:set var="typeChilds" value="${fns:getCourseTypes(courseType.id)}"/>
				<!-- 左容器 -->
				<div class="nav-left">
					<div class="nav-block" style="margin-top: 40px;">
						<ul id="navList">
							<li>概览</li>
							<c:forEach var="type" items="${typeChilds }">
							<li>${type.name }<span class="nav-little-tit">${type.remarks }</span></li>
							</c:forEach>
							<li>师资介绍</li>
							<li>常见问题</li>
						</ul>
					</div>
				</div>
				<!-- 右容器 -->
				<div class="main-right" id="mainRight">
					<c:forEach var="type" items="${typeChilds }" >
					<c:if test="${type.code==1 }">
					<section class="subject-increase-cont martop-40" id="zxtg"
						name="zxtg">
						<!-- 标题 -->
						<div class="h2-cont cf">
							<h2>${type.name }</h2>
							<p class="h2-info">${type.remarks }</p>
						</div>
						<!-- 内容 -->
						<!-- 成长计划 -->
						<ul class="grow-plan-box cf">
							<c:forEach var="course" items="${fns:getCourses(type.id) }">
							<li><a
								href="${ctx }/train/course/${course.id}${urlSuffix}"
								target="_blank"> <img
									src="${course.img }"
									alt="${course.name }" id="9" class="grow-img">
									<div class="grow-data">
										<h3>
											${course.name } <i class="icon-tag-yellow">新</i>
										</h3>
										<span class="grow-label">免费试学</span> <span
											class="grow-teacher">主讲: ${course.teacher.name }</span>
										<p>${course.remarks }</p>

										<span class="list-nowprice">￥${course.nprice }</span> <span
											class="list-price"><s>￥${course.price }</s></span>
										<div class="grow-nums">
											<span class="grow-time">${course.timelength/60 } 小时</span> <span
												class="grow-lessons">1 门课</span> <span class="grow-student">3326人学习</span>
										</div>
									</div>
							</a></li>
							</c:forEach>
						</ul>
						<!-- 专项提高 -->
					</section>
					</c:if>
					<c:if test="${type.code==2 }">
					<section class="subject-increase-cont martop-40" id="zxtg"
						name="zxtg">
						<!-- 标题 -->
						<div class="h2-cont cf">
							<h2>${type.name }</h2>
							<p class="h2-info">${type.remarks }</p>
						</div>
						<!-- 内容 -->
						<!-- 成长计划 -->
						<!-- 专项提高 -->
						<ul class="increase-box cf">
							<c:forEach var="course" items="${fns:getCourses(type.id) }">
							<li><a
								href="${ctx }/train/course/${course.id}${urlSuffix}"
								target="_blank"> <img
									src="${course.img }"
									alt="${course.name }" class="increase-img">
									<div class="increase-data">
										<h3>
											${course.name } <i class="icon-tag-yellow">新</i>
										</h3>
										<span class="increase-teacher">主讲人: ${course.teacher.name }</span>
										<div class="pri-num">
											<span class="list-nowprice">${course.nprice }</span> <span
												class="list-price">￥${course.price }</span> <span
												class="increase-nums">${students }人学习</span>
										</div>
									</div>
							</a></li>
							</c:forEach>
						</ul>
					</section>
					</c:if>
					</c:forEach>
					<!-- 授课老师 -->
					<section class="lesson-teacher-cont martop-40">
						<div class="h2-cont">
							<h2>师资介绍</h2>
						</div>
						<span id="banner-left" class="arrow-left"></span> <span
							id="banner-right" class="arrow-right"></span>
						<!-- 轮播容器 -->
						<div class="swiperborder">
							<div class="swiper-container">
								<span id="banner-left" class="arrow-left"></span> <span
									id="banner-right" class="arrow-right"></span>
								<div class="swiper-wrapper">
									<c:forEach var="teacher" items="${fns:getTeacherByCourseType(cousrseType.id) }">
									<div class="swipper-card swiper-slide">
										<img src="${teacher.img }" alt="${teacher.name }" id="${teacher.id }"
											class="teach-img">
										<div class="swipper-card-intro">
											<p class="teach-name">${teacher.name }</p>
											<p class="teach-info">${teacher.remarks }</p>
										</div>
									</div>
									</c:forEach>
								</div>
							</div>
						</div>
					</section>
					<!-- 常见问题 -->
					<section class="faq-cont martop-40">
						<div class="h2-cont">
							<h2>常见问题</h2>
						</div>
						<div class="faq-card-cont" id="faqCard">
							${courseType.questions }
							<h3 style="margin-left: 0px;">
								<br>
							</h3>
						</div>
						<p class="faq-more-btn" id="faqBtn">更多常见问题</p>
					</section>
				</div>
			</div>
			<script src="${ctxStaticTheme }/js/swiper_3a71085.js"></script>
			<script src="${ctxStaticTheme }/js/list_092e2c5.js"></script>
			<script src="${ctxStaticTheme }/js/meiqia_fd9ab62.js"></script>
		</div>
		<script src="${ctxStaticTheme }/js/os.js"></script>
		<script type="text/javascript">BAIDU_CLB_fillSlotAsync('2478912', 'diaochaid');</script>
		<script type="text/javascript" src="${ctxStaticTheme }/js/dsp.js"></script>
		<link href="${ctxStaticTheme }/css/register.css" rel="stylesheet" type="text/css">
		<script type="text/javascript" src="${ctxStaticTheme }/js/LoginAndRegister.js"></script>
	</div>
</body>
</html>
