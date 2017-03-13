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
						<a href="http://www.jikexueyuan.com">首页</a> <em>&gt;</em> <a
							href="http://www.jikexueyuan.com/course/">职业课程库</a> <em>&gt;</em>
						<a href="http://www.jikexueyuan.com/course/mobile/"> 移动开发 </a> <em>&gt;</em>
						<a href="http://www.jikexueyuan.com/course/app/"> 应用开发 </a> <em>&gt;</em>
						<a href="http://www.jikexueyuan.com/course/android/">Android</a>
					</div>
				</div>
				<!-- crumbs-->
				<div class="wrap w-1000">

					<div id="main" class="f_r">
						<!-- tagGather -->
						<div class="tagGather">
							<div class="bd">
								<div class="listbox">
									<!-- sort -->
									<div class="sort">
										<div class="wrap">
											<div class="sortMode">

												<h1>Android</h1>

												<dl>
													<dt>
														<span class="type-title-one">最新</span><i class="arrow"></i>
													</dt>
													<dd>

														<p class="lesson-new">
															<a
																href="http://www.jikexueyuan.com/course/android/1-0-0-0/"
																ref="nofollow">最新</a>
														</p>

														<p class="lesson-new">
															<a
																href="http://www.jikexueyuan.com/course/android/2-0-0-0/"
																ref="nofollow">最热</a>
														</p>

													</dd>
												</dl>
												<!-- new课程类型 -->
												<dl>
													<dt>
														<span class="type-title-tow">课程类型</span><i class="arrow"></i>
													</dt>
													<dd>

														<p class="lesson-detailed">
															<a
																href="http://www.jikexueyuan.com/course/android/1-0-0-1/"
																ref="nofollow">VIP</a>
														</p>

														<p class="lesson-detailed">
															<a
																href="http://www.jikexueyuan.com/course/android/1-0-0-2/"
																ref="nofollow">免费</a>
														</p>

														<p class="lesson-detailed">
															<a
																href="http://www.jikexueyuan.com/course/android/1-0-0-3/"
																ref="nofollow">认证专享</a>
														</p>

														<p class="lesson-all">
															<a
																href="http://www.jikexueyuan.com/course/android/1-0-0-0/"
																ref="nofollow">全部</a>
														</p>
													</dd>
												</dl>
												<!-- /new课程类型 -->
												<dl>
													<dt>
														<span class="type-title-tow">内容类型</span><i class="arrow"></i>
													</dt>
													<dd>

														<p class="lesson-detailed">
															<a
																href="http://www.jikexueyuan.com/course/android/1-0-1-0/"
																ref="nofollow">知识精讲</a>
														</p>

														<p class="lesson-detailed">
															<a
																href="http://www.jikexueyuan.com/course/android/1-0-3-0/"
																ref="nofollow">项目实战</a>
														</p>

														<p class="lesson-all">
															<a
																href="http://www.jikexueyuan.com/course/android/1-0-0-0/"
																ref="nofollow">全部</a>
														</p>
													</dd>
												</dl>
												<dl>
													<dt>
														<span class="type-title-three">难度等级</span><i class="arrow"></i>
													</dt>
													<dd>

														<p class="level-one">
															<a
																href="http://www.jikexueyuan.com/course/android/1-1-0-0/"
																ref="nofollow">初级</a>
														</p>

														<p class="level-one">
															<a
																href="http://www.jikexueyuan.com/course/android/1-3-0-0/"
																ref="nofollow">中级</a>
														</p>

														<p class="level-one">
															<a
																href="http://www.jikexueyuan.com/course/android/1-5-0-0/"
																ref="nofollow">高级</a>
														</p>

														<p class="level-all">
															<a
																href="http://www.jikexueyuan.com/course/android/1-0-0-0/"
																ref="nofollow"> 全部 </a>
														</p>
													</dd>
												</dl>
											</div>
											<div class="previewMode">
												<ul>
													<li class="kuai-icon curr"><i class="icon"></i></li>
													<li class="list-icon"><i class="icon"></i></li>

													<li class="tree-icon">
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
											<!--list-->



											<li id="3063" test="0" deg="0">
												<div class="lessonimg-box">



													<a href="http://www.jikexueyuan.com/course/3063.html"
														target="_blank"
														jktag="&posGP=103001&posArea=0002&posOper=2004&aCId=3063&posColumn=3063.1">
														<img src="images/5819563e27263.jpg" class="lessonimg"
														title="打造你自己的Dragonboard 410c"
														alt="打造你自己的Dragonboard 410c">

														<div class="lessonplay" style="opacity: 0;">
															<i class="playericon"
																jktag="&posGP=103001&posArea=0002&posOper=2004&aCId=3063&posColumn=3063.1"></i>
														</div>

													</a>

												</div>
												<div class="lesson-infor" style="height: 88px;">
													<h2 class="lesson-info-h2">
														<a href="http://www.jikexueyuan.com/course/3063.html"
															target="_blank"
															jktag="&posGP=103001&posArea=0002&posOper=2004&aCId=3063&posColumn=3063.1">打造你自己的Dragonboard
															410c</a>
													</h2>
													<p style="height: 0px; opacity: 0; display: none;">
														本课主要阐述Dragonboard
														410c支持的软硬件环境，外设接口，以及功能用途的同时，教大家如何去购买及使用Dragonboard
														410c开发板。</p>
													<div class="timeandicon">
														<div class="cf">
															<dl>
																<dd class="mar-b8">
																	<i class="time-icon"></i><em>3课时 16分钟</em>
																</dd>
																<dd class="zhongji">

																	<i class="xinhao-icon"></i><em>初级</em>
																</dd>

															</dl>
															<em class="learn-number">2443人学习</em>
														</div>
														<div class="cf">
															<div class="lessonicon-box">

																<a href="http://www.jikexueyuan.com/course/android/">
																	<img width="16" src="images/54578d8e652c3.png"
																	alt="android" title="Android"
																	jktag="&posGP=101001&posArea=0002&posOper=2005&aCId=3063&posColumn=3063.1&aCCate=android">
																</a>

															</div>
														</div>
													</div>
												</div>
											</li>



											<li id="3076" test="0" deg="0">
												<div class="lessonimg-box">



													<a href="http://www.jikexueyuan.com/course/3076.html"
														target="_blank"
														jktag="&posGP=103001&posArea=0002&posOper=2004&aCId=3076&posColumn=3076.2">
														<img src="images/581955c81b7a2.jpg" class="lessonimg"
														title="NDK编程开发" alt="NDK编程开发">

														<div class="lessonplay" style="opacity: 0;">
															<i class="playericon"
																jktag="&posGP=103001&posArea=0002&posOper=2004&aCId=3076&posColumn=3076.2"></i>
														</div>

													</a>

												</div>
												<div class="lesson-infor" style="height: 88px;">
													<h2 class="lesson-info-h2">
														<a href="http://www.jikexueyuan.com/course/3076.html"
															target="_blank"
															jktag="&posGP=103001&posArea=0002&posOper=2004&aCId=3076&posColumn=3076.2">NDK编程开发</a>
													</h2>
													<p style="height: 0px; opacity: 0; display: none;">
														本课主要教大家如何在Android应用开发中加入NDK的编程开发，旨在借此让大家学会在Java代码中嵌入C/C++的高效代码，实现java/C混合编程。
													</p>
													<div class="timeandicon">
														<div class="cf">
															<dl>
																<dd class="mar-b8">
																	<i class="time-icon"></i><em>3课时 22分钟</em>
																</dd>
																<dd class="zhongji">

																	<i class="xinhao-icon"></i><em>初级</em>
																</dd>

															</dl>
															<em class="learn-number">2397人学习</em>
														</div>
														<div class="cf">
															<div class="lessonicon-box">

																<a href="http://www.jikexueyuan.com/course/android/">
																	<img width="16" src="images/54578d8e652c3.png"
																	alt="android" title="Android"
																	jktag="&posGP=101001&posArea=0002&posOper=2005&aCId=3076&posColumn=3076.1&aCCate=android">
																</a>

															</div>
														</div>
													</div>
												</div>
											</li>



											<li id="3129" test="0" deg="0">
												<div class="lessonimg-box">



													<a href="http://www.jikexueyuan.com/course/3129.html"
														target="_blank"
														jktag="&posGP=103001&posArea=0002&posOper=2004&aCId=3129&posColumn=3129.3">
														<img src="images/58195461eba4f.jpg" class="lessonimg"
														title="应用开发和部署实例" alt="应用开发和部署实例">

														<div class="lessonplay" style="opacity: 0;">
															<i class="playericon"
																jktag="&posGP=103001&posArea=0002&posOper=2004&aCId=3129&posColumn=3129.3"></i>
														</div>

													</a>

												</div>
												<div class="lesson-infor" style="height: 88px;">
													<h2 class="lesson-info-h2">
														<a href="http://www.jikexueyuan.com/course/3129.html"
															target="_blank"
															jktag="&posGP=103001&posArea=0002&posOper=2004&aCId=3129&posColumn=3129.3">应用开发和部署实例</a>
													</h2>
													<p style="height: 0px; opacity: 0; display: none;">
														本课主要是教大家一款应用程序的开发、调试和部署。通过Android提供的蓝牙、网络通讯等模块的接口，讲解应用中对接口的调用和调试，并详细讲解应用在Studio虚拟设备上的部署和设备上的部署运行。
													</p>
													<div class="timeandicon">
														<div class="cf">
															<dl>
																<dd class="mar-b8">
																	<i class="time-icon"></i><em>2课时 27分钟</em>
																</dd>
																<dd class="zhongji">

																	<i class="xinhao-icon"></i><em>初级</em>
																</dd>

															</dl>
															<em class="learn-number">2227人学习</em>
														</div>
														<div class="cf">
															<div class="lessonicon-box">

																<a href="http://www.jikexueyuan.com/course/android/">
																	<img width="16" src="images/54578d8e652c3.png"
																	alt="android" title="Android"
																	jktag="&posGP=101001&posArea=0002&posOper=2005&aCId=3129&posColumn=3129.1&aCCate=android">
																</a>

															</div>
														</div>
													</div>
												</div>
											</li>



											<li id="3122" test="0" deg="0">
												<div class="lessonimg-box">



													<a href="http://www.jikexueyuan.com/course/3122.html"
														target="_blank"
														jktag="&posGP=103001&posArea=0002&posOper=2004&aCId=3122&posColumn=3122.4">
														<img src="images/5816a0c0dd96c.jpg" class="lessonimg"
														title="简介Dragonboard 410c网络服务"
														alt="简介Dragonboard 410c网络服务">

														<div class="lessonplay" style="opacity: 0;">
															<i class="playericon"
																jktag="&posGP=103001&posArea=0002&posOper=2004&aCId=3122&posColumn=3122.4"></i>
														</div>

													</a>

												</div>
												<div class="lesson-infor" style="height: 88px;">
													<h2 class="lesson-info-h2">
														<a href="http://www.jikexueyuan.com/course/3122.html"
															target="_blank"
															jktag="&posGP=103001&posArea=0002&posOper=2004&aCId=3122&posColumn=3122.4">简介Dragonboard
															410c网络服务</a>
													</h2>
													<p style="height: 0px; opacity: 0; display: none;">
														1.介绍DragonBoard 410c网络服务 2.配置Dragonboard 410c网络服务</p>
													<div class="timeandicon">
														<div class="cf">
															<dl>
																<dd class="mar-b8">
																	<i class="time-icon"></i><em>2课时 12分钟</em>
																</dd>
																<dd class="zhongji">

																	<i class="xinhao-icon"></i><em>初级</em>
																</dd>

															</dl>
															<em class="learn-number">2141人学习</em>
														</div>
														<div class="cf">
															<div class="lessonicon-box">

																<a href="http://www.jikexueyuan.com/course/android/">
																	<img width="16" src="images/54578d8e652c3.png"
																	alt="android" title="Android"
																	jktag="&posGP=101001&posArea=0002&posOper=2005&aCId=3122&posColumn=3122.1&aCCate=android">
																</a>

															</div>
														</div>
													</div>
												</div>
											</li>



											<li id="3107" test="0" deg="0">
												<div class="lessonimg-box">



													<a href="http://www.jikexueyuan.com/course/3107.html"
														target="_blank"
														jktag="&posGP=103001&posArea=0002&posOper=2004&aCId=3107&posColumn=3107.5">
														<img src="images/580d6c9d0e133.jpg" class="lessonimg"
														title="Android应用开发" alt="Android应用开发">

														<div class="lessonplay" style="opacity: 0;">
															<i class="playericon"
																jktag="&posGP=103001&posArea=0002&posOper=2004&aCId=3107&posColumn=3107.5"></i>
														</div>

													</a>

												</div>
												<div class="lesson-infor" style="height: 88px;">
													<h2 class="lesson-info-h2">
														<a href="http://www.jikexueyuan.com/course/3107.html"
															target="_blank"
															jktag="&posGP=103001&posArea=0002&posOper=2004&aCId=3107&posColumn=3107.5">Android应用开发</a>
													</h2>
													<p style="height: 0px; opacity: 0; display: none;">
														本课将教大家如何进行Android的游戏应用开发，包括介绍所开发游戏的架构及软件的应用接口等等，目的是让大家学会在Dragonboard410c
														上开发属于自己游戏应用。</p>
													<div class="timeandicon">
														<div class="cf">
															<dl>
																<dd class="mar-b8">
																	<i class="time-icon"></i><em>2课时 17分钟</em>
																</dd>
																<dd class="zhongji">

																	<i class="xinhao-icon"></i><em>初级</em>
																</dd>

															</dl>
															<em class="learn-number">2963人学习</em>
														</div>
														<div class="cf">
															<div class="lessonicon-box">

																<a href="http://www.jikexueyuan.com/course/android/">
																	<img width="16" src="images/54578d8e652c3.png"
																	alt="android" title="Android"
																	jktag="&posGP=101001&posArea=0002&posOper=2005&aCId=3107&posColumn=3107.1&aCCate=android">
																</a>

															</div>
														</div>
													</div>
												</div>
											</li>



											<li id="3101" test="0" deg="0">
												<div class="lessonimg-box">



													<a href="http://www.jikexueyuan.com/course/3101.html"
														target="_blank"
														jktag="&posGP=103001&posArea=0002&posOper=2004&aCId=3101&posColumn=3101.6">
														<img src="images/5804431b4fb98.jpg" class="lessonimg"
														title="如何更换Dragonboard 410c操作系统"
														alt="如何更换Dragonboard 410c操作系统">

														<div class="lessonplay" style="opacity: 0;">
															<i class="playericon"
																jktag="&posGP=103001&posArea=0002&posOper=2004&aCId=3101&posColumn=3101.6"></i>
														</div>

													</a>

												</div>
												<div class="lesson-infor" style="height: 88px;">
													<h2 class="lesson-info-h2">
														<a href="http://www.jikexueyuan.com/course/3101.html"
															target="_blank"
															jktag="&posGP=103001&posArea=0002&posOper=2004&aCId=3101&posColumn=3101.6">如何更换Dragonboard
															410c操作系统</a>
													</h2>
													<p style="height: 0px; opacity: 0; display: none;">
														本课教大家如何选择适合自己的操作系统和更换Dragonboard
														410c开发板上的操作系统，包括在linux、windows环境下使用SD卡和fastboot工具来烧写android和linux操作系统，熟练掌握各种系统烧录工具和方法的使用。
													</p>
													<div class="timeandicon">
														<div class="cf">
															<dl>
																<dd class="mar-b8">
																	<i class="time-icon"></i><em>9课时 100分钟</em>
																</dd>
																<dd class="zhongji">

																	<i class="xinhao-icon"></i><em>初级</em>
																</dd>

															</dl>
															<em class="learn-number">2286人学习</em>
														</div>
														<div class="cf">
															<div class="lessonicon-box">

																<a href="http://www.jikexueyuan.com/course/android/">
																	<img width="16" src="images/54578d8e652c3.png"
																	alt="android" title="Android"
																	jktag="&posGP=101001&posArea=0002&posOper=2005&aCId=3101&posColumn=3101.1&aCCate=android">
																</a>

															</div>
														</div>
													</div>
												</div>
											</li>



											<li id="3075" test="0" deg="0">
												<div class="lessonimg-box">



													<a href="http://www.jikexueyuan.com/course/3075.html"
														target="_blank"
														jktag="&posGP=103001&posArea=0002&posOper=2004&aCId=3075&posColumn=3075.7">
														<img src="images/57ec7bd026eaa.jpg" class="lessonimg"
														title="如何挽救变砖的开发板" alt="如何挽救变砖的开发板">

														<div class="lessonplay" style="opacity: 0;">
															<i class="playericon"
																jktag="&posGP=103001&posArea=0002&posOper=2004&aCId=3075&posColumn=3075.7"></i>
														</div>

													</a>

												</div>
												<div class="lesson-infor" style="height: 88px;">
													<h2 class="lesson-info-h2">
														<a href="http://www.jikexueyuan.com/course/3075.html"
															target="_blank"
															jktag="&posGP=103001&posArea=0002&posOper=2004&aCId=3075&posColumn=3075.7">如何挽救变砖的开发板</a>
													</h2>
													<p style="height: 0px; opacity: 0; display: none;">
														本课程主要是教大家怎么解决开发板变砖的问题，通过给讲述开发板变砖的类型，解决变砖开发板的方法，最后教大家以正确的操作方式去预防开发板变砖。
													</p>
													<div class="timeandicon">
														<div class="cf">
															<dl>
																<dd class="mar-b8">
																	<i class="time-icon"></i><em>3课时 7分钟</em>
																</dd>
																<dd class="zhongji">

																	<i class="xinhao-icon"></i><em>初级</em>
																</dd>

															</dl>
															<em class="learn-number">2453人学习</em>
														</div>
														<div class="cf">
															<div class="lessonicon-box">

																<a href="http://www.jikexueyuan.com/course/android/">
																	<img width="16" src="images/54578d8e652c3.png"
																	alt="android" title="Android"
																	jktag="&posGP=101001&posArea=0002&posOper=2005&aCId=3075&posColumn=3075.1&aCCate=android">
																</a>

															</div>
														</div>
													</div>
												</div>
											</li>



											<li id="3070" test="0" deg="0">
												<div class="lessonimg-box">



													<a href="http://www.jikexueyuan.com/course/3070.html"
														target="_blank"
														jktag="&posGP=103001&posArea=0002&posOper=2004&aCId=3070&posColumn=3070.8">
														<img src="images/57ec7bb299d3b.jpg" class="lessonimg"
														title="简介DragonBoard 410c的开发环境"
														alt="简介DragonBoard 410c的开发环境">

														<div class="lessonplay" style="opacity: 0;">
															<i class="playericon"
																jktag="&posGP=103001&posArea=0002&posOper=2004&aCId=3070&posColumn=3070.8"></i>
														</div>

													</a>

												</div>
												<div class="lesson-infor" style="height: 88px;">
													<h2 class="lesson-info-h2">
														<a href="http://www.jikexueyuan.com/course/3070.html"
															target="_blank"
															jktag="&posGP=103001&posArea=0002&posOper=2004&aCId=3070&posColumn=3070.8">简介DragonBoard
															410c的开发环境</a>
													</h2>
													<p style="height: 0px; opacity: 0; display: none;">
														本课程主要介绍DragonBoard 410c的开发环境，APP开发推荐使用的软件。Android
														Studio的介绍和安装，git、adb和fastboot工具的介绍。</p>
													<div class="timeandicon">
														<div class="cf">
															<dl>
																<dd class="mar-b8">
																	<i class="time-icon"></i><em>6课时 26分钟</em>
																</dd>
																<dd class="zhongji">

																	<i class="xinhao-icon"></i><em>初级</em>
																</dd>

															</dl>
															<em class="learn-number">2310人学习</em>
														</div>
														<div class="cf">
															<div class="lessonicon-box">

																<a href="http://www.jikexueyuan.com/course/android/">
																	<img width="16" src="images/54578d8e652c3.png"
																	alt="android" title="Android"
																	jktag="&posGP=101001&posArea=0002&posOper=2005&aCId=3070&posColumn=3070.1&aCCate=android">
																</a>

															</div>
														</div>
													</div>
												</div>
											</li>



											<li id="3073" test="0" deg="0">
												<div class="lessonimg-box">



													<a href="http://www.jikexueyuan.com/course/3073.html"
														target="_blank"
														jktag="&posGP=103001&posArea=0002&posOper=2004&aCId=3073&posColumn=3073.9">
														<img src="images/57ec7af087962.jpg" class="lessonimg"
														title="专业术语/技术概念" alt="专业术语/技术概念">

														<div class="lessonplay" style="opacity: 0;">
															<i class="playericon"
																jktag="&posGP=103001&posArea=0002&posOper=2004&aCId=3073&posColumn=3073.9"></i>
														</div>

													</a>

												</div>
												<div class="lesson-infor" style="height: 88px;">
													<h2 class="lesson-info-h2">
														<a href="http://www.jikexueyuan.com/course/3073.html"
															target="_blank"
															jktag="&posGP=103001&posArea=0002&posOper=2004&aCId=3073&posColumn=3073.9">专业术语/技术概念</a>
													</h2>
													<p style="height: 0px; opacity: 0; display: none;">
														对DragonBoard
														410c开发公开课整套课程中所涉及到的一些专业术语和技术概念进行介绍，并对相关技术的使用进行了补充，让大家在后续课程中更快的理解和接受相关的技术知识点。
													</p>
													<div class="timeandicon">
														<div class="cf">
															<dl>
																<dd class="mar-b8">
																	<i class="time-icon"></i><em>3课时 15分钟</em>
																</dd>
																<dd class="zhongji">

																	<i class="xinhao-icon"></i><em>初级</em>
																</dd>

															</dl>
															<em class="learn-number">2475人学习</em>
														</div>
														<div class="cf">
															<div class="lessonicon-box">

																<a href="http://www.jikexueyuan.com/course/android/">
																	<img width="16" src="images/54578d8e652c3.png"
																	alt="android" title="Android"
																	jktag="&posGP=101001&posArea=0002&posOper=2005&aCId=3073&posColumn=3073.1&aCCate=android">
																</a>

															</div>
														</div>
													</div>
												</div>
											</li>



											<li id="3072" test="0" deg="0">
												<div class="lessonimg-box">



													<a href="http://www.jikexueyuan.com/course/3072.html"
														target="_blank"
														jktag="&posGP=103001&posArea=0002&posOper=2004&aCId=3072&posColumn=3072.10">
														<img src="images/5819552126e4d.jpg" class="lessonimg"
														title="课程介绍" alt="课程介绍">

														<div class="lessonplay" style="opacity: 0;">
															<i class="playericon"
																jktag="&posGP=103001&posArea=0002&posOper=2004&aCId=3072&posColumn=3072.10"></i>
														</div>

													</a>

												</div>
												<div class="lesson-infor" style="height: 88px;">
													<h2 class="lesson-info-h2">
														<a href="http://www.jikexueyuan.com/course/3072.html"
															target="_blank"
															jktag="&posGP=103001&posArea=0002&posOper=2004&aCId=3072&posColumn=3072.10">课程介绍</a>
													</h2>
													<p style="height: 0px; opacity: 0; display: none;">
														对整个Dragonboard 410c开发公开课课程体系进行介绍，带大家熟悉整个课程体系中的九大课程模块内容。</p>
													<div class="timeandicon">
														<div class="cf">
															<dl>
																<dd class="mar-b8">
																	<i class="time-icon"></i><em>1课时 3分钟</em>
																</dd>
																<dd class="zhongji">

																	<i class="xinhao-icon"></i><em>初级</em>
																</dd>

															</dl>
															<em class="learn-number">2756人学习</em>
														</div>
														<div class="cf">
															<div class="lessonicon-box">

																<a href="http://www.jikexueyuan.com/course/android/">
																	<img width="16" src="images/54578d8e652c3.png"
																	alt="android" title="Android"
																	jktag="&posGP=101001&posArea=0002&posOper=2005&aCId=3072&posColumn=3072.1&aCCate=android">
																</a>

															</div>
														</div>
													</div>
												</div>
											</li>



											<li id="2779" test="0" deg="0">
												<div class="lessonimg-box">



													<a href="http://www.jikexueyuan.com/course/2779.html"
														target="_blank"
														jktag="&posGP=103001&posArea=0002&posOper=2004&aCId=2779&posColumn=2779.11">
														<img src="images/5742b71557d06.jpg" class="lessonimg"
														title="Google  I/O 2016 技术揭秘与前瞻"
														alt="Google  I/O 2016 技术揭秘与前瞻">

														<div class="lessonplay" style="opacity: 0;">
															<i class="playericon"
																jktag="&posGP=103001&posArea=0002&posOper=2004&aCId=2779&posColumn=2779.11"></i>
														</div>

													</a>

												</div>
												<div class="lesson-infor" style="height: 88px;">
													<h2 class="lesson-info-h2">
														<a href="http://www.jikexueyuan.com/course/2779.html"
															target="_blank"
															jktag="&posGP=103001&posArea=0002&posOper=2004&aCId=2779&posColumn=2779.11">Google
															I/O 2016 技术揭秘与前瞻</a>
													</h2>
													<p style="height: 0px; opacity: 0; display: none;">
														本课程主要针对2016 Google
														I/O大会Keynote发布的内容进行剖析。讲解Google目前发展的技术趋势及主打方向。并针对开发者在大会中所需要了解的知识方向进行分析。让开发者们了解接下去需要学习哪些技能来应对新发布的产品及技术。以及如何进行学习。
													</p>
													<div class="timeandicon">
														<div class="cf">
															<dl>
																<dd class="mar-b8">
																	<i class="time-icon"></i><em>4课时 52分钟</em>
																</dd>
																<dd class="zhongji">

																	<i class="xinhao-icon"></i><em>初级</em>
																</dd>

															</dl>
															<em class="learn-number">11029人学习</em>
														</div>
														<div class="cf">
															<div class="lessonicon-box">

																<a href="http://www.jikexueyuan.com/course/android/">
																	<img width="16" src="images/54578d8e652c3.png"
																	alt="android" title="Android"
																	jktag="&posGP=101001&posArea=0002&posOper=2005&aCId=2779&posColumn=2779.1&aCCate=android">
																</a>

															</div>
														</div>
													</div>
												</div>
											</li>



											<li id="2719" test="0" deg="0">
												<div class="lessonimg-box">


													<i class="vip-icon"></i> <a
														href="http://www.jikexueyuan.com/course/2719.html"
														target="_blank"
														jktag="&posGP=103001&posArea=0002&posOper=2004&aCId=2719&posColumn=2719.12">
														<img src="images/57296b15ac01c.jpg" class="lessonimg"
														title="Launcher3－文件夹自动整理" alt="Launcher3－文件夹自动整理">

														<div class="lessonplay" style="opacity: 0;">
															<i class="playericon"
																jktag="&posGP=103001&posArea=0002&posOper=2004&aCId=2719&posColumn=2719.12"></i>
														</div>

													</a>

												</div>
												<div class="lesson-infor" style="height: 88px;">
													<h2 class="lesson-info-h2">
														<a href="http://www.jikexueyuan.com/course/2719.html"
															target="_blank"
															jktag="&posGP=103001&posArea=0002&posOper=2004&aCId=2719&posColumn=2719.12">Launcher3－文件夹自动整理</a>
													</h2>
													<p style="height: 0px; opacity: 0; display: none;">
														本课程主要讲文件夹自动整理。将手机上除了第一屏之外的应用自动整理到文件夹，并能指定位置、固定位置。和上一节课的适配所有机型的桌面布局类似，方法可以借鉴。
													</p>
													<div class="timeandicon">
														<div class="cf">
															<dl>
																<dd class="mar-b8">
																	<i class="time-icon"></i><em>4课时 42分钟</em>
																</dd>
																<dd class="zhongji">

																	<i class="xinhao-icon"></i><em>初级</em>
																</dd>

															</dl>
															<em class="learn-number">4012人学习</em>
														</div>
														<div class="cf">
															<div class="lessonicon-box">

																<a href="http://www.jikexueyuan.com/course/android/">
																	<img width="16" src="images/54578d8e652c3.png"
																	alt="android" title="Android"
																	jktag="&posGP=101001&posArea=0002&posOper=2005&aCId=2719&posColumn=2719.1&aCCate=android">
																</a>

															</div>
														</div>
													</div>
												</div>
											</li>



											<li id="2706" test="0" deg="0">
												<div class="lessonimg-box">



													<i class="rz-icon"></i> <a
														href="http://www.jikexueyuan.com/course/2706.html"
														target="_blank"
														jktag="&posGP=103001&posArea=0002&posOper=2004&aCId=2706&posColumn=2706.13">
														<img src="images/571ecfcc2dbfa.jpg" class="lessonimg"
														title="Android Studio 全方位指南之进阶使用技巧"
														alt="Android Studio 全方位指南之进阶使用技巧">

														<div class="lessonplay" style="opacity: 0;">
															<i class="playericon"
																jktag="&posGP=103001&posArea=0002&posOper=2004&aCId=2706&posColumn=2706.13"></i>
														</div>

													</a>

												</div>
												<div class="lesson-infor" style="height: 88px;">
													<h2 class="lesson-info-h2">
														<a href="http://www.jikexueyuan.com/course/2706.html"
															target="_blank"
															jktag="&posGP=103001&posArea=0002&posOper=2004&aCId=2706&posColumn=2706.13">Android
															Studio 全方位指南之进阶使用技巧</a>
													</h2>
													<p style="height: 0px; opacity: 0; display: none;">
														本课程主要介绍在使用 Android Studio 进行开发时会使用到的一些高级技巧，Gradle
														的高级配置方案，多渠道打包，以及一些插件利器的安装使用。</p>
													<div class="timeandicon">
														<div class="cf">
															<dl>
																<dd class="mar-b8">
																	<i class="time-icon"></i><em>4课时 53分钟</em>
																</dd>
																<dd class="zhongji">

																	<i class="xinhao-icon"></i><em>初级</em>
																</dd>

															</dl>
															<em class="learn-number">11862人学习</em>
														</div>
														<div class="cf">
															<div class="lessonicon-box">

																<a href="http://www.jikexueyuan.com/course/android/">
																	<img width="16" src="images/54578d8e652c3.png"
																	alt="android" title="Android"
																	jktag="&posGP=101001&posArea=0002&posOper=2005&aCId=2706&posColumn=2706.1&aCCate=android">
																</a>

															</div>
														</div>
													</div>
												</div>
											</li>



											<li id="2698" test="0" deg="0">
												<div class="lessonimg-box">


													<i class="vip-icon"></i> <a
														href="http://www.jikexueyuan.com/course/2698.html"
														target="_blank"
														jktag="&posGP=103001&posArea=0002&posOper=2004&aCId=2698&posColumn=2698.14">
														<img src="images/57182fa727ab7.jpg" class="lessonimg"
														title="如何提升 APP 防御能力" alt="如何提升 APP 防御能力">

														<div class="lessonplay" style="opacity: 0;">
															<i class="playericon"
																jktag="&posGP=103001&posArea=0002&posOper=2004&aCId=2698&posColumn=2698.14"></i>
														</div>

													</a>

												</div>
												<div class="lesson-infor" style="height: 88px;">
													<h2 class="lesson-info-h2">
														<a href="http://www.jikexueyuan.com/course/2698.html"
															target="_blank"
															jktag="&posGP=103001&posArea=0002&posOper=2004&aCId=2698&posColumn=2698.14">如何提升
															APP 防御能力</a>
													</h2>
													<p style="height: 0px; opacity: 0; display: none;">
														2015年安卓应用盗版情况不断恶化，平均1款正版 APP
														背后藏着92个盗版，比2014年增长了3.5倍。面对如此猖獗的盗版现象，本课程将向开发者讲解提升 APP
														安全的常见手段，APP 加固后文件发生的变化以及如何使用360加固助手。</p>
													<div class="timeandicon">
														<div class="cf">
															<dl>
																<dd class="mar-b8">
																	<i class="time-icon"></i><em>4课时 44分钟</em>
																</dd>
																<dd class="zhongji">

																	<i class="xinhao-icon2"></i><em>中级</em>
																</dd>

															</dl>
															<em class="learn-number">4170人学习</em>
														</div>
														<div class="cf">
															<div class="lessonicon-box">

																<a href="http://www.jikexueyuan.com/course/android/">
																	<img width="16" src="images/54578d8e652c3.png"
																	alt="android" title="Android"
																	jktag="&posGP=101001&posArea=0002&posOper=2005&aCId=2698&posColumn=2698.1&aCCate=android">
																</a>

															</div>
														</div>
													</div>
												</div>
											</li>



											<li id="2685" test="0" deg="0">
												<div class="lessonimg-box">


													<i class="vip-icon"></i> <a
														href="http://www.jikexueyuan.com/course/2685.html"
														target="_blank"
														jktag="&posGP=103001&posArea=0002&posOper=2004&aCId=2685&posColumn=2685.15">
														<img src="images/5715904331d7c.jpg" class="lessonimg"
														title="BitmapDrawable、NinePatchDrawable 和 PictureDrawable 类型精讲"
														alt="BitmapDrawable、NinePatchDrawable 和 PictureDrawable 类型精讲">

														<div class="lessonplay" style="opacity: 0;">
															<i class="playericon"
																jktag="&posGP=103001&posArea=0002&posOper=2004&aCId=2685&posColumn=2685.15"></i>
														</div>

													</a>

												</div>
												<div class="lesson-infor" style="height: 88px;">
													<h2 class="lesson-info-h2">
														<a href="http://www.jikexueyuan.com/course/2685.html"
															target="_blank"
															jktag="&posGP=103001&posArea=0002&posOper=2004&aCId=2685&posColumn=2685.15">BitmapDrawable、NinePatchDrawable
															和 PictureDrawable 类型精讲</a>
													</h2>
													<p style="height: 0px; opacity: 0; display: none;">
														本课程先讲述 BitmapDrawable 原理和使用，然后讲述 NinePatchDrawable 和
														PictureDrawable的原理和使用，最后做课程总结。</p>
													<div class="timeandicon">
														<div class="cf">
															<dl>
																<dd class="mar-b8">
																	<i class="time-icon"></i><em>3课时 27分钟</em>
																</dd>
																<dd class="zhongji">

																	<i class="xinhao-icon"></i><em>初级</em>
																</dd>

															</dl>
															<em class="learn-number">3274人学习</em>
														</div>
														<div class="cf">
															<div class="lessonicon-box">

																<a href="http://www.jikexueyuan.com/course/android/">
																	<img width="16" src="images/54578d8e652c3.png"
																	alt="android" title="Android"
																	jktag="&posGP=101001&posArea=0002&posOper=2005&aCId=2685&posColumn=2685.1&aCCate=android">
																</a>

															</div>
														</div>
													</div>
												</div>
											</li>



											<li id="2670" test="0" deg="0">
												<div class="lessonimg-box">


													<i class="vip-icon"></i> <a
														href="http://www.jikexueyuan.com/course/2670.html"
														target="_blank"
														jktag="&posGP=103001&posArea=0002&posOper=2004&aCId=2670&posColumn=2670.16">
														<img src="images/570da4804267a.jpg" class="lessonimg"
														title="Clip、Inset、Rotate 和 Scale Drawable 类型精讲"
														alt="Clip、Inset、Rotate 和 Scale Drawable 类型精讲">

														<div class="lessonplay" style="opacity: 0;">
															<i class="playericon"
																jktag="&posGP=103001&posArea=0002&posOper=2004&aCId=2670&posColumn=2670.16"></i>
														</div>

													</a>

												</div>
												<div class="lesson-infor" style="height: 88px;">
													<h2 class="lesson-info-h2">
														<a href="http://www.jikexueyuan.com/course/2670.html"
															target="_blank"
															jktag="&posGP=103001&posArea=0002&posOper=2004&aCId=2670&posColumn=2670.16">Clip、Inset、Rotate
															和 Scale Drawable 类型精讲</a>
													</h2>
													<p style="height: 0px; opacity: 0; display: none;">
														本课程先讲述 ClipDrawable 原理和使用，然后讲述 InsetDrawable 和
														RotateDrawable 的原理和使用，最后讲 ScaleDrawable 的原理和使用。</p>
													<div class="timeandicon">
														<div class="cf">
															<dl>
																<dd class="mar-b8">
																	<i class="time-icon"></i><em>4课时 38分钟</em>
																</dd>
																<dd class="zhongji">

																	<i class="xinhao-icon"></i><em>初级</em>
																</dd>

															</dl>
															<em class="learn-number">3015人学习</em>
														</div>
														<div class="cf">
															<div class="lessonicon-box">

																<a href="http://www.jikexueyuan.com/course/android/">
																	<img width="16" src="images/54578d8e652c3.png"
																	alt="android" title="Android"
																	jktag="&posGP=101001&posArea=0002&posOper=2005&aCId=2670&posColumn=2670.1&aCCate=android">
																</a>

															</div>
														</div>
													</div>
												</div>
											</li>



											<li id="2664" test="0" deg="0">
												<div class="lessonimg-box">



													<a href="http://www.jikexueyuan.com/course/2664.html"
														target="_blank"
														jktag="&posGP=103001&posArea=0002&posOper=2004&aCId=2664&posColumn=2664.17">
														<img src="images/570b17fe71605.jpg" class="lessonimg"
														title="移动应用的破解与防护" alt="移动应用的破解与防护">

														<div class="lessonplay" style="opacity: 0;">
															<i class="playericon"
																jktag="&posGP=103001&posArea=0002&posOper=2004&aCId=2664&posColumn=2664.17"></i>
														</div>

													</a>

												</div>
												<div class="lesson-infor" style="height: 88px;">
													<h2 class="lesson-info-h2">
														<a href="http://www.jikexueyuan.com/course/2664.html"
															target="_blank"
															jktag="&posGP=103001&posArea=0002&posOper=2004&aCId=2664&posColumn=2664.17">移动应用的破解与防护</a>
													</h2>
													<p style="height: 0px; opacity: 0; display: none;">由于
														Android 系统的开源性，使其占据了智能手机系统的大半壁江山，但也成为了恶意程序攻击的目标，APP
														源码被泄露、被破解、二次盗版等事件层出不穷。本课程通过具体案例为开发者介绍常见的 apk
														破解手段及危害，并演示360加固保如何防御各类破解攻击。</p>
													<div class="timeandicon">
														<div class="cf">
															<dl>
																<dd class="mar-b8">
																	<i class="time-icon"></i><em>4课时 59分钟</em>
																</dd>
																<dd class="zhongji">

																	<i class="xinhao-icon2"></i><em>中级</em>
																</dd>

															</dl>
															<em class="learn-number">7532人学习</em>
														</div>
														<div class="cf">
															<div class="lessonicon-box">

																<a href="http://www.jikexueyuan.com/course/android/">
																	<img width="16" src="images/54578d8e652c3.png"
																	alt="android" title="Android"
																	jktag="&posGP=101001&posArea=0002&posOper=2005&aCId=2664&posColumn=2664.1&aCCate=android">
																</a>

															</div>
														</div>
													</div>
												</div>
											</li>



											<li id="2654" test="0" deg="0">
												<div class="lessonimg-box">



													<a href="http://www.jikexueyuan.com/course/2654.html"
														target="_blank"
														jktag="&posGP=103001&posArea=0002&posOper=2004&aCId=2654&posColumn=2654.18">
														<img src="images/5704787a464a4.jpg" class="lessonimg"
														title="移动应用崩溃日志的获取与分析" alt="移动应用崩溃日志的获取与分析">

														<div class="lessonplay" style="opacity: 0;">
															<i class="playericon"
																jktag="&posGP=103001&posArea=0002&posOper=2004&aCId=2654&posColumn=2654.18"></i>
														</div>

													</a>

												</div>
												<div class="lesson-infor" style="height: 88px;">
													<h2 class="lesson-info-h2">
														<a href="http://www.jikexueyuan.com/course/2654.html"
															target="_blank"
															jktag="&posGP=103001&posArea=0002&posOper=2004&aCId=2654&posColumn=2654.18">移动应用崩溃日志的获取与分析</a>
													</h2>
													<p style="height: 0px; opacity: 0; display: none;">
														Android Crash 问题是 APP 性能好坏的关键，需要引起开发者足够的重视。本课程将向开发者讲解 Java
														层和 Native 层 Crash 的发生、获取、及利用如何 Crash 数据定位问题。</p>
													<div class="timeandicon">
														<div class="cf">
															<dl>
																<dd class="mar-b8">
																	<i class="time-icon"></i><em>5课时 45分钟</em>
																</dd>
																<dd class="zhongji">

																	<i class="xinhao-icon2"></i><em>中级</em>
																</dd>

															</dl>
															<em class="learn-number">4374人学习</em>
														</div>
														<div class="cf">
															<div class="lessonicon-box">

																<a href="http://www.jikexueyuan.com/course/android/">
																	<img width="16" src="images/54578d8e652c3.png"
																	alt="android" title="Android"
																	jktag="&posGP=101001&posArea=0002&posOper=2005&aCId=2654&posColumn=2654.1&aCCate=android">
																</a>

															</div>
														</div>
													</div>
												</div>
											</li>



											<li id="2652" test="0" deg="0">
												<div class="lessonimg-box">



													<i class="rz-icon"></i> <a
														href="http://www.jikexueyuan.com/course/2652.html"
														target="_blank"
														jktag="&posGP=103001&posArea=0002&posOper=2004&aCId=2652&posColumn=2652.19">
														<img src="images/57031692129cf.jpg" class="lessonimg"
														title="Vector 和 AnimatedVector 类型精讲"
														alt="Vector 和 AnimatedVector 类型精讲">

														<div class="lessonplay" style="opacity: 0;">
															<i class="playericon"
																jktag="&posGP=103001&posArea=0002&posOper=2004&aCId=2652&posColumn=2652.19"></i>
														</div>

													</a>

												</div>
												<div class="lesson-infor" style="height: 88px;">
													<h2 class="lesson-info-h2">
														<a href="http://www.jikexueyuan.com/course/2652.html"
															target="_blank"
															jktag="&posGP=103001&posArea=0002&posOper=2004&aCId=2652&posColumn=2652.19">Vector
															和 AnimatedVector 类型精讲</a>
													</h2>
													<p style="height: 0px; opacity: 0; display: none;">
														本课程先讲述 VectorDrawable 的原理和使用，然后讲述 AnimatedVectorDrawable
														的原理和使用，最后讲讲注意事项和课程总结。</p>
													<div class="timeandicon">
														<div class="cf">
															<dl>
																<dd class="mar-b8">
																	<i class="time-icon"></i><em>3课时 36分钟</em>
																</dd>
																<dd class="zhongji">

																	<i class="xinhao-icon"></i><em>初级</em>
																</dd>

															</dl>
															<em class="learn-number">3085人学习</em>
														</div>
														<div class="cf">
															<div class="lessonicon-box">

																<a href="http://www.jikexueyuan.com/course/android/">
																	<img width="16" src="images/54578d8e652c3.png"
																	alt="android" title="Android"
																	jktag="&posGP=101001&posArea=0002&posOper=2005&aCId=2652&posColumn=2652.1&aCCate=android">
																</a>

															</div>
														</div>
													</div>
												</div>
											</li>



											<li id="2627" test="0" deg="0">
												<div class="lessonimg-box">



													<a href="http://www.jikexueyuan.com/course/2627.html"
														target="_blank"
														jktag="&posGP=103001&posArea=0002&posOper=2004&aCId=2627&posColumn=2627.20">
														<img src="images/57357fd92cfb3.png" class="lessonimg"
														title="Transition 动画入门到精通" alt="Transition 动画入门到精通">

														<div class="lessonplay" style="opacity: 0;">
															<i class="playericon"
																jktag="&posGP=103001&posArea=0002&posOper=2004&aCId=2627&posColumn=2627.20"></i>
														</div>

													</a>

												</div>
												<div class="lesson-infor" style="height: 88px;">
													<h2 class="lesson-info-h2">
														<a href="http://www.jikexueyuan.com/course/2627.html"
															target="_blank"
															jktag="&posGP=103001&posArea=0002&posOper=2004&aCId=2627&posColumn=2627.20">Transition
															动画入门到精通</a>
													</h2>
													<p style="height: 0px; opacity: 0; display: none;">
														本课程先介绍 Transition 动画的概念和原理，然后以效果和项目例子代码的方式讲解 Transition
														动画的使用。</p>
													<div class="timeandicon">
														<div class="cf">
															<dl>
																<dd class="mar-b8">
																	<i class="time-icon"></i><em>4课时 79分钟</em>
																</dd>
																<dd class="zhongji">

																	<i class="xinhao-icon"></i><em>初级</em>
																</dd>

															</dl>
															<em class="learn-number">5282人学习</em>
														</div>
														<div class="cf">
															<div class="lessonicon-box">

																<a href="http://www.jikexueyuan.com/course/android/">
																	<img width="16" src="images/54578d8e652c3.png"
																	alt="android" title="Android"
																	jktag="&posGP=101001&posArea=0002&posOper=2005&aCId=2627&posColumn=2627.1&aCCate=android">
																</a>

															</div>
														</div>
													</div>
												</div>
											</li>



											<li id="2623" test="0" deg="0">
												<div class="lessonimg-box">



													<i class="rz-icon"></i> <a
														href="http://www.jikexueyuan.com/course/2623.html"
														target="_blank"
														jktag="&posGP=103001&posArea=0002&posOper=2004&aCId=2623&posColumn=2623.21">
														<img src="images/57357df754749.png" class="lessonimg"
														title="Android Studio 全方位指南之协作开发指南"
														alt="Android Studio 全方位指南之协作开发指南">

														<div class="lessonplay" style="opacity: 0;">
															<i class="playericon"
																jktag="&posGP=103001&posArea=0002&posOper=2004&aCId=2623&posColumn=2623.21"></i>
														</div>

													</a>

												</div>
												<div class="lesson-infor" style="height: 88px;">
													<h2 class="lesson-info-h2">
														<a href="http://www.jikexueyuan.com/course/2623.html"
															target="_blank"
															jktag="&posGP=103001&posArea=0002&posOper=2004&aCId=2623&posColumn=2623.21">Android
															Studio 全方位指南之协作开发指南</a>
													</h2>
													<p style="height: 0px; opacity: 0; display: none;">
														本课程主要讲解如何使用 Android Studio 进行日常协作开发的操作，包含 svn 及 git
														组件的使用指南。</p>
													<div class="timeandicon">
														<div class="cf">
															<dl>
																<dd class="mar-b8">
																	<i class="time-icon"></i><em>5课时 39分钟</em>
																</dd>
																<dd class="zhongji">

																	<i class="xinhao-icon"></i><em>初级</em>
																</dd>

															</dl>
															<em class="learn-number">7143人学习</em>
														</div>
														<div class="cf">
															<div class="lessonicon-box">

																<a href="http://www.jikexueyuan.com/course/android/">
																	<img width="16" src="images/54578d8e652c3.png"
																	alt="android" title="Android"
																	jktag="&posGP=101001&posArea=0002&posOper=2005&aCId=2623&posColumn=2623.1&aCCate=android">
																</a>

															</div>
														</div>
													</div>
												</div>
											</li>



											<li id="2602" test="0" deg="0">
												<div class="lessonimg-box">


													<i class="vip-icon"></i> <a
														href="http://www.jikexueyuan.com/course/2602.html"
														target="_blank"
														jktag="&posGP=103001&posArea=0002&posOper=2004&aCId=2602&posColumn=2602.22">
														<img src="images/56e76c8c10d5a.jpg" class="lessonimg"
														title="适配所有机型的桌面布局" alt="适配所有机型的桌面布局">

														<div class="lessonplay" style="opacity: 0;">
															<i class="playericon"
																jktag="&posGP=103001&posArea=0002&posOper=2004&aCId=2602&posColumn=2602.22"></i>
														</div>

													</a>

												</div>
												<div class="lesson-infor" style="height: 88px;">
													<h2 class="lesson-info-h2">
														<a href="http://www.jikexueyuan.com/course/2602.html"
															target="_blank"
															jktag="&posGP=103001&posArea=0002&posOper=2004&aCId=2602&posColumn=2602.22">适配所有机型的桌面布局</a>
													</h2>
													<p style="height: 0px; opacity: 0; display: none;">
														本课程主要讲配所有机型的桌面布局，将重要、常用的应用快捷方式放到显眼的位置，甚至可以添加自己写的广告快捷方式。主要设置首页、
														Hotseat 的桌面布局。通过本课程可以学到 queryIntent 等重要方法。</p>
													<div class="timeandicon">
														<div class="cf">
															<dl>
																<dd class="mar-b8">
																	<i class="time-icon"></i><em>5课时 66分钟</em>
																</dd>
																<dd class="zhongji">

																	<i class="xinhao-icon"></i><em>初级</em>
																</dd>

															</dl>
															<em class="learn-number">7423人学习</em>
														</div>
														<div class="cf">
															<div class="lessonicon-box">

																<a href="http://www.jikexueyuan.com/course/android/">
																	<img width="16" src="images/54578d8e652c3.png"
																	alt="android" title="Android"
																	jktag="&posGP=101001&posArea=0002&posOper=2005&aCId=2602&posColumn=2602.1&aCCate=android">
																</a>

															</div>
														</div>
													</div>
												</div>
											</li>



											<li id="2564" test="0" deg="0">
												<div class="lessonimg-box">



													<i class="rz-icon"></i> <a
														href="http://www.jikexueyuan.com/course/2564.html"
														target="_blank"
														jktag="&posGP=103001&posArea=0002&posOper=2004&aCId=2564&posColumn=2564.23">
														<img src="images/56d54a6424c8b.jpg" class="lessonimg"
														title="Layer、Level 和 Transition 类型精讲"
														alt="Layer、Level 和 Transition 类型精讲">

														<div class="lessonplay" style="opacity: 0;">
															<i class="playericon"
																jktag="&posGP=103001&posArea=0002&posOper=2004&aCId=2564&posColumn=2564.23"></i>
														</div>

													</a>

												</div>
												<div class="lesson-infor" style="height: 88px;">
													<h2 class="lesson-info-h2">
														<a href="http://www.jikexueyuan.com/course/2564.html"
															target="_blank"
															jktag="&posGP=103001&posArea=0002&posOper=2004&aCId=2564&posColumn=2564.23">Layer、Level
															和 Transition 类型精讲</a>
													</h2>
													<p style="height: 0px; opacity: 0; display: none;">
														本课程先讲述 LayerDrawable 的使用，然后讲述 LevelListDrawable
														的使用，最后讲述TransitionDrawable 的使用，并进行课程总结。</p>
													<div class="timeandicon">
														<div class="cf">
															<dl>
																<dd class="mar-b8">
																	<i class="time-icon"></i><em>3课时 34分钟</em>
																</dd>
																<dd class="zhongji">

																	<i class="xinhao-icon"></i><em>初级</em>
																</dd>

															</dl>
															<em class="learn-number">3511人学习</em>
														</div>
														<div class="cf">
															<div class="lessonicon-box">

																<a href="http://www.jikexueyuan.com/course/android/">
																	<img width="16" src="images/54578d8e652c3.png"
																	alt="android" title="Android"
																	jktag="&posGP=101001&posArea=0002&posOper=2005&aCId=2564&posColumn=2564.1&aCCate=android">
																</a>

															</div>
														</div>
													</div>
												</div>
											</li>



											<li id="2549" test="0" deg="0">
												<div class="lessonimg-box">



													<a href="http://www.jikexueyuan.com/course/2549.html"
														target="_blank"
														jktag="&posGP=103001&posArea=0002&posOper=2004&aCId=2549&posColumn=2549.24">
														<img src="images/56cbb9866f8c2.jpg" class="lessonimg"
														title="Android Studio全方位指南之基本操作指南"
														alt="Android Studio全方位指南之基本操作指南">

														<div class="lessonplay" style="opacity: 0;">
															<i class="playericon"
																jktag="&posGP=103001&posArea=0002&posOper=2004&aCId=2549&posColumn=2549.24"></i>
														</div>

													</a>

												</div>
												<div class="lesson-infor" style="height: 88px;">
													<h2 class="lesson-info-h2">
														<a href="http://www.jikexueyuan.com/course/2549.html"
															target="_blank"
															jktag="&posGP=103001&posArea=0002&posOper=2004&aCId=2549&posColumn=2549.24">Android
															Studio全方位指南之基本操作指南</a>
													</h2>
													<p style="height: 0px; opacity: 0; display: none;">
														本课程主要介绍Android Studio的一些基本操作。包括新建项目，导入导出不同类型项目，基本的调试技巧等</p>
													<div class="timeandicon">
														<div class="cf">
															<dl>
																<dd class="mar-b8">
																	<i class="time-icon"></i><em>6课时 46分钟</em>
																</dd>
																<dd class="zhongji">

																	<i class="xinhao-icon"></i><em>初级</em>
																</dd>

															</dl>
															<em class="learn-number">12296人学习</em>
														</div>
														<div class="cf">
															<div class="lessonicon-box">

																<a href="http://www.jikexueyuan.com/course/android/">
																	<img width="16" src="images/54578d8e652c3.png"
																	alt="android" title="Android"
																	jktag="&posGP=101001&posArea=0002&posOper=2005&aCId=2549&posColumn=2549.1&aCCate=android">
																</a>

															</div>
														</div>
													</div>
												</div>
											</li>




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
						<div class="aside-allCategory">
							<div class="hd">
								<h2>
									<a href="http://www.jikexueyuan.com/course"><i
										class="icon-course-curr"></i>课程库</a>
								</h2>
							</div>
							<div class="bd">
								<ul class="aside-cList">

									<li>
										<div>
											<a cgid="1" href="http://www.jikexueyuan.com/course/mobile/">移动开发</a>
											<div class="list-show">
												<div>

													<dl>
														<dt>
															<a href="http://www.jikexueyuan.com/course/app/"
																cgid="58">应用开发</a>
														</dt>
														<dd class="cf">

															<a href="http://www.jikexueyuan.com/course/android/"
																cgid="59">Android</a> <a
																href="http://www.jikexueyuan.com/course/ios/" cgid="60">iOS</a>

														</dd>
													</dl>

													<dl>
														<dt>
															<a href="http://www.jikexueyuan.com/course/games/"
																cgid="13">游戏开发</a>
														</dt>
														<dd class="cf">

															<a href="http://www.jikexueyuan.com/course/cocos/"
																cgid="63">Cocos</a> <a
																href="http://www.jikexueyuan.com/course/unity3d/"
																cgid="64">Unity3D</a> <a
																href="http://www.jikexueyuan.com/course/spritekit2d/"
																cgid="65">SpriteKit 2D</a> <a
																href="http://www.jikexueyuan.com/course/unreal/"
																cgid="66">Unreal</a>

														</dd>
													</dl>

													<dl>
														<dt>
															<a href="http://www.jikexueyuan.com/course/frame/"
																cgid="14">常用框架</a>
														</dt>
														<dd class="cf">

															<a href="http://www.jikexueyuan.com/course/cordova/"
																cgid="68">Cordova</a> <a
																href="http://www.jikexueyuan.com/course/reactnative1/"
																cgid="382">React Native</a>

														</dd>
													</dl>

												</div>
											</div>
											<!-- list-show -->
										</div>
									</li>

									<li>
										<div>
											<a cgid="2" href="http://www.jikexueyuan.com/course/web/">前端开发</a>
											<div class="list-show">
												<div>

													<dl>
														<dt>
															<a href="http://www.jikexueyuan.com/course/webbase/"
																cgid="16">前端基础</a>
														</dt>
														<dd class="cf">

															<a href="http://www.jikexueyuan.com/course/html/"
																cgid="76">HTML</a> <a
																href="http://www.jikexueyuan.com/course/css/" cgid="77">CSS</a>

															<a href="http://www.jikexueyuan.com/course/javascript/"
																cgid="78">JavaScript</a> <a
																href="http://www.jikexueyuan.com/course/html5/"
																cgid="79">HTML5</a> <a
																href="http://www.jikexueyuan.com/course/css3/" cgid="80">CSS3</a>

															<a href="http://www.jikexueyuan.com/course/prospective/"
																cgid="81">技术前瞻</a>

														</dd>
													</dl>

													<dl>
														<dt>
															<a href="http://www.jikexueyuan.com/course/advance/"
																cgid="18">前端进阶</a>
														</dt>
														<dd class="cf">

															<a href="http://www.jikexueyuan.com/course/typescript/"
																cgid="97">Typescript</a> <a
																href="http://www.jikexueyuan.com/course/security/"
																cgid="98">前端安全</a> <a
																href="http://www.jikexueyuan.com/course/practice/"
																cgid="99">项目实战</a>

														</dd>
													</dl>

													<dl>
														<dt>
															<a href="http://www.jikexueyuan.com/course/webframe/"
																cgid="17">前端框架</a>
														</dt>
														<dd class="cf">

															<a href="http://www.jikexueyuan.com/course/jquery/"
																cgid="82">jQuery</a> <a
																href="http://www.jikexueyuan.com/course/jqueryui/"
																cgid="83">jQuery UI</a> <a
																href="http://www.jikexueyuan.com/course/jquerymobile/"
																cgid="84">jQuery Mobile</a> <a
																href="http://www.jikexueyuan.com/course/extjs/"
																cgid="85">Ext JS</a> <a
																href="http://www.jikexueyuan.com/course/angularjs/"
																cgid="86">AngularJS</a> <a
																href="http://www.jikexueyuan.com/course/reactjs/"
																cgid="87">ReactJS</a> <a
																href="http://www.jikexueyuan.com/course/bootstrap/"
																cgid="94">Bootstrap</a> <a
																href="http://www.jikexueyuan.com/course/reactnative/"
																cgid="371">React Native</a> <a
																href="http://www.jikexueyuan.com/course/backbone/"
																cgid="372">Backbone</a> <a
																href="http://www.jikexueyuan.com/course/threejs/"
																cgid="373">Three.js</a> <a
																href="http://www.jikexueyuan.com/course/mootools/"
																cgid="374">MooTools</a> <a
																href="http://www.jikexueyuan.com/course/compass/"
																cgid="375">Compass</a>

														</dd>
													</dl>

													<dl>
														<dt>
															<a href="http://www.jikexueyuan.com/course/html5games/"
																cgid="19">HTML5游戏</a>
														</dt>
														<dd class="cf">

															<a href="http://www.jikexueyuan.com/course/canvas/"
																cgid="100">Canvas</a> <a
																href="http://www.jikexueyuan.com/course/svg/" cgid="102">SVG</a>

															<a href="http://www.jikexueyuan.com/course/webgl/"
																cgid="103">WebGL</a> <a
																href="http://www.jikexueyuan.com/course/cocos2djs/"
																cgid="105">Cocos2d-js</a> <a
																href="http://www.jikexueyuan.com/course/createjs/"
																cgid="106">CreateJS</a> <a
																href="http://www.jikexueyuan.com/course/webflash/"
																cgid="107">Flash</a> <a
																href="http://www.jikexueyuan.com/course/webunreal/"
																cgid="108">Unreal</a> <a
																href="http://www.jikexueyuan.com/course/webegret/"
																cgid="109">Egret</a> <a
																href="http://www.jikexueyuan.com/course/phaser/"
																cgid="376">Phaser</a>

														</dd>
													</dl>

												</div>
											</div>
											<!-- list-show -->
										</div>
									</li>

									<li>
										<div>
											<a cgid="3" href="http://www.jikexueyuan.com/course/dev/">后端开发</a>
											<div class="list-show">
												<div>

													<dl>
														<dt>
															<a href="http://www.jikexueyuan.com/course/python/"
																cgid="23">Python</a>
														</dt>
														<dd class="cf">

															<a href="http://www.jikexueyuan.com/course/pythonbase/"
																cgid="147">Python 基础</a> <a
																href="http://www.jikexueyuan.com/course/web2py/"
																cgid="148">web2py</a> <a
																href="http://www.jikexueyuan.com/course/django/"
																cgid="149">Django</a> <a
																href="http://www.jikexueyuan.com/course/flask/"
																cgid="150">Flask</a> <a
																href="http://www.jikexueyuan.com/course/gui/" cgid="393">GUI</a>

															<a
																href="http://www.jikexueyuan.com/course/datamininganalysis/"
																cgid="394">数据挖掘与分析</a>

														</dd>
													</dl>

													<dl>
														<dt>
															<a href="http://www.jikexueyuan.com/course/php/"
																cgid="21">PHP</a>
														</dt>
														<dd class="cf">

															<a href="http://www.jikexueyuan.com/course/phpbase/"
																cgid="123">PHP 基础</a> <a
																href="http://www.jikexueyuan.com/course/yii/" cgid="125">YII</a>

															<a href="http://www.jikexueyuan.com/course/thinkphp/"
																cgid="126">ThinkPHP</a> <a
																href="http://www.jikexueyuan.com/course/laravel/"
																cgid="127">Laravel</a> <a
																href="http://www.jikexueyuan.com/course/wordpress/"
																cgid="128">WordPress</a> <a
																href="http://www.jikexueyuan.com/course/phalcon/"
																cgid="131">Phalcon</a> <a
																href="http://www.jikexueyuan.com/course/apachedev/"
																cgid="135">Apache</a> <a
																href="http://www.jikexueyuan.com/course/facebookhack/"
																cgid="136">Facebook Hack</a>

														</dd>
													</dl>

													<dl>
														<dt>
															<a href="http://www.jikexueyuan.com/course/nodedotjs/"
																cgid="26">Node.js</a>
														</dt>
														<dd class="cf">

															<a href="http://www.jikexueyuan.com/course/nodejs/"
																cgid="158">Node.js 基础</a> <a
																href="http://www.jikexueyuan.com/course/express/"
																cgid="159">express</a> <a
																href="http://www.jikexueyuan.com/course/meteor/"
																cgid="161">Meteor</a> <a
																href="http://www.jikexueyuan.com/course/hexo/"
																cgid="386">Hexo</a>

														</dd>
													</dl>

													<dl>
														<dt>
															<a href="http://www.jikexueyuan.com/course/aspdotnet/"
																cgid="22">ASP.NET</a>
														</dt>
														<dd class="cf">

															<a href="http://www.jikexueyuan.com/course/csharpdev/"
																cgid="137">C#</a> <a
																href="http://www.jikexueyuan.com/course/mvc/" cgid="139">ASP.NET
																MVC</a> <a href="http://www.jikexueyuan.com/course/entity/"
																cgid="140">Entity Framework</a> <a
																href="http://www.jikexueyuan.com/course/wpf/" cgid="368">WPF</a>

														</dd>
													</dl>

													<dl>
														<dt>
															<a href="http://www.jikexueyuan.com/course/j2ee/"
																cgid="20">J2EE</a>
														</dt>
														<dd class="cf">

															<a href="http://www.jikexueyuan.com/course/jsp/"
																cgid="111">JSP</a> <a
																href="http://www.jikexueyuan.com/course/maven/"
																cgid="112">Maven</a> <a
																href="http://www.jikexueyuan.com/course/spring/"
																cgid="114">Spring</a> <a
																href="http://www.jikexueyuan.com/course/springmvc/"
																cgid="115">SpringMVC</a> <a
																href="http://www.jikexueyuan.com/course/struts2/"
																cgid="116">Struts2</a> <a
																href="http://www.jikexueyuan.com/course/mybatis/"
																cgid="117">MyBatis</a> <a
																href="http://www.jikexueyuan.com/course/hibernate/"
																cgid="118">Hibernate</a> <a
																href="http://www.jikexueyuan.com/course/lucene/"
																cgid="120">Lucene</a> <a
																href="http://www.jikexueyuan.com/course/j2eeframe/"
																cgid="369">常用框架</a> <a
																href="http://www.jikexueyuan.com/course/j2eepractice/"
																cgid="370">项目实战</a>

														</dd>
													</dl>

													<dl>
														<dt>
															<a href="http://www.jikexueyuan.com/course/ruby/"
																cgid="24">Ruby</a>
														</dt>
														<dd class="cf">

															<a href="http://www.jikexueyuan.com/course/rubybase/"
																cgid="151">Ruby 基础</a> <a
																href="http://www.jikexueyuan.com/course/rails/"
																cgid="152">Ruby on Rails</a> <a
																href="http://www.jikexueyuan.com/course/grape/"
																cgid="153">Grape</a> <a
																href="http://www.jikexueyuan.com/course/rubyadvanced/"
																cgid="366">Ruby进阶</a> <a
																href="http://www.jikexueyuan.com/course/rubymine/"
																cgid="367">RubyMine</a>

														</dd>
													</dl>

													<dl>
														<dt>
															<a href="http://www.jikexueyuan.com/course/go/" cgid="25">Go</a>
														</dt>
														<dd class="cf">

															<a href="http://www.jikexueyuan.com/course/gobase/"
																cgid="155">Go 基础</a> <a
																href="http://www.jikexueyuan.com/course/revel/"
																cgid="156">Revel</a> <a
																href="http://www.jikexueyuan.com/course/beego/"
																cgid="157">beego</a>

														</dd>
													</dl>

													<dl>
														<dt>
															<a href="http://www.jikexueyuan.com/course/erlang/"
																cgid="387">Erlang</a>
														</dt>
														<dd class="cf">

															<a href="http://www.jikexueyuan.com/course/erlangbase/"
																cgid="388">Erlang 基础</a>

														</dd>
													</dl>

												</div>
											</div>
											<!-- list-show -->
										</div>
									</li>

									<li>
										<div>
											<a cgid="4" href="http://www.jikexueyuan.com/course/base/">基础知识</a>
											<div class="list-show">
												<div>

													<dl>
														<dt>
															<a href="http://www.jikexueyuan.com/course/baselang/"
																cgid="27">基础语言</a>
														</dt>
														<dd class="cf">

															<a href="http://www.jikexueyuan.com/course/c/" cgid="162">C</a>

															<a href="http://www.jikexueyuan.com/course/cpp/"
																cgid="163">C++</a> <a
																href="http://www.jikexueyuan.com/course/oc/" cgid="165">Objective-C</a>

															<a href="http://www.jikexueyuan.com/course/swift/"
																cgid="166">Swift</a> <a
																href="http://www.jikexueyuan.com/course/csharp/"
																cgid="167">C#</a> <a
																href="http://www.jikexueyuan.com/course/java/"
																cgid="168">Java</a> <a
																href="http://www.jikexueyuan.com/course/perl/"
																cgid="169">Perl</a> <a
																href="http://www.jikexueyuan.com/course/shell/"
																cgid="170">Shell</a> <a
																href="http://www.jikexueyuan.com/course/qt/" cgid="171">Qt</a>

															<a href="http://www.jikexueyuan.com/course/scala/"
																cgid="390">Scala</a>

														</dd>
													</dl>

													<dl>
														<dt>
															<a href="http://www.jikexueyuan.com/course/computer/"
																cgid="28">计算机基础</a>
														</dt>
														<dd class="cf">

															<a href="http://www.jikexueyuan.com/course/theory/"
																cgid="172">计算机组成原理</a> <a
																href="http://www.jikexueyuan.com/course/network/"
																cgid="173">网络工程</a> <a
																href="http://www.jikexueyuan.com/course/word/"
																cgid="175">Word</a> <a
																href="http://www.jikexueyuan.com/course/excel/"
																cgid="176">Excel</a> <a
																href="http://www.jikexueyuan.com/course/ppt/" cgid="177">PowerPoint</a>

														</dd>
													</dl>

													<dl>
														<dt>
															<a href="http://www.jikexueyuan.com/course/devbase/"
																cgid="29">开发基础</a>
														</dt>
														<dd class="cf">

															<a href="http://www.jikexueyuan.com/course/count/"
																cgid="178">算法基础</a> <a
																href="http://www.jikexueyuan.com/course/figure/"
																cgid="179">数据结构</a> <a
																href="http://www.jikexueyuan.com/course/model/"
																cgid="180">设计模式</a> <a
																href="http://www.jikexueyuan.com/course/software/"
																cgid="181">软件工程</a>

														</dd>
													</dl>

													<dl>
														<dt>
															<a href="http://www.jikexueyuan.com/course/devtools/"
																cgid="30">开发工具</a>
														</dt>
														<dd class="cf">

															<a href="http://www.jikexueyuan.com/course/git/"
																cgid="183">Git/Github</a> <a
																href="http://www.jikexueyuan.com/course/svn/" cgid="184">SVN</a>

															<a href="http://www.jikexueyuan.com/course/vi/"
																cgid="185">VI</a>

														</dd>
													</dl>

													<dl>
														<dt>
															<a href="http://www.jikexueyuan.com/course/devstd/"
																cgid="31">开放标准</a>
														</dt>
														<dd class="cf">

															<a href="http://www.jikexueyuan.com/course/opencl/"
																cgid="186">OpenCL</a> <a
																href="http://www.jikexueyuan.com/course/xml/" cgid="187">Open
																XML</a> <a href="http://www.jikexueyuan.com/course/gles/"
																cgid="188">OpenGL/GLES</a>

														</dd>
													</dl>

												</div>
											</div>
											<!-- list-show -->
										</div>
									</li>

									<li>
										<div>
											<a cgid="5"
												href="http://www.jikexueyuan.com/course/clouddata/">云计算&amp;大数据</a>
											<div class="list-show">
												<div>

													<dl>
														<dt>
															<a href="http://www.jikexueyuan.com/course/cloudcompute/"
																cgid="32">云计算</a>
														</dt>
														<dd class="cf">

															<a href="http://www.jikexueyuan.com/course/openstack/"
																cgid="189">OpenStack</a> <a
																href="http://www.jikexueyuan.com/course/docker/"
																cgid="191">Docker</a> <a
																href="http://www.jikexueyuan.com/course/cloudstack/"
																cgid="197">CloudStack</a> <a
																href="http://www.jikexueyuan.com/course/windowsazure/"
																cgid="378">Windows Azure</a> <a
																href="http://www.jikexueyuan.com/course/Iaas/"
																cgid="389">IaaS</a>

														</dd>
													</dl>

													<dl>
														<dt>
															<a href="http://www.jikexueyuan.com/course/bigdata/"
																cgid="33">大数据</a>
														</dt>
														<dd class="cf">

															<a href="http://www.jikexueyuan.com/course/hadoop/"
																cgid="198">Hadoop</a> <a
																href="http://www.jikexueyuan.com/course/storm/"
																cgid="200">Storm</a> <a
																href="http://www.jikexueyuan.com/course/hive/"
																cgid="204">Hive</a> <a
																href="http://www.jikexueyuan.com/course/flume/"
																cgid="206">Flume</a> <a
																href="http://www.jikexueyuan.com/course/kafka/"
																cgid="208">Kafka</a> <a
																href="http://www.jikexueyuan.com/course/zookeeper/"
																cgid="209">Zookeeper</a> <a
																href="http://www.jikexueyuan.com/course/hbase/"
																cgid="211">Hbase</a> <a
																href="http://www.jikexueyuan.com/course/spark/"
																cgid="213">Spark</a> <a
																href="http://www.jikexueyuan.com/course/Informationretrieval/"
																cgid="377">信息检索</a> <a
																href="http://www.jikexueyuan.com/course/dataanalysis/"
																cgid="383">数据分析</a>

														</dd>
													</dl>

													<dl>
														<dt>
															<a href="http://www.jikexueyuan.com/course/virtual/"
																cgid="34">虚拟化</a>
														</dt>
														<dd class="cf">

															<a href="http://www.jikexueyuan.com/course/vmware/"
																cgid="220">VMware</a>

														</dd>
													</dl>

													<dl>
														<dt>
															<a
																href="http://www.jikexueyuan.com/course/cloudplatform/"
																cgid="391">云平台</a>
														</dt>
														<dd class="cf">

															<a href="http://www.jikexueyuan.com/course/tencent/"
																cgid="392">腾讯云</a>

														</dd>
													</dl>

												</div>
											</div>
											<!-- list-show -->
										</div>
									</li>

									<li>
										<div>
											<a cgid="6"
												href="http://www.jikexueyuan.com/course/intellegence/">智能硬件&amp;物联网</a>
											<div class="list-show">
												<div>

													<dl>
														<dt>
															<a href="http://www.jikexueyuan.com/course/hardware/"
																cgid="35">硬件架构</a>
														</dt>
														<dd class="cf">

															<a href="http://www.jikexueyuan.com/course/c51/"
																cgid="222">C51</a> <a
																href="http://www.jikexueyuan.com/course/armframe/"
																cgid="223">ARM</a> <a
																href="http://www.jikexueyuan.com/course/keil/"
																cgid="226">Keil</a> <a
																href="http://www.jikexueyuan.com/course/cortex-m/"
																cgid="228">Cortex-M</a> <a
																href="http://www.jikexueyuan.com/course/cortex-a/"
																cgid="229">Cortex-A</a> <a
																href="http://www.jikexueyuan.com/course/avr/" cgid="379">AVR</a>

														</dd>
													</dl>

													<dl>
														<dt>
															<a href="http://www.jikexueyuan.com/course/iot/"
																cgid="36">物联网操作系统</a>
														</dt>
														<dd class="cf">

															<a href="http://www.jikexueyuan.com/course/rtos/"
																cgid="231">RTOS</a> <a
																href="http://www.jikexueyuan.com/course/androidwear/"
																cgid="233">Android Wear</a> <a
																href="http://www.jikexueyuan.com/course/applewatchkit/"
																cgid="236">Apple Watchkit</a>

														</dd>
													</dl>

													<dl>
														<dt>
															<a href="http://www.jikexueyuan.com/course/open/"
																cgid="37">开源硬件平台</a>
														</dt>
														<dd class="cf">

															<a href="http://www.jikexueyuan.com/course/arduino/"
																cgid="237">Arduino</a> <a
																href="http://www.jikexueyuan.com/course/pibow/"
																cgid="238">树莓派</a> <a
																href="http://www.jikexueyuan.com/course/mbed/"
																cgid="239">mbed</a> <a
																href="http://www.jikexueyuan.com/course/goKit/"
																cgid="242">GoKit</a> <a
																href="http://www.jikexueyuan.com/course/lemakerguitar/"
																cgid="395">LeMaker Guitar</a>

														</dd>
													</dl>

													<dl>
														<dt>
															<a href="http://www.jikexueyuan.com/course/link/"
																cgid="38">通信链接技术</a>
														</dt>
														<dd class="cf">

															<a href="http://www.jikexueyuan.com/course/wifi/"
																cgid="243">无线WiFi</a> <a
																href="http://www.jikexueyuan.com/course/tel/" cgid="244">移动通信</a>

															<a href="http://www.jikexueyuan.com/course/bluetooth/"
																cgid="245">蓝牙</a> <a
																href="http://www.jikexueyuan.com/course/nfc/" cgid="247">NFC</a>

														</dd>
													</dl>

													<dl>
														<dt>
															<a href="http://www.jikexueyuan.com/course/infosense/"
																cgid="39">信息感知处理技术</a>
														</dt>
														<dd class="cf">

															<a href="http://www.jikexueyuan.com/course/sensor/"
																cgid="251">传感器</a> <a
																href="http://www.jikexueyuan.com/course/dig/" cgid="255">数据挖掘</a>

														</dd>
													</dl>

													<dl>
														<dt>
															<a href="http://www.jikexueyuan.com/course/hci/"
																cgid="40">人机交互技术</a>
														</dt>
														<dd class="cf">

															<a href="http://www.jikexueyuan.com/course/asr/"
																cgid="257">语音识别</a> <a
																href="http://www.jikexueyuan.com/course/face/"
																cgid="259">人脸识别</a> <a
																href="http://www.jikexueyuan.com/course/gesture/"
																cgid="261">手势识别</a>

														</dd>
													</dl>

												</div>
											</div>
											<!-- list-show -->
										</div>
									</li>

									<li>
										<div>
											<a cgid="7" href="http://www.jikexueyuan.com/course/db/">数据库</a>
											<div class="list-show">
												<div>

													<dl>
														<dt>
															<a href="http://www.jikexueyuan.com/course/sql/"
																cgid="41">SQL</a>
														</dt>
														<dd class="cf">

															<a href="http://www.jikexueyuan.com/course/mysql/"
																cgid="262">MySQL</a> <a
																href="http://www.jikexueyuan.com/course/sqlserver/"
																cgid="263">SQL Server</a> <a
																href="http://www.jikexueyuan.com/course/oracledb/"
																cgid="264">Oracle</a> <a
																href="http://www.jikexueyuan.com/course/sqlite/"
																cgid="265">SQLite</a> <a
																href="http://www.jikexueyuan.com/course/postgresql/"
																cgid="266">PostgreSQL</a> <a
																href="http://www.jikexueyuan.com/course/db2/" cgid="267">DB2</a>

														</dd>
													</dl>

													<dl>
														<dt>
															<a href="http://www.jikexueyuan.com/course/nosql/"
																cgid="42">NoSQL</a>
														</dt>
														<dd class="cf">

															<a href="http://www.jikexueyuan.com/course/cassandra/"
																cgid="212">Cassandra</a> <a
																href="http://www.jikexueyuan.com/course/redis/"
																cgid="269">Redis</a> <a
																href="http://www.jikexueyuan.com/course/mongoDB/"
																cgid="271">MongoDB</a>

														</dd>
													</dl>

												</div>
											</div>
											<!-- list-show -->
										</div>
									</li>

									<li>
										<div>
											<a cgid="8"
												href="http://www.jikexueyuan.com/course/certificate/">认证考试</a>
											<div class="list-show">
												<div>

													<dl>
														<dt>
															<a href="http://www.jikexueyuan.com/course/exam/"
																cgid="43">计算机等级考试</a>
														</dt>
														<dd class="cf">

															<a href="http://www.jikexueyuan.com/course/first/"
																cgid="275">一级</a> <a
																href="http://www.jikexueyuan.com/course/secc/"
																cgid="276">二级C</a> <a
																href="http://www.jikexueyuan.com/course/secjava/"
																cgid="277">二级Java</a> <a
																href="http://www.jikexueyuan.com/course/seccpp/"
																cgid="278">二级C++</a> <a
																href="http://www.jikexueyuan.com/course/networking/"
																cgid="281">网络工程师</a> <a
																href="http://www.jikexueyuan.com/course/dba/" cgid="282">数据库工程师</a>

															<a href="http://www.jikexueyuan.com/course/secure/"
																cgid="283">信息安全工程师</a>

														</dd>
													</dl>

													<dl>
														<dt>
															<a href="http://www.jikexueyuan.com/course/enterprise/"
																cgid="45">企业认证</a>
														</dt>
														<dd class="cf">

															<a href="http://www.jikexueyuan.com/course/cisco/"
																cgid="298">思科认证</a> <a
																href="http://www.jikexueyuan.com/course/oracle/"
																cgid="299">Oracle认证</a> <a
																href="http://www.jikexueyuan.com/course/linux/"
																cgid="301">Linux认证</a> <a
																href="http://www.jikexueyuan.com/course/arm/" cgid="302">ARM认证</a>

														</dd>
													</dl>

												</div>
											</div>
											<!-- list-show -->
										</div>
									</li>

									<li>
										<div>
											<a cgid="9"
												href="http://www.jikexueyuan.com/course/enterpriseit/">企业
												IT</a>
											<div class="list-show">
												<div>

													<dl>
														<dt>
															<a href="http://www.jikexueyuan.com/course/operation/"
																cgid="46">运维管理</a>
														</dt>
														<dd class="cf">

															<a
																href="http://www.jikexueyuan.com/course/shellmaintain/"
																cgid="303">Shell</a> <a
																href="http://www.jikexueyuan.com/course/auto/"
																cgid="304">自动化运维</a> <a
																href="http://www.jikexueyuan.com/course/nginx/"
																cgid="305">Nginx</a> <a
																href="http://www.jikexueyuan.com/course/apache/"
																cgid="308">Apache</a> <a
																href="http://www.jikexueyuan.com/course/operationmonitor/"
																cgid="380">运维监控</a>

														</dd>
													</dl>

													<dl>
														<dt>
															<a href="http://www.jikexueyuan.com/course/business/"
																cgid="47">商业智能</a>
														</dt>
														<dd class="cf">

															<a href="http://www.jikexueyuan.com/course/filemaker/"
																cgid="310">FileMaker</a>

														</dd>
													</dl>

													<dl>
														<dt>
															<a href="http://www.jikexueyuan.com/course/os/" cgid="48">操作系统</a>
														</dt>
														<dd class="cf">

															<a href="http://www.jikexueyuan.com/course/linuxsys/"
																cgid="311">Linux</a> <a
																href="http://www.jikexueyuan.com/course/windows/"
																cgid="312">Windows</a> <a
																href="http://www.jikexueyuan.com/course/macos/"
																cgid="313">Mac OS</a>

														</dd>
													</dl>

													<dl>
														<dt>
															<a
																href="http://www.jikexueyuan.com/course/enterpriseservice/"
																cgid="384">企业服务</a>
														</dt>
														<dd class="cf">

															<a href="http://www.jikexueyuan.com/course/b2c/"
																cgid="385">B2C</a>

														</dd>
													</dl>

												</div>
											</div>
											<!-- list-show -->
										</div>
									</li>

									<li>
										<div>
											<a cgid="11"
												href="http://www.jikexueyuan.com/course/productdesign/">设计&amp;产品&amp;测试</a>
											<div class="list-show">
												<div>

													<dl>
														<dt>
															<a href="http://www.jikexueyuan.com/course/designbase/"
																cgid="51">设计基础</a>
														</dt>
														<dd class="cf">

															<a href="http://www.jikexueyuan.com/course/photoshop/"
																cgid="327">Photoshop</a> <a
																href="http://www.jikexueyuan.com/course/flash/"
																cgid="329">Flash</a> <a
																href="http://www.jikexueyuan.com/course/illustrator/"
																cgid="330">Illustrator</a> <a
																href="http://www.jikexueyuan.com/course/sketch/"
																cgid="331">Sketch</a>

														</dd>
													</dl>

													<dl>
														<dt>
															<a href="http://www.jikexueyuan.com/course/gamedesign/"
																cgid="52">游戏设计</a>
														</dt>
														<dd class="cf">

															<a href="http://www.jikexueyuan.com/course/interface/"
																cgid="336">界面设计</a> <a
																href="http://www.jikexueyuan.com/course/role/"
																cgid="338">角色设计</a>

														</dd>
													</dl>

													<dl>
														<dt>
															<a href="http://www.jikexueyuan.com/course/pm/" cgid="54">产品经理</a>
														</dt>
														<dd class="cf">

															<a href="http://www.jikexueyuan.com/course/demand/"
																cgid="341">需求分析</a> <a
																href="http://www.jikexueyuan.com/course/axure/"
																cgid="343">Axure</a> <a
																href="http://www.jikexueyuan.com/course/item/"
																cgid="344">项目实战</a>

														</dd>
													</dl>

													<dl>
														<dt>
															<a href="http://www.jikexueyuan.com/course/vd/"
																cgid="362">视觉设计</a>
														</dt>
														<dd class="cf">

															<a href="http://www.jikexueyuan.com/course/appui/"
																cgid="340">应用UI设计</a> <a
																href="http://www.jikexueyuan.com/course/webui/"
																cgid="363">网页UI设计</a> <a
																href="http://www.jikexueyuan.com/course/dt/" cgid="364">设计理论</a>

															<a href="http://www.jikexueyuan.com/course/gd/"
																cgid="365">图形设计</a>

														</dd>
													</dl>

													<dl>
														<dt>
															<a href="http://www.jikexueyuan.com/course/testtools/"
																cgid="50">测试工具</a>
														</dt>
														<dd class="cf">

															<a href="http://www.jikexueyuan.com/course/autotest/"
																cgid="325">自动化测试</a>

														</dd>
													</dl>

												</div>
											</div>
											<!-- list-show -->
										</div>
									</li>

								</ul>
							</div>
							<!-- /bd -->
						</div>
						<ul class="hdlist">
							<li><a href="http://ke.jikexueyuan.com/zhiye/"> <i
									class="icon-zylj"></i>职业路径图
							</a></li>
							<li><a href="http://www.jikexueyuan.com/path/"> <i
									class="icon-zstx"></i>知识体系图
							</a></li>
							<li><a href="http://ke.jikexueyuan.com/xilie/"> <i
									class="icon-xlkc"></i>系列课程
							</a></li>
							<li><a href="http://www.jikexueyuan.com/tag/"> <i
									class="icon-kcbq"></i>课程标签
							</a></li>
						</ul>
						<!--lesson_banner1-->
						<!-- <div class="lesson_banner1 lesson-banner-width" id="banner02-1"></div> -->
						<!--lesson_banner2-->
						<!-- <div class="lesson_banner2 lesson-banner-width" id="banner02-2"></div> -->
						<!--lesson_banner3-->
						<!-- <div class="lesson_banner3 lesson-banner-width" id="banner02-3"></div> -->
					</div>
				</div>
			</div>
		</div>

	</div>
	
</body>
</html>
