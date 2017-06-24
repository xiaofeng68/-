<%@ page contentType="text/html;charset=UTF-8"%>
<%@ include file="/WEB-INF/views/modules/cms/front/include/taglib.jsp"%>
<!DOCTYPE html>
<html>
<head>
<title>首页</title>
<meta name="decorator" content="cms_default_${site.theme}" />
<meta name="description" content="JeeSite ${site.description}" />
<meta name="keywords" content="JeeSite ${site.keywords}" />
<link rel="stylesheet" href="${ctxStaticTheme }/css/swiper.css">
</head>
<body>
	<div id="pager">
		<div class="w-1000 mar-t20 cf">
			<section class="jk-banner">
				<div class="banner-container" style="cursor: -webkit-grab;">
					<!-- Add Pagination -->
			        <div class="swiper-pagination"></div>
			        <!-- Add Arrows -->
			        <div class="swiper-button-next"></div>
			        <div class="swiper-button-prev"></div>
			        <div class="swiper-wrapper">
    				<c:forEach items="${fns:getTrains(2)}" var="train" varStatus="status">
			        	<a href="${ctx }/train/train-${train.code}${urlSuffix}" target="_blank" value="${train.name }" class="swiper-slide" style=" background: url(${train.img}) center center no-repeat rgb(245, 245, 245);"></a>
			        </c:forEach>
			        </div>
			    </div>
			</section>
			<section class="jk-login">

				<div class="userInfo">
					<a href="#"> <img
						src="${ctxStaticTheme }/images/headpic_8ce0f6d.jpg" class="userImg">
					</a> 
					<span class="userName">
					<c:choose>
						<c:when test="${not empty currentStudent }">
							${currentStudent.phone }
						</c:when>
						<c:otherwise>
							hello
						</c:otherwise>
					</c:choose>
					</span>
					<p class="userStatus">欢迎成为极客一员</p>
				</div>
				<c:choose>
					<c:when test="${not empty currentStudent }">
						<a href="${ctx }/loginOut${urlSuffix}" class="loginOn diaLoginBtn">退出</a> 
					</c:when>
					<c:otherwise>
						<a href="${ctx }/loginPage${urlSuffix}" class="loginOn diaLoginBtn">登录</a> 
						<a href="${ctx }/register${urlSuffix}" class="registerNow">免费注册</a>
					</c:otherwise>
				</c:choose>
				

			</section>
			<section class="jk-huodong" id="banner02-1"></section>
			<section class="jk-jiuye">
				<c:forEach items="${fns:getTrains(1)}" var="train" varStatus="status">
					<a href="${ctx }/train/train-${train.code}${urlSuffix}"
						class="jk-ban ${train.code }" target="_blank"> <img src="${train.img }">
						<p>${train.name }</p>
					</a>
				</c:forEach>
			</section>
		</div>
		<section class="jk-sku">
			<ul>
			<c:forEach var="course" items="${fns:getCourses(0) }" end="3">
				<li><a href="${ctx }/train/course/${course.id}${urlSuffix}" target="_blank">
						<img src="${course.img }">
						<div class="skuContainer">
							<p class="skuTitle">${course.name }</p>
							<p class="skuInfo">${course.timelength/60 }小时&nbsp;&nbsp;|&nbsp;&nbsp;1门课</p>
							<span class="skuPrice">${course.nprice }</span> <span class="skuThrought">¥${course.price }</span>
							<span class="skuNum">${course.students }人学习</span>
						</div>
				</a></li>
			</c:forEach>
			</ul>
		</section>
		<section class="jk-college">
			<h2>职业学院</h2>
			<ul>
			<c:forEach items="${fns:getTrains(3)}" var="train" varStatus="status">
				<li class="${train.code }"><a href="${ctx }/train/${train.remarks}${urlSuffix}"> <img src="${train.img }"> <i></i> <span>${train.name }</span></a></li>
			</c:forEach>				
			</ul>
		</section>
		<section class="jk-vip">
			<h2>会员课程</h2>
			<ul>
				<li><a href="/path/android"> <img src="${ctxStaticTheme }/images/1_android_d6730f3.png"><p>Android</p> <span>90门课程</span></a></li>
				<li><a href="/path/ios"> <img src="${ctxStaticTheme }/images/2_iOS_5e77ff4.png"><p>iOS</p> <span>51门课程</span></a></li>
				<li><a href="/path/swift"> <img src="${ctxStaticTheme }/images/3_swift_79f5d60.png"><p>Swift语言</p> <span>11门课程</span></a></li>
				<li><a href="/path/html5"> <img src="${ctxStaticTheme }/images/4_html5_9ab5f1c.png"><p>HTML5开发</p> <span>116门课程</span></a></li>
				<li><a href="/path/javascript"> <img src="${ctxStaticTheme }/images/5_javascript_83e4b7f.png"><p>JavaScript</p> <span>90门课程</span></a></li>
				<li><a href="/path/nodejs"> <img src="${ctxStaticTheme }/images/6_js_c56bccc.png"><p>Node.js</p> <span>90门课程</span></a></li>
				<li><a href="/path/c"> <img src="${ctxStaticTheme }/images/7_c_07f10c0.png"><p>C语言</p> <span>17门课程</span></a></li>
				<li><a href="/path/java"> <img src="${ctxStaticTheme }/images/8_java_89b7c2c.png"><p>Java语言</p> <span>17门课程</span></a></li>
				<li><a href="/path/php"> <img src="${ctxStaticTheme }/images/9_php_d5fcdb8.png"><p>PHP语言</p> <span>23门课程</span></a></li>
				<li><a href="/path/javaweb"> <img src="${ctxStaticTheme }/images/10_javaweb_26f34e5.png"><p>JavaWeb</p> <span>64门课程</span></a></li>
				<li><a href="/path/python"> <img src="${ctxStaticTheme }/images/11_Python_d253c3e.png"><p>Python</p> <span>38门课程</span></a></li>
				<li><a href="/path/cocos2d-x"> <img src="${ctxStaticTheme }/images/12_cocos2d_037cd04.png"><p>Cocos2d-x游戏开发</p> <span>89门课程</span></a></li>
			</ul>
			<a class="vipAll" href="/course/">全部会员课程</a>
		</section>
		<section class="jk-story">
			<h2>学员故事</h2>
			<div class="story-container" style="cursor: -webkit-grab;">
				<div class="swiper-wrapper">
					<div class="swiper-slide" style="background: #ccc">
						<ul>
							<li><a href="http://blog.jikexueyuan.com/2.html"
								target="_blank">
									<div class="story-content">
										<p>从房地产营销策划转行前端工程师。努力并不是为了证明自己多厉害，只是对自己生活方式的一种选择，每个人都可以通过自己的努力，去决定自己生活的样子。</p>
									</div>
									<div class="story-info">
										<img src="${ctxStaticTheme }/images/student-1-avatar.jpg">
										<p>朱华宇</p>
										<span>入职 极客学院</span>
									</div>
							</a></li>
							<li><a href="http://blog.jikexueyuan.com/3.html"
								target="_blank">
									<div class="story-content">
										<p>从浑浑噩噩的自动化专业学生，到大三暑假进入研究院实习。当时努力克服的那些困难，都成了现在自己的资本和财富。</p>
									</div>
									<div class="story-info">
										<img src="${ctxStaticTheme }/images/student-2-avatar.jpg">
										<p>黄文俊</p>
										<span>入职 深圳北斗技术应用研究院</span>
									</div>
							</a></li>
							<li><a href="http://blog.jikexueyuan.com/4.html"
								target="_blank">
									<div class="story-content">
										<p>电力工程设计转前端，很感谢极客学院给了我理想的转行准备。以高密度锻炼的方式，逼迫自己尽快熟悉团队开发模式，顺利进入程序员的世界，接触到的新技术拓宽了我的眼界。</p>
									</div>
									<div class="story-info">
										<img src="${ctxStaticTheme }/images/student-3-avatar.jpg">
										<p>王浩博</p>
										<span>入职 北京中科软科技股份有限公司</span>
									</div>
							</a></li>
						</ul>
					</div>
					<div class="swiper-slide">
						<ul>
							<li><a href="http://blog.jikexueyuan.com/5.html"
								target="_blank">
									<div class="story-content">
										<p>爆炸力学硕士转安卓开发，回顾自己从爆炸力学走向代码世界的历程，感触良多。庆幸自己没有留在研究所，程序员不断学习不断进步的感觉更有意义。稳定绝不代表停滞，历练才是我们的财富。</p>
									</div>
									<div class="story-info">
										<img src="${ctxStaticTheme }/images/student-4-avatar.jpg">
										<p>张少龙</p>
										<span>入职 北京中航智科技</span>
									</div>
							</a></li>
							<li><a href="http://blog.jikexueyuan.com/6.html"
								target="_blank">
									<div class="story-content">
										<p>美女程序媛，从运维转岗到前端开发工程师。工作上的变化只是一部分，遇到极客学院更重要的是让我知道了自己的潜力，不被未来的不确定性吓倒，相信有目标，肯努力就可以得到想要的生活。</p>
									</div>
									<div class="story-info">
										<img src="${ctxStaticTheme }/images/student-5-avatar.jpg">
										<p>杨帆</p>
										<span>入职 深圳IBM</span>
									</div>
							</a></li>
							<li><a href="http://blog.jikexueyuan.com/7.html"
								target="_blank">
									<div class="story-content">
										<p>Web大前端工程师就业班五期 03 班学员，某 985 大学信息与计算科学 2016 届毕业生，2 个月完成
											16 个任务，被同班同学称为「大神」。2016 年拿到毕业证书的同时也拿到了 15K 高薪的 offer。</p>
									</div>
									<div class="story-info">
										<img src="${ctxStaticTheme }/images/student-6-avatar.jpg">
										<p>路昕宇</p>
										<span>入职 浪弯融科科技公司</span>
									</div>
							</a></li>
						</ul>
					</div>
				</div>
				<div class="story-pagination"></div>
			</div>
		</section>
		<section class="jk-partner">
			<h2>合作企业</h2>
			<ul>
				<li><a target="_blank" href="/partner/#microsoft"></a></li>
				<li><a target="_blank" href="/partner/#tencent"></a></li>
				<li><a target="_blank" href="http://zt.jikexueyuan.com/qcloud"></a></li>
				<li><a target="_blank"
					href="http://zt.jikexueyuan.com/qualcomm"></a></li>
				<li><a target="_blank" href="/partner/#cocos"></a></li>
				<li><a target="_blank" href="/partner/#amd"></a></li>
				<li><a target="_blank" href="/partner/#xunfei"></a></li>
				<li><a target="_blank" href="/partner/#tuling"></a></li>
				<li><a target="_blank" href="/partner/#tingyun"></a></li>
				<li><a target="_blank" href="/partner/#juhe"></a></li>
				<li><a target="_blank" href="/partner/#bootstrap"></a></li>
				<li><a target="_blank" href="/partner/#cloudstack"></a></li>
			</ul>
			<a class="more-partner" target="_blank" href="/partner">更多合作企业</a>
		</section>
	</div>
	<!-- Swiper JS -->
    <script src="${ctxStaticTheme }/js/swiper.js"></script>

    <!-- Initialize Swiper -->
    <script>
    var swiper = new Swiper('.banner-container', {
    	pagination: '.swiper-pagination',
        nextButton: '.swiper-button-next',
        prevButton: '.swiper-button-prev',
        paginationClickable: true,
        spaceBetween: 30,
        centeredSlides: true,
        autoplay: 2500,
        autoplayDisableOnInteraction: false
    });
    </script>
</body>
</html>