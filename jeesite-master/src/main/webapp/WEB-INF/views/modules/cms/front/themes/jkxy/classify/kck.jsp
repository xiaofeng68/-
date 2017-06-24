<%@ page contentType="text/html;charset=UTF-8"%>
<%@ include file="/WEB-INF/views/modules/cms/front/include/taglib.jsp"%>
<!DOCTYPE html>
<html>
<head>
<TITLE>${courseType.name}- ${site.name }</TITLE>
<meta name="decorator" content="cms_default_${site.theme}" />
<meta name="description" content="JeeSite ${site.description}" />
<meta name="keywords" content="JeeSite ${site.keywords}" />
<link href="${ctxStaticTheme }/css/register.css" rel="stylesheet" type="text/css">
<script type="text/javascript" src="${ctxStaticTheme }/js/jquery.min.js "></script>
<link rel="stylesheet" href="${ctxStaticTheme }/css/common_sync0_libs_8539c0c.css" />
<link rel="stylesheet" href="${ctxStaticTheme }/css/common_sync1_libs_4637308.css" />
<link rel="stylesheet" href="${ctxStaticTheme }/css/header_d41d8cd.css" />
<link rel="stylesheet" href="${ctxStaticTheme }/css/cleft_a732d91.css" />
<link rel="stylesheet" href="${ctxStaticTheme }/css/course_1eb8ef6.css" />
<link rel="stylesheet" href="${ctxStaticTheme }/css/loading_03ba72f.css" />
<link rel="stylesheet" href="${ctxStaticTheme }/css/lessonlist_d41d8cd.css" />
</head>
<body>
	<div id="wrapper">
		<script src="${ctxStaticTheme }/js/browser.js"></script>
		<script src="${ctxStaticTheme }/js/growingio.js"></script>
		<script src="${ctxStaticTheme }/js/jquery.min.js"></script>
		<link rel="stylesheet" href="${ctxStaticTheme }/css/header.css" />
		<script src="${ctxStaticTheme }/js/header.min.js"></script>
		<script src="${ctxStaticTheme }/js/web_socket.js"></script>
		<script src="${ctxStaticTheme }/js/websocket.js"></script>
		<div id="pager">
			<div id="container">
				<!-- crumbs-->
				<div class="crumbs">
					<div class="w-1000">
					<c:forEach var="ptype" items="${fns:getNative(courseType.id) }" varStatus="num">
						<c:if test="${num.index==0 }">
						<a href="${ctx }/${frontPath }">首页</a>
						</c:if> 
						<em>&gt;</em><a href="${ctx }/train/classify-${ptype.code}-${ptype.id}${urlSuffix}">${ptype.name }</a>
					</c:forEach>
					</div>
				</div>
				<!-- crumbs-->
				<div class="wrap w-1000">
					<c:set var="typeChilds" value="${fns:getCourseTypes('13')}"/>
					<div id="main" class="f_r">
						<!-- tagGather -->
						<div class="tagGather">
							<div class="bd">
								<div class="listbox">
									<!-- sort -->
									<div class="sort">
										<div class="wrap">
											<div class="sortMode">
												<h1>${courseType.name }</h1>
												<dl>
													<dt>
														<span class="type-title-one">${state1=='1'?'最新':'最热' }</span><i class="arrow"></i>
													</dt>
													<dd>
														<p class="lesson-new">
															<a
																href="${ctx }/train/classify-${courseType.code}-${courseType.id}/1-0-0-0${urlSuffix}"
																ref="nofollow">最新</a>
														</p>

														<p class="lesson-new">
															<a
																href="${ctx }/train/classify-${courseType.code}-${courseType.id}/2-0-0-0${urlSuffix}"
																ref="nofollow">最热</a>
														</p>

													</dd>
												</dl>
												<!-- new课程类型 -->
												<dl>
													<dt>
														<span class="type-title-tow">
														<c:choose>
															<c:when test="${state4=='1' }">VIP</c:when>
															<c:when test="${state4=='2' }">免费</c:when>
															<c:when test="${state4=='3' }">认证专享</c:when>
															<c:otherwise>
															课程类型
															</c:otherwise>
														</c:choose>
														</span><i class="arrow"></i>
													</dt>
													<dd>

														<p class="lesson-detailed">
															<a
																href="${ctx }/train/classify-${courseType.code}-${courseType.id}/1-0-0-1${urlSuffix}"
																ref="nofollow">VIP</a>
														</p>

														<p class="lesson-detailed">
															<a
																href="${ctx }/train/classify-${courseType.code}-${courseType.id}/1-0-0-2${urlSuffix}"
																ref="nofollow">免费</a>
														</p>

														<p class="lesson-detailed">
															<a
																href="${ctx }/train/classify-${courseType.code}-${courseType.id}/1-0-0-3${urlSuffix}"
																ref="nofollow">认证专享</a>
														</p>
														<p class="lesson-all">
															<a
																href="${ctx }/train/classify-${courseType.code}-${courseType.id}/1-0-0-0${urlSuffix}"
																ref="nofollow">全部</a>
														</p>
													</dd>
												</dl>
												<!-- /new课程类型 -->
												<dl>
													<dt>
														<span class="type-title-tow">
														<c:choose>
															<c:when test="${state3=='1' }">知识精讲</c:when>
															<c:when test="${state3=='3' }">项目实战</c:when>
															<c:otherwise>
															内容类型
															</c:otherwise>
														</c:choose>
														</span><i class="arrow"></i>
													</dt>
													<dd>

														<p class="lesson-detailed">
															<a
																href="${ctx }/train/classify-${courseType.code}-${courseType.id}/1-0-1-0${urlSuffix}"
																ref="nofollow">知识精讲</a>
														</p>

														<p class="lesson-detailed">
															<a
																href="${ctx }/train/classify-${courseType.code}-${courseType.id}/1-0-3-0${urlSuffix}"
																ref="nofollow">项目实战</a>
														</p>

														<p class="lesson-all">
															<a
																href="${ctx }/train/classify-${courseType.code}-${courseType.id}/1-0-0-0${urlSuffix}"
																ref="nofollow">全部</a>
														</p>
													</dd>
												</dl>
												<dl>
													<dt>
														<span class="type-title-three">
														<c:choose>
															<c:when test="${state2=='1' }">初级</c:when>
															<c:when test="${state2=='3' }">中级</c:when>
															<c:when test="${state2=='5' }">高级</c:when>
															<c:otherwise>
															难度等级
															</c:otherwise>
														</c:choose>
														</span><i class="arrow"></i>
													</dt>
													<dd>

														<p class="level-one">
															<a
																href="${ctx }/train/classify-${courseType.code}-${courseType.id}/1-1-0-0${urlSuffix}"
																ref="nofollow">初级</a>
														</p>

														<p class="level-one">
															<a
																href="${ctx }/train/classify-${courseType.code}-${courseType.id}/1-3-0-0${urlSuffix}"
																ref="nofollow">中级</a>
														</p>

														<p class="level-one">
															<a
																href="${ctx }/train/classify-${courseType.code}-${courseType.id}/1-5-0-0${urlSuffix}"
																ref="nofollow">高级</a>
														</p>

														<p class="level-all">
															<a
																href="${ctx }/train/classify-${courseType.code}-${courseType.id}-1-0-0-0${urlSuffix}"
																ref="nofollow"> 全部 </a>
														</p>
													</dd>
												</dl>
											</div>
											<div class="previewMode">
												<ul>
													<li class="kuai-icon curr"><i class="icon"></i></li>
													<li class="list-icon"><i class="icon"></i></li>
<!-- 													<li class="tree-icon">
														<div class="mod-tips tips-min">
															<div class="wrap">
																<a href="http://www.jikexueyuan.com/path/android/"
																	target="_blank">开发知识体系图</a> <i class="close"></i>
															</div>
															<i class="arrow"></i>
														</div> <a href="http://www.jikexueyuan.com/path/android/"
														target="_blank" class="lesson-map"> <i class="icon"></i>
													</a>
													</li>
 -->
												</ul>
											</div>
										</div>
									</div>
									<!-- sort end -->
									<div class="lesson_loading">
										<div class="spinner">
											<div class="rect1"></div>
											<div class="rect2"></div>
											<div class="rect3"></div>
											<div class="rect4"></div>
											<div class="rect5"></div>
										</div>
										<div class="txt">课程加载中...</div>
									</div>

									<div class="lesson-list" id="changeid" style="display: none">
										<ul class="cf" style="display: block;">
											<c:forEach var="course" items="${page.list}">
											<!--list-->
											<li id="3063" test="0" deg="0">
											  <div class="lessonimg-box">
													<a href="${ctx }/train/course/${course.id}${urlSuffix}"
														target="_blank">
														<img src="${course.img }" class="lessonimg"
														title="${course.name }"
														alt="${course.name }">
														<div class="lessonplay" style="opacity: 0;">
															<i class="playericon"></i>
														</div>
													</a>
												</div>
												<div class="lesson-infor" style="height: 88px;">
													<h2 class="lesson-info-h2">
														<a href="${ctx }/train/course/${course.id}${urlSuffix}"
															target="_blank">${course.name }</a>
													</h2>
													<p style="height: 0px; opacity: 0; display: none;">
														${course.remarks }</p>
													<div class="timeandicon">
														<div class="cf">
															<dl>
																<dd class="mar-b8">
																	<i class="time-icon"></i><em>${course.timelength/60 } 小时</em>
																</dd>
																<dd class="zhongji">

																	<i class="xinhao-icon"></i><em>初级</em>
																</dd>

															</dl>
															<em class="learn-number">2443人学习</em>
														</div>
														<div class="cf">
															<div class="lessonicon-box">

																<a href="${ctx }/train/classify-${courseType.code}-${courseType.id}${urlSuffix}">
																	<img width="16" src="${courseType.img }"
																	alt="${courseType.name }" title="${courseType.name }">
																</a>

															</div>
														</div>
													</div>
												</div>
											</li>
											</c:forEach>
											<!--list end-->
										</ul>
									</div>
									<div id="page-nav"></div>
								</div>
								<!--listbox end -->
							</div>
						</div>
						<!-- tagGather end -->
					</div>
					<!-- left 分类 -->
					<div id="aside" class="f_l">
						<c:forEach var="type" items="${typeChilds }">
						<c:if test="${type.name=='课程库' }">
						<div class="aside-allCategory">
							<div class="hd">
								<h2>
									<a href="${ctx }/train/classify-${type.code}-${type.id}${urlSuffix}"><i
										class="icon-course-curr"></i>课程库</a>
								</h2>
							</div>
							<div class="bd">
								<ul class="aside-cList">
									<c:forEach var="ctype" items="${fns:getCourseTypes(type.id)}">
									<li>
										<div>
											<a cgid="1" href="${ctx }/train/classify-${ctype.code}-${ctype.id}${urlSuffix}">${ctype.name }</a>
											<div class="list-show">
												<div>
													<c:forEach var="cctype" items="${fns:getCourseTypes(ctype.id)}">
													<dl>
														<dt>
															<a href="${ctx }/train/classify-${cctype.code}-${cctype.id}${urlSuffix}""
																cgid="58">${cctype.name }</a>
														</dt>
														<dd class="cf">
															<c:forEach var="lasttype" items="${fns:getCourseTypes(cctype.id)}">
															<a href="${ctx }/train/classify-${lasttype.code}-${lasttype.id}${urlSuffix}""
																cgid="59">${lasttype.name }</a> 
															</c:forEach>				
														</dd>
													</dl>
													</c:forEach>
												</div>
											</div>
											<!-- list-show -->
										</div>
									</li>
									</c:forEach>
								</ul>
							</div>
							<!-- /bd -->
						</div>
						</c:if>
						</c:forEach>
						<ul class="hdlist">
						<c:forEach var="type" items="${typeChilds }">
						<c:if test="${type.name!='课程库' }">
							<li><a href="${ctx }/train/classify-${type.code}-${type.id}${urlSuffix}"> <i
									class="icon-zylj"></i>${type.name }
							</a></li>
						</c:if>
						</c:forEach>
						</ul>
					</div>
				</div>
			</div>
		</div>

	</div>
<script type="text/javascript">LazyLoad=function(e){function t(t,n){var s,r=e.createElement(t);for(s in n)n.hasOwnProperty(s)&&r.setAttribute(s,n[s]);return r}function n(e){var t,n,s=i[e];s&&(t=s.callback,n=s.urls,n.shift(),u=0,n.length||(t&&t.call(s.context,s.obj),i[e]=null,f[e].length&&r(e)))}function s(){var t=navigator.userAgent;o={async:e.createElement("script").async===!0},(o.webkit=/AppleWebKit\//.test(t))||(o.ie=/MSIE|Trident/.test(t))||(o.opera=/Opera/.test(t))||(o.gecko=/Gecko\//.test(t))||(o.unknown=!0)}function r(r,u,h,g,d){var p,y,m,b,k,v,j=function(){n(r)},w="css"===r,E=[];if(o||s(),u)if(u="string"==typeof u?[u]:u.concat(),w||o.async||o.gecko||o.opera)f[r].push({urls:u,callback:h,obj:g,context:d});else for(p=0,y=u.length;y>p;++p)f[r].push({urls:[u[p]],callback:p===y-1?h:null,obj:g,context:d});if(!i[r]&&(b=i[r]=f[r].shift())){for(l||(l=e.head||e.getElementsByTagName("head")[0]),k=b.urls,p=0,y=k.length;y>p;++p){if(v=k[p],w?m=o.gecko?t("style"):t("link",{href:v,rel:"stylesheet"}):(m=t("script",{src:v}),m.async=!1),m.className="lazyload",m.setAttribute("charset","utf-8"),o.ie&&!w&&"onreadystatechange"in m&&!("draggable"in m))m.onreadystatechange=function(){/loaded|complete/.test(m.readyState)&&(m.onreadystatechange=null,j())};else if(w&&(o.gecko||o.webkit))if(o.webkit){var T;if(b.urls[p]=m.href,T=c()){p--,y=k.length;continue}}else m.innerHTML='@import "'+v+'";',a(m);else m.onload=m.onerror=j;E.push(m)}var A=document.createDocumentFragment();for(p=0,y=E.length;y>p;++p)A.appendChild(E[p]);var x;return"css"===r?x=l:"js"===r&&(x=document.getElementById("pages-container")||l),x.appendChild(A),E}}function a(e){var t;try{t=!!e.sheet.cssRules}catch(s){return u+=1,void(200>u?setTimeout(function(){a(e)},50):t&&n("css"))}n("css")}function c(){var e,t=i.css,s=!1;if(t){for(e=h.length;--e>=0;)if(h[e].href===t.urls[0]){s=!0,n("css");break}u+=1,t&&(200>u?setTimeout(c,50):n("css"))}return s}var o,l,i={},u=0,f={css:[],js:[]},h=e.styleSheets;return{css:function(e,t,n,s){r("css",e,t,n,s)},js:function(e,t,n,s){r("js",e,t,n,s)}}}(this.document);</script>
<script type="text/javascript">
		var _ready = false;
		_list = [];
		_when = function(cb) {
			_ready?cb():_list.push(cb);
		};
		LazyLoad.js(['${ctxStaticTheme }/js/TweenMax.min_5a7da72.js', 
		             '${ctxStaticTheme }/js/common_sync0_libs_1a4ebbf.js', 
		             '${ctxStaticTheme }/js/setcookie_51991d5.js', 
		             '${ctxStaticTheme }/js/swfobject_5fb5452.js', 
		             '${ctxStaticTheme }/js/common_sync1_libs_cf97d43.js', 
		             '${ctxStaticTheme }/js/jquery.pager_c1811c8.js', 
		             '${ctxStaticTheme }/js/loading_197f16e.js', 
		             '${ctxStaticTheme }/js/PagerDemo_e88048d.js', 
		             '${ctxStaticTheme }/js/category_b70d134.js', 
		             '${ctxStaticTheme }/js/cleft_7128b88.js'], function () {!function() {
					require("common:widget/loading/loading.js").init();
					$('#changeid').fadeIn();
				}();
		!function() {
			var currentPage = '${page.pageNo}';
			var pageSize = '${page.pageSize}';
			var pageTotal = '${page.count}';
			var page = pageTotal%pageSize==0?(pageTotal/pageSize):(pageTotal/pageSize+1);
			require("common:widget/pager/PagerDemo.js").init(currentPage,page,pageTotal);
		}();
		!function() {
		    require('course:widget/category/category.js').init();
		}();;_ready=true;var _item; while((_item=_list.shift())){_item();}});
		</script>	
</body>
</html>
