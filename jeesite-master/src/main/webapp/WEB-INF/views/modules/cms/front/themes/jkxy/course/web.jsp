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
				style="background-image: url('https://jiuye-res.jikexueyuan.com/zhiye/showcase/attach-173aaa98-1e48-48f1-877f-5b563fefd5e9.jpg');">
				<div class="banbox">
					<h1>${courseType.name }</h1>
					<div class="banner-info">${courseType.remarks }</div>
				</div>
			</div>
			<div class="main">

				<!-- 左容器 -->
				<div class="nav-left">
					<div class="nav-block" style="margin-top: 40px;">
						<ul id="navList">
							<li>概览</li>

							<li>成长计划 <span class="nav-little-tit">零基础就业、转行</span></li>

							<li>专项提高 <span class="nav-little-tit">专项技能提高</span></li>

							<!-- <li>专项提高 <span class="nav-little-tit">在职技能提升</span></li> -->
							<li>师资介绍</li>
							<li>常见问题</li>
						</ul>
					</div>
				</div>
				<!-- 右容器 -->
				<div class="main-right" id="mainRight">

					<section class="subject-increase-cont martop-40" id="zxtg"
						name="zxtg">
						<!-- 标题 -->
						<div class="h2-cont cf">
							<h2>成长计划</h2>
							<p class="h2-info">零基础就业、转行</p>
						</div>
						<!-- 内容 -->
						<!-- 成长计划 -->
						<ul class="grow-plan-box cf">
							<c:forEach var="course" items="${congtype1 }">
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
					<section class="subject-increase-cont martop-40" id="zxtg"
						name="zxtg">
						<!-- 标题 -->
						<div class="h2-cont cf">
							<h2>专项提高</h2>
							<p class="h2-info">专项技能提高</p>
						</div>
						<!-- 内容 -->
						<!-- 成长计划 -->
						<!-- 专项提高 -->
						<ul class="increase-box cf">
							<c:forEach var="course" items="${congtype2 }">
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

									<div class="swipper-card swiper-slide">
										<img src="other/028crbc8zvgcf.jpeg" alt="写代码的平面师" id="2990265"
											class="teach-img">
										<div class="swipper-card-intro">
											<p class="teach-name">写代码的平面师</p>
											<p class="teach-info">资深Web前端工程师和布道师，先后就职于爱立信、联想等知名企业。</p>
										</div>
									</div>
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
	<script type="text/javascript">LazyLoad=function(e){function t(t,n){var s,r=e.createElement(t);for(s in n)n.hasOwnProperty(s)&&r.setAttribute(s,n[s]);return r}function n(e){var t,n,s=i[e];s&&(t=s.callback,n=s.urls,n.shift(),u=0,n.length||(t&&t.call(s.context,s.obj),i[e]=null,f[e].length&&r(e)))}function s(){var t=navigator.userAgent;o={async:e.createElement("script").async===!0},(o.webkit=/AppleWebKit\//.test(t))||(o.ie=/MSIE|Trident/.test(t))||(o.opera=/Opera/.test(t))||(o.gecko=/Gecko\//.test(t))||(o.unknown=!0)}function r(r,u,h,g,d){var p,y,m,b,k,v,j=function(){n(r)},w="css"===r,E=[];if(o||s(),u)if(u="string"==typeof u?[u]:u.concat(),w||o.async||o.gecko||o.opera)f[r].push({urls:u,callback:h,obj:g,context:d});else for(p=0,y=u.length;y>p;++p)f[r].push({urls:[u[p]],callback:p===y-1?h:null,obj:g,context:d});if(!i[r]&&(b=i[r]=f[r].shift())){for(l||(l=e.head||e.getElementsByTagName("head")[0]),k=b.urls,p=0,y=k.length;y>p;++p){if(v=k[p],w?m=o.gecko?t("style"):t("link",{href:v,rel:"stylesheet"}):(m=t("script",{src:v}),m.async=!1),m.className="lazyload",m.setAttribute("charset","utf-8"),o.ie&&!w&&"onreadystatechange"in m&&!("draggable"in m))m.onreadystatechange=function(){/loaded|complete/.test(m.readyState)&&(m.onreadystatechange=null,j())};else if(w&&(o.gecko||o.webkit))if(o.webkit){var T;if(b.urls[p]=m.href,T=c()){p--,y=k.length;continue}}else m.innerHTML='@import "'+v+'";',a(m);else m.onload=m.onerror=j;E.push(m)}var A=document.createDocumentFragment();for(p=0,y=E.length;y>p;++p)A.appendChild(E[p]);var x;return"css"===r?x=l:"js"===r&&(x=document.getElementById("pages-container")||l),x.appendChild(A),E}}function a(e){var t;try{t=!!e.sheet.cssRules}catch(s){return u+=1,void(200>u?setTimeout(function(){a(e)},50):t&&n("css"))}n("css")}function c(){var e,t=i.css,s=!1;if(t){for(e=h.length;--e>=0;)if(h[e].href===t.urls[0]){s=!0,n("css");break}u+=1,t&&(200>u?setTimeout(c,50):n("css"))}return s}var o,l,i={},u=0,f={css:[],js:[]},h=e.styleSheets;return{css:function(e,t,n,s){r("css",e,t,n,s)},js:function(e,t,n,s){r("js",e,t,n,s)}}}(this.document);</script>
	<script type="text/javascript">var _ready = false;_list = [];_when = function(cb) {_ready?cb():_list.push(cb);};LazyLoad.js(['http://s1.jikexueyuan.com/common/js/TweenMax.min_5a7da72.js', 'http://s1.jikexueyuan.com/common/pkg/common_sync0_libs_1a4ebbf.js', 'http://s1.jikexueyuan.com/common/js/setcookie_51991d5.js', 'http://s1.jikexueyuan.com/common/js/swfobject_5fb5452.js', 'http://s1.jikexueyuan.com/common/pkg/common_sync1_libs_cf97d43.js'], function () {;_ready=true;var _item; while((_item=_list.shift())){_item();}});</script>
</body>
</html>
