<%@ page contentType="text/html;charset=UTF-8"%>
<%@ include file="/WEB-INF/views/modules/cms/front/include/taglib.jsp"%>
<%@ taglib prefix="sitemesh" uri="http://www.opensymphony.com/sitemesh/decorator"%>
<!DOCTYPE html>
<html>
<head>
<title><sitemesh:title default="欢迎光临" /> - ${site.title} </title>
<%@include file="/WEB-INF/views/modules/cms/front/include/head.jsp"%>
<c:if test="${not empty site.statisticsCode }">
		${site.statisticsCode!""}
</c:if>
<sitemesh:head />
</head>
<body>
	<div id="wrapper">
		<div id="header">
			<div class="w-1000 relative">
				<a href="${ctx }/${frontPath }index-${site.id }${urlSuffix }" class="logo">
					<img src="${site.logo }" height="40" width="109" />
				</a>
				<!--nav-->
				<nav>
					<ul class="header-nav">
						<li><a href="${ctx }/${frontPath }index-${site.id }${urlSuffix }">首页</a></li>
						<c:set var="courseType1" value="${fns:getCourseTypeById(1)}"></c:set>
						<li>${courseType1.name }<i class="arrow-icon"></i>
							<div class="submenu school-list">
							<c:forEach var="courseType" items="${fns:getCourseTypes(courseType1.id)}">
								<h3>${courseType.name }</h3>
								<c:forEach var="type" items="${fns:getCourseTypes(courseType.id)}">
								<a href="${ctx }/train/course-${type.code}-${type.id}${urlSuffix}"><i class="${type.code }-icon"></i>Web 前端工程师</a>
								</c:forEach>
							</c:forEach>
							</div>
						</li>
						<c:set var="courseType13" value="${fns:getCourseTypeById(13)}"></c:set>
						<li>${courseType13.name }<i class="arrow-icon"></i>
							<div class="submenu vip-lesson">
							<c:forEach var="courseType" items="${fns:getCourseTypes(courseType13.id)}">
								<a href="${ctx }/train/classify-${courseType.code}-${courseType.id}${urlSuffix}"><i class="${courseType.code }-icon"></i>${courseType.name }<span></span></a> 
							</c:forEach>								
							</div>
						</li>
						<li>极客社区<i class="arrow-icon"></i>
							<div class="submenu vip-lesson">
								<a href="http://wenda.jikexueyuan.com"><i class="jswd-icon"></i>技术问答<span>20000+</span></a>
								<a href="http://wiki.jikexueyuan.com"><i class="wiki-icon"></i>Wiki<span>351</span></a>
								<a href="http://qun.jikexueyuan.com"><i class="sq-icon"></i>社群<span>7000+</span></a>
								<a href="http://download.jikexueyuan.com"><i class="zygx-icon"></i>资源下载<span>3000+</span></a>
							</div>
						</li>
					</ul>
				</nav>
				<!--nav end-->
				<!--login-->
				<div class="icon-box">
					<span class="search-icon" id="search-btn"></span> <span
						class="app-icon loginlist relative" id="appicon">
						<div class="submenu">
							<i class="top-icon"></i> <img src="${ctxStaticTheme }/images/heade-rwm.png" />
						</div>
					</span> <span class="relative loginlist login-icon" id="loginlist"> 
					<dl class="submenu">
							<i class="top-icon"></i>
							<dd><a href="http://passport.jikexueyuan.com/sso/reg_phone" class="reg-btn">注册</a>|<a href="http://passport.jikexueyuan.com/sso/login" class="login-btn">登录</a></dd>
							<dd><a href="#"><i class="xxzx-icon"></i>学习中心</a></dd>
							<dd><a href="http://my.jikexueyuan.com/"><i class="grzy-icon"></i>个人主页</a></dd>
							<dd><a href="http://www.jikexueyuan.com/member/notifications/"><i class="xxtz-icon"></i>消息通知</a></dd>
							<dd><a href="http://my.jikexueyuan.com/setting/user/"><i class="zhsz-icon"></i>账号设置</a></dd>
						</dl>
					</span>
				</div>
				<!--login-->
				<!--searchbox-->
				<div class="searchbox" id="searchbox">
					<i class="close-icon" id="close-btn"></i> 
					<i class="search-icon" id="search-btn"></i> 
					<input id="web_search_header" placeholder="搜索课程、问答或Wiki" value="">
					<div class="tagbox">
						<a href="http://search.jikexueyuan.com/course/?q=Android">Android</a>
						<a href="http://search.jikexueyuan.com/course/?q=iOS">iOS</a> 
						<a href="http://search.jikexueyuan.com/course/?q=HTML5">HTML5</a>
					</div>
				</div>
			</div>
		</div>
		<sitemesh:body/>
		<div id="footer" class="mar-t50">
			<div class=" jkinfor-block">
				<div class="jkinfor cf">
					<div class="jk-logo">
						<img src="${ctxStaticTheme }/images/jk-logo-footer.png">
						<p>极客学院，编程是一种信仰！</p>
					</div>
					<dl>
						<dt>职业学院</dt>
						<dd>
							<a target="_blank" href="http://www.jikexueyuan.com/zhiye/web">Web前端工程师</a>
						</dd>
						<dd>
							<a target="_blank" href="http://www.jikexueyuan.com/zhiye/python">Python
								Web工程师</a>
						</dd>
						<dd>
							<a target="_blank" href="http://www.jikexueyuan.com/zhiye/go">Go语言工程师</a>
						</dd>
						<!--<dd><a target="_blank" href="http://j.jikexueyuan.com/train/android?huodong=jiuye_android_in">Android学院</a></dd>-->
						<dd>
							<a target="_blank" href="http://www.jikexueyuan.com/zhiye/ios">iOS工程师</a>
						</dd>
					</dl>
					<dl>
						<dt>会员课程</dt>
						<dd>
							<a target="_blank" href="http://www.jikexueyuan.com/course/">课程库</a>
						</dd>
						<dd>
							<a target="_blank" href="http://www.jikexueyuan.com/path/">知识体系图</a>
						</dd>
						<dd>
							<a target="_blank" href="http://ke.jikexueyuan.com/zhiye/">职业路径图</a>
						</dd>
						<dd>
							<a target="_blank" href="http://ke.jikexueyuan.com/xilie/">系列课程</a>
						</dd>
						<dd>
							<a target="_blank" href="http://www.jikexueyuan.com/tag/">课程标签</a>
						</dd>
					</dl>
					<dl>
						<dt>极客社区</dt>
						<dd>
							<a target="_blank" href="http://wenda.jikexueyuan.com/">技术问答</a>
						</dd>
						<dd>
							<a target="_blank" href="http://wiki.jikexueyuan.com/">Wiki</a>
						</dd>
						<dd>
							<a target="_blank" href="http://download.jikexueyuan.com/">资源下载</a>
						</dd>
						<dd>
							<a target="_blank" href="http://qun.jikexueyuan.com/">社群</a>
						</dd>
					</dl>
					<dl>
						<dt>其他</dt>
						<dd>
							<a target="_blank" href="http://help.jikexueyuan.com/">关于我们</a>
						</dd>
						<dd>
							<a target="_blank" href="http://help.jikexueyuan.com/join.html">加入我们</a>
						</dd>
						<dd>
							<a target="_blank"
								href="http://press.jikexueyuan.com/evangelist/apply.html">讲师合作</a>
						</dd>
						<dd>
							<a target="_blank"
								href="http://help.jikexueyuan.com/contact.html">联系我们</a>
						</dd>
						<dd>
							<a target="_blank"
								href="http://www.jikexueyuan.com/friendlink.html">友情链接</a>
						</dd>
					</dl>
					<div class="jk-down">
						<p class="hot-tel">服务热线:${telphone_j1 }</p>
						<div class="downCon down-ios">
							<img src="${ctxStaticTheme }/images/app.png" class="twoCode" alt="下载二维码">
							iPhone
						</div>
						<div class="downCon down-and">
							<img src="${ctxStaticTheme }/images/app.png" class="twoCode" alt="下载二维码">
							Android
						</div>
					</div>
				</div>
			</div>
			<div class="w-1000 copyright">
				${site.copyright }
			</div>
		</div>
		<div class="gotop" id="gototop">
			<span class="top" style="display: block;"></span> 
			<span class="erwma" style="display: none"> 
				<img src="${ctxStaticTheme}/images/erwma.png" style="display: none;">
			</span> 
			<a href="http://www.jikexueyuan.com/app" alt="${site.title }" target="_blank"> 
				<span class="jk-app"><div class="appewm"></div></span>
			</a> 
			<a href="javascript:;" id="diaochaid" class="diaocha"></a>
		</div>
		<script src="${ctxStaticTheme}/js/footer.min.js"></script>
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
		             '${ctxStaticTheme }/js/lessonlist_614ec49.js', 
		             '${ctxStaticTheme }/js/loading_197f16e.js', 
		             '${ctxStaticTheme }/js/PagerDemo_e88048d.js', 
		             '${ctxStaticTheme }/js/category_b70d134.js', 
		             '${ctxStaticTheme }/js/cleft_7128b88.js'], function () {!function() {
					require("common:widget/loading/loading.js").init();
					$('#changeid').fadeIn();
				}();
		!function() {
			require("common:widget/pager/PagerDemo.js").init(1,11,24);
		}();
		!function() {
		    require('course:widget/category/category.js').init();
		}();;_ready=true;var _item; while((_item=_list.shift())){_item();}});
		</script>
</body>
</html>
