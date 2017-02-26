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
					<li class="author">主讲 : 写代码的平面师、Jackie、stormzhang等</li>
					<li class="intor">${course.remarks }</li>
					<li class="price"><span class="curr-price">￥${course.nprice }</span> <span
						class="old-price">￥${course.price }</span> <span class="vip-price">￥${course.vipprice }</span>
					</li>
					<li class="cf last">
						<!-- 免费试学、立即报名、去学习 --> 
						<a class="greenbtn" href="http://xue.jikexueyuan.com/zhiye/course/try?zhiye_class_id=7&goods_id=10&ke_id=13&amp;type=lesson&amp;lesson_id=414"
						target="_blank">免费试学</a> <!-- 登录用户已购买 --> <a class="greenbtn2"
						href="http://xue.jikexueyuan.com/zhiye/course/buy/10/7"
						target="_blank" lessonid="10" price="999.00" data-zhiye-id="7">立即报名</a>
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
								<h2 class="theme">Web前端职业入门</h2>
								<i class="icon-pull-down toggle"></i> <span class="author">主讲：derek</span>
								<p class="desc">本课程介绍了Web前端的定义和发展历程，并给大家阐述了Web前端工程师的定位和岗位职责，最后详细阐述如何进行体系化学习和前端专业技能的职业发展路径。</p>
								<!-- 部分 -->
								<div class="book">
									<h3 class="sub-theme">
										第 1 部分 Web前端职业入门 <em>30 分钟</em>
									</h3>
									<!-- 节 -->
									<!-- 不可学 -->
									<dl class="play">
										<dt>
											第 1 节 Web前端导学 <span>30 分钟</span>
										</dt>
										<!-- 课时 -->
										<dd>
											Web前端导学 <span class="icon-play"></span>
										</dd>
									</dl>
									<!-- 作业 -->
								</div>
							</div>
							<!-- 课程未完成 -->
							<!-- /课程未完成 -->
							<span class="tag-bg-level">基础知识</span>
							<!-- 课程完成 -->
							<div class="catalog">
								<h2 class="theme">HTML/HTML5基础</h2>
								<i class="icon-pull-down toggle"></i> <span class="author">主讲：写代码的平面师</span>
								<p class="desc">HTML是超文本标记语言，它是网页构成的基础，我们见过的网页基本都离不开HTML代码。本课程从HTML代码的结构写法入手，了解常见的HMTL标签和属性，了解各类HTML标签的用法。HTML作为Web前端开发最基础的技术，非常的重要。本套课程适合零基础学习的学员，是Web前端基础课程。</p>
								<!-- 部分 -->
								<div class="book">
									<h3 class="sub-theme">
										第 1 部分 HTML介绍 <em>14 分钟</em>
									</h3>
									<!-- 节 -->
									<!-- 试学 -->
									<dl>
										<dt>
											第 1 节 HTML介绍 <span>14 分钟</span>
										</dt>
										<!-- 课时 -->
										<dd>
											<a
												href="http://xue.jikexueyuan.com/zhiye/course/try?zhiye_class_id=7&goods_id=10&ke_id=13&type=lesson&lesson_id=414"
												target="_blank"> HTML介绍 <span>试学</span>
											</a>
										</dd>

									</dl>
									<!-- 作业 -->

								</div>
								<div class="book">
									<h3 class="sub-theme">
										第 2 部分 文本标签和属性 <em>46 分钟</em>
									</h3>
									<!-- 节 -->
									<!-- 不可学 -->
									<dl class="play">
										<dt>
											第 1 节 文本修饰标签的写法及格式 <span>13 分钟</span>
										</dt>
										<!-- 课时 -->
										<dd>
											文本修饰标签的写法及格式 <span class="icon-play"></span>
										</dd>
									</dl>

   									<!-- 不可学 -->
									<dl class="play">
										<dt>
											第 2 节 标签的属性和嵌套 <span>14 分钟</span>
										</dt>
										<!-- 课时 -->
										<dd>
											标签的属性和嵌套 <span class="icon-play"></span>
										</dd>
									</dl>
								</div>
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

						<li>
							<div class="teacher cf">
								<a class="headpic" href="javascript:;"> <img
									src="other/028crbc8zvgcf.jpeg" alt="">
								</a>
								<h2 class="tit">
									<a href="javascript:;">写代码的平面师</a>
								</h2>
								<span class="desc">极客学院布道师</span>
							</div>
							<p class="intor">资深Web前端工程师，曾就职于爱立信、联想等知名企业，现任职于某上市互联网公司，担任Web前端项目经理一职，带领12人团队。8年Web前端项目开发经验，具有丰富的HTML5、JavaScript和jQuery开发和教学经验，热爱研究乐于分享。</p>
						</li>

						<li>
							<div class="teacher cf">
								<a class="headpic" href="javascript:;"> <img
									src="other/24ocwyjw2ebok.jpeg" alt="">
								</a>
								<h2 class="tit">
									<a href="javascript:;">Jackie</a>
								</h2>
								<span class="desc">极客学院布道师</span>
							</div>
							<p class="intor">曾为某互联网创业公司技术负责人，在线教育、MOOC理念的拥护者，愿每个人都有实现自己IT梦想的机会！Make
								a difference。</p>
						</li>
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

		
		<!-- <div class="ad_layer">
	<div class="baidu_gg" id="baiduAd"></div>
	<i class="close"></i>
</div> -->
		<script src="${ctxStaticTheme }/js/footer.min.js"></script>
		<script src="${ctxStaticTheme }/js/os.js"></script>
		<script type="text/javascript">
	BAIDU_CLB_fillSlotAsync('2478912', 'diaochaid');
	// BAIDU_CLB_fillSlotAsync('3221920', 'baiduAd');
</script>
		<script type="text/javascript" src="${ctxStaticTheme }/js/dsp.js"></script>
		<link href="${ctxStaticTheme }/css/register.css" rel="stylesheet"
			type="text/css">
		<script type="text/javascript"
			src="${ctxStaticTheme }/js/LoginAndRegister.js"></script>
	</div>
	
</body>
</html>
