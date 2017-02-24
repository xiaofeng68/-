<%@ page contentType="text/html;charset=UTF-8"%>
<%@ include file="/WEB-INF/views/modules/cms/front/include/taglib.jsp"%>
<!DOCTYPE html>
<html>
<head>
<TITLE>web大前端 - 极客学院</TITLE>
<meta name="decorator" content="cms_default_${site.theme}" />
<meta name="description" content="JeeSite ${site.description}" />
<meta name="keywords" content="JeeSite ${site.keywords}" />
<link rel="stylesheet" href="${ctxStaticTheme }/css/swiper.css">
<LINK rel=stylesheet type=text/css href="${ctxStaticTheme }/css/web.css">
<LINK rel=stylesheet type=text/css
	href="${ctxStaticTheme }/css/idangerous.swiper.css">
</HEAD>

<BODY>
	<!-- 存放的数据 -->
	<!-- 预约人数 -->
	<SPAN style="DISPLAY: none" id=bookNum>4032</SPAN>
	<!-- 就业人数 -->
	<SPAN style="DISPLAY: none" id=jobNum>33774</SPAN>
	<!-- 领取人数 -->
	<SPAN style="DISPLAY: none" id=upNum>已有9573人领取</SPAN>
	<!-- 本月领取人数 -->
	<SPAN style="DISPLAY: none" id=monthNums>2725</SPAN>
	<!-- 本月提问人数 -->
	<SPAN style="DISPLAY: none" id=monthAsks>2755</SPAN>
	<!-- 返回顶部按钮 -->
	<A id=gotoTop href="javascript:;"></A>
	<SECTION id=pageTop class=header>

		<DIV class=top-banner>

			<UL class="wrap cf">

				<LI class=logo-part><IMG class=logo src="images/logo.png">

					<P class=slogan1>实战成就高薪就业</P>
				<LI class=nav-part><A class=kcsz href="javascript:;">课程设置</A> <A
					class=szms href="javascript:;">实战名师</A> <A class=zyfd
					href="javascript:;">作业辅导</A> <A class=jybz href="javascript:;">就业保障</A>
					<A class=xypj href="javascript:;">学员评价</A> <A id=upEle
					onclick="doyoo.util.openChat('g=10059996');return false;"
					href="javascript:;">限时优惠</A></LI>
			</UL>
		</DIV>

		<DIV class=wrap>
			<!-- time counts -->
			<!--<p class="time-counts">

                就业班<span id="class">81</span>期，距开课还有

                <span id="days"></span>天

                <span id="hours"></span>小时

                <span id="mins"></span>分

                <span id="seconds"></span>秒

            </p>-->

			<P style="FONT-SIZE: 24px" class=time-counts>实战·让学习更有效</P>
			<!-- 倒计时 -->

			<P style="DISPLAY: none" class=discount
				end-time="2017/02/26 00:00:00" start-time="2017/02/23 16:21:53"></P>
			<!-- head counts -->

			<DIV id=hc1 class=head-counts>
				<SPAN>已帮助</SPAN>

				<P id=jkct class=jk-countdown></P>
				<SPAN>名学员高薪就业</SPAN>
			</DIV>
			<!-- advances -->

			<UL class="cf advances">

				<LI>

					<H3 class=yellow>碾压</H3>

					<P>同业导师水准</P>

					<P class=desc>
						<SPAN class=yellow>业内独家</SPAN> <BR／>
						<SPAN class=yellow>2137 </SPAN>位一线工程师 <BR／>“抢单式”一对一辅导
					</P>
					<A onclick="doyoo.util.openChat('g=10059996');return false;"
					href="javascript:;">咨询了解导师团队</A>
				<LI>

					<H3 class=yellow>秒杀</H3>

					<P>陈旧线下课程</P>

					<P class=desc>
						Web前端 <SPAN class=yellow>全栈开发</SPAN> <BR／>丰富度远超基础Web前端 <BR／>及普通网页开发内容
					</P>
					<A onclick="doyoo.util.openChat('g=10059996');return false;"
					href="javascript:;">咨询了解课程大纲</A>
				<LI>

					<H3 class=yellow>完爆</H3>

					<P>传统学习方式</P>

					<P class=desc>
						<SPAN class=yellow>学习方式更酷</SPAN> <BR／>不用东奔西跑 <BR／>被窝里就能学好
					</P>
					<A onclick="doyoo.util.openChat('g=10059996');return false;"
					href="javascript:;">咨询了解学习方式</A>
				<LI>

					<H3 class=yellow>横扫</H3>

					<P>IT高薪岗位</P>

					<P class=desc>
						学成毕业入职阿里、 <BR／>滴滴等互联网知名企业 <BR／>平均月薪<SPAN class=yellow>1万3</SPAN>起
					</P>
					<A onclick="doyoo.util.openChat('g=10059996');return false;"
					href="javascript:;">咨询了解就业保障</A>
				</LI>
			</UL>
		</DIV>
	</SECTION>
	<SECTION id=part2>

		<DIV class=wrap>

			<H2 class=part-tit>为什么Web大前端工程师如此值钱？</H2>

			<P class=part-tip>技术从业者，一线大公司，互联网行业，都在追捧的明星！</P>
			<IMG src="images/part2-1.jpg"> <A class=zxbtn
				onclick="doyoo.util.openChat('g=10059996');return false;"
				href="javascript:;">咨询如何成为Web大前端工程师</A>
		</DIV>
	</SECTION>
	<SECTION id=part3>

		<DIV class=wrap>

			<H2 class=part-tit>Web大前端，想说爱你不容易！</H2>

			<P class=part-tip>看着眼红，学着痛苦？！何时才能进公司？</P>
			<IMG src="images/part3-1.png">
			<SECTION class=secondary>

				<H3>极客学院Web大前端工程师就业班</H3>

				<P class=second-tips>4个月抽点时间在线学习，0基础也能学会！</P>

				<H4>针对6大人群实现8大亮点</H4>

				<P>系统化&amp;实战性，全程高能，轻松踏入最朝阳互联网行业！</P>
				<A class=zxbtn
					onclick="doyoo.util.openChat('g=10059996');return false;"
					href="javascript:;">咨询老师能否学会？</A>
			</SECTION>
		</DIV>
	</SECTION>
	<SECTION id=part4>

		<DIV class=wrap>

			<H2 class=part-tit>急你所急，满足6大不同类型人群诉求</H2>
			<IMG src="images/part4-1.png"> <A class=zxbtn
				onclick="doyoo.util.openChat('g=10059996');return false;"
				href="javascript:;">咨询我适合学前端吗？</A>
		</DIV>
	</SECTION>
	<SECTION id=part5>

		<DIV class=wrap>

			<H2 class="part-tit white">8大亮点在线学，打造Web大前端高手</H2>

			<DIV class=part5-cards>
				<A class="card-link jump1" href="javascript:;"></A><A
					class="card-link jump2" href="javascript:;"></A><A
					class="card-link jump2" href="javascript:;"></A><A
					class="card-link jump3" href="javascript:;"></A><A
					class="card-link jump4" href="javascript:;"></A><A
					class="card-link jump2" href="javascript:;"></A><A
					class="card-link jump5" href="javascript:;"></A><A
					class="card-link jump6" href="javascript:;"></A>
			</DIV>
			<A class=zxbtn
				onclick="doyoo.util.openChat('g=10059996');return false;"
				href="javascript:;">立即咨询获取1000元限时优惠</A> <SPAN class="red part-hints">本月已有<EM
				id=getNumber1></EM>人领取
			</SPAN>
		</DIV>
	</SECTION>
	<SECTION id=part6>

		<DIV class="wrap cf">

			<DIV class=state>

				<H2>一流的教学团队</H2>

				<P>你不是一个人在孤独战斗！</P>

				<P>学院拥有完善的教学团队，不止名师那么简单！</P>

				<P>全方位为你的学习保驾护航！</P>
			</DIV>

			<DIV class=media>
				<I class=ora-1></I><I class=ora-2></I><I class=ora-3></I><I
					class=blue-1></I><I class=blue-2></I><I class=blue-3></I><I
					class=red-1></I><I class=red-2></I><I class=green-1></I><I
					class=green-2></I><I class=green-3></I>
			</DIV>
		</DIV>
	</SECTION>
	<SECTION id=part7>

		<DIV class=wrap>

			<H2 class="part-tit white">像这样优秀的授课讲师，我们还有500多位！</H2>

			<P class="part-tip white">腾讯、阿里、美团、携程、中兴、滴滴、小米等名企导师在线授课，确保你能少走2年弯路
				！</P>

			<UL class=cf>

				<LI><IMG src="images/part7-1-1.jpg">

					<H4>张杰</H4>

					<P>历任前端工程师、开发组长、项目经理等职位</P>

					<P>12年行业工作经验，6年教学经验，讲课风趣，形式多样</P>

					<P>项目经验丰富，曾参与过各大中小型项目开发；电商、门户、财务、教育等网站类型均有涉及</P>
				<LI><IMG src="images/part7-2.jpg">

					<H4>王剑</H4>

					<P>全栈工程师，资深技术专家</P>

					<P>6年Java Web开发和项目管理经验，2年通信、3年IT教育培训经验</P>

					<P>华为广东移动BOSS系统建设期间担任Team Leader</P>

					<P>擅长引导学员思考分析</P>
				<LI><IMG src="images/part7-3.jpg">

					<H4>翟宝明</H4>

					<P>滴滴大数据前端负责人</P>

					<P>曾任阿里巴巴高级前端工程师，负责国际站前端基础技术研发</P>

					<P>在HTML5和Node.js方面有丰富的项目经验。</P>

					<P>已成功辅导218位学员从技术小白成功转行Web前端工程师</P>
				<LI><IMG src="images/part7-4.jpg">

					<H4>谢家全</H4>

					<P>美团网Web前端工程师</P>

					<P>90后学霸</P>

					<P>曾负责大数据平台可视化项目的中前端开发，PHP整站和手机客户端Android开发</P>

					<P>愿意将自己多年的经验，分享给更多职场新人</P>
				<LI><IMG src="images/part7-5.jpg">

					<H4>耿昌宇</H4>

					<P>在中兴通讯工作长达11年</P>

					<P>目前供职于携程旅行网</P>

					<P>精通HTML/CSS/Node.js、Bootstrap前端技术；对JS的各种特性以及浏览器兼容性有丰富的经验；</P>

					<P>对待教学严谨负责</P></LI>
			</UL>
			<A class=zxbtn
				onclick="doyoo.util.openChat('g=10059996');return false;"
				href="javascript:;">咨询更多讲师问题<I class=btn-alt></I></A> <SPAN
				class="red part-hints">本月已有<EM id=getNumber2></EM>人提问
			</SPAN>
		</DIV>
	</SECTION>
	<SECTION id=part8>

		<DIV class=wrap>

			<H2 class=part-tit>
				2137位一线工程师一对一“抢单式”辅导<I class=icon-seal></I>
			</H2>

			<P class=part-tip>随堂作业 通关任务 技术难点 实用技巧</P>

			<DIV class=video>
				<VIDEO id=videoA poster="images/video_bg1.jpg"
					mediagroup="myVideoGroup" preload="autoplay" controls="controls">
					<SOURCE id=mp4 type="video/mp4"
						src="http://jiuye-res.jikexueyuan.com/web/video/66fefbc0-b1e2-42e3-83fb-09f5cccdada6.mp4">

					<P>Your user agent does not support the HTML5 Video element.</P>
				</VIDEO>
				<IMG id=playA alt="" src="images/video_bg1.jpg">
			</DIV>
			<A class=zxbtn
				onclick="doyoo.util.openChat('g=10059996');return false;"
				href="javascript:;">咨询哪位老师辅导我</A>
		</DIV>
	</SECTION>
	<SECTION id=part9>

		<DIV class=wrap>

			<H2 class="part-tit white">TOP5互联网公司协作开发课程内容</H2>

			<P class="part-tip white">涵盖超过1520个技能点、知识点，34个实战作业+1个企业级项目</P>

			<DIV class=course-sys>

				<UL class="cf course-time">

					<LI class="courses active" data-position="0">第一个月课程
					<LI class=courses data-position="1">第二个月课程
					<LI class=courses data-position="2">第三个月课程
					<LI class=courses data-position="3">第四个月课程</LI>
				</UL>

				<UL class=course-container>

					<LI class=course-content>HTML5基础与服务器搭建.
					<LI class=course-content>HTML5及CSS3核心技术.
					<LI class=course-content>CSS布局及图形动画绘制.
					<LI class=course-content>HTML5及CSS3核心技巧.</LI>
				</UL>

				<UL style="DISPLAY: none" class=course-container>

					<LI class=course-content>JavaScript基础.
					<LI class=course-content>JavaScriptDOM高级.
					<LI class=course-content>JQuery深入.
					<LI class=course-content>面向对象及PHP+MySQL.</LI>
				</UL>

				<UL style="DISPLAY: none" class=course-container>

					<LI class=course-content>Node.JS和移动端开发.
					<LI class=course-content>前端工业化框架.
					<LI class=course-content>CSS在工程中的变化.
					<LI class=course-content>JavaScript设计模式.</LI>
				</UL>

				<UL style="DISPLAY: none" class=course-container>

					<LI class=course-content>版本控制管理软件.
					<LI class=course-content>网络安全及React Native.
					<LI class=course-content>Linux基础.
					<LI class=course-content>HTML5游戏开发.</LI>
				</UL>
			</DIV>
			<A class=zxbtn
				onclick="doyoo.util.openChat('g=10059996');return false;"
				href="javascript:;">咨询老师详细课程大纲</A>
		</DIV>
	</SECTION>
	<SECTION id=part10>

		<DIV class=wrap>

			<H2 class=part-tit>坐拥国内最大的Wiki技术教程资源库</H2>

			<P class=part-tip>
				海量资源，如虎添翼！81.7%的人需要2年才填完的坑，<SPAN class=red>你在极客学院web
					大前端就业班只要4个月！</SPAN>
			</P>
			<IMG src="images/part10-1.jpg"> <A class=zxbtn
				onclick="doyoo.util.openChat('g=10059996');return false;"
				href="javascript:;">了解更多Wiki资源</A>
		</DIV>
	</SECTION>
	<SECTION id=part11>

		<DIV class=wrap>

			<H2 class="part-tit white">强大的学习保障系统-PLPS</H2>

			<P class="part-tip white">
				PLPS 是极客学院结合在线教育特点及兴趣学习模型开发的<SPAN class=red>项目驱动制冲关式学习保障系统。 </SPAN><BR>6项强大功能，针对性解决学习过程中的过度放任、半途而废、效果不好、周期过长等问题。
			</P>
			<IMG src="images/part11-1.png"> <A class=zxbtn
				onclick="doyoo.util.openChat('g=10059996');return false;"
				href="javascript:;">向老师申请试学</A>
		</DIV>
	</SECTION>
	<SECTION id=part12>

		<DIV class=wrap>

			<H2 class=part-tit>4个月，160次1对1作业批改机会</H2>

			<P class=part-tip>—— 每1位学生可以接受来自10名以上实战教练的直接指点 ——</P>
			<IMG src="images/part12-1.jpg"> <A class=zxbtn
				onclick="doyoo.util.openChat('g=10059996');return false;"
				href="javascript:;">咨询老师更多学习问题</A>
		</DIV>
	</SECTION>
	<SECTION id=part13>

		<DIV class=wrap>

			<H2 class="part-tit white">17大项实战作业，学习效果看得见！</H2>

			<P class="part-tip white">—— 作业即实战，任务内容对接企业工作技能需求，成就感爆棚！ ——</P>

			<UL class=cf>

				<LI id=loyoBtn><A
					onclick="doyoo.util.openChat('g=10059996');return false;"
					href="javascript:;"><IMG id=loyoImg src="images/part13-1.jpg"></A>
					<A class="zxbtn loyo-btn"
					onclick="doyoo.util.openChat('g=10059996');return false;"
					href="javascript:;">咨询老师如何学会</A> </A>
				<LI><I class=play-btn></I>
				<VIDEO id=videoB poster="images/video_bg2.jpg"
						mediagroup="myVideoGroup" preload="autoplay" controls="controls">
						<SOURCE id=mp4 type="video/mp4"
							src="http://wirrorcdn.jikexueyuan.com/jiuye/video/show.mp4">

						<P>Your user agent does not support the HTML5 Video element.</P>
					</VIDEO><IMG id=playB src="images/video_bg2.jpg"></LI>
			</UL>
			<A class=zxbtn
				onclick="doyoo.util.openChat('g=10059996');return false;"
				href="javascript:;">咨询老师更多学员作品</A>
		</DIV>
	</SECTION>
	<SECTION id=part14>

		<DIV class=wrap>

			<H2 class=part-tit>极客学院提供全程学习保障服务</H2>

			<P class=part-tip>—— 正式报名入学，即享受全程学习保障服务，并郑重承诺 ——</P>

			<DIV class="time-line cf">

				<P class="tleft tl-stream">多个实战型冲关项目实操及详细批改</P>

				<P class="tright tl-stream">全程小班授课，专属班主任及助教</P>

				<P class="tleft tl-stream">高频次的一对一实战教练辅导</P>

				<P class="tright tl-stream">来自一线互联网名企的导师授课</P>

				<P class="tleft tl-stream">帮助学员增加相当于1-2年的实战工作经验</P>

				<P class="tright tl-stream">模拟实体面授班的精品课及在线直播答疑</P>

				<P class="tleft tl-stream">极其自由的学习时间支配</P>

				<P class="tright tl-stream">完全开放的资料平台及无限制使用的课程视频内容</P>

				<P class="tleft tl-stream">学习成绩优秀者给予奖学金奖励</P>

				<P class="tright tl-stream">学习内容相关问题100%答疑</P>

				<P class="tleft tl-stream">学期内全程开放PLPS提供助学支持</P>
			</DIV>
			<A class=zxbtn
				onclick="doyoo.util.openChat('g=10059996');return false;"
				href="javascript:;">咨询老师更多学习保障</A>
		</DIV>
	</SECTION>
	<SECTION id=part15>

		<DIV class=wrap>

			<H2 class="part-tit white">比一比，孰好孰坏高下立见！</H2>
			<IMG src="images/part15-1.jpg"> <A class=zxbtn
				onclick="doyoo.util.openChat('g=10059996');return false;"
				href="javascript:;">咨询极客学院教学特色</A>
		</DIV>
	</SECTION>
	<SECTION id=part16>
		<SECTION id=part16-1>学会以后怎么就业？</SECTION>

		<DIV class="wrap path16-path">

			<H2 class=part-tit>极客学院就业班就业辅导服务</H2>

			<UL class=path-cont>
				<I class=path-light></I>

				<LI class="top top1 icons"><IMG src="images/part16-1.png">
				<LI class="top top2 icons"><IMG src="images/part16-2.png">
				<LI class="top top3 icons"><IMG src="images/part16-3.png">
				<LI class="top top4 icons"><IMG src="images/part16-4.png">
				<LI class="mid mid1 icons"><IMG src="images/part16-5.png">
				<LI class="mid mid2 icons"><IMG src="images/part16-6.png">
				<LI class="mid mid3 icons"><IMG src="images/part16-7.png">
				<LI class="mid mid4 icons"><IMG src="images/part16-8.png">
				<LI class="bot icons"><IMG src="images/part16-9.png">
				<LI class="big icons"><IMG src="images/part16-10.png"> <I
					class=offer-radius></I>
				<LI class="txt icons"><IMG src="images/part16-11.png"></LI>
			</UL>

			<P class=job-hc>
				已经有 <SPAN id=hc2>0</SPAN> 名学员找到工作！
			</P>

			<P class=job-time>以上数据截止 2017年02月22日</P>
			<A class=zxbtn
				onclick="doyoo.util.openChat('g=10059996');return false;"
				href="javascript:;">咨询更多就业辅导问题</A>
		</DIV>
	</SECTION>
	<SECTION id=part17>

		<DIV class=wrap>
			<A class=zxbtn
				onclick="doyoo.util.openChat('g=10059996');return false;"
				href="javascript:;">咨询老师更多高薪职位</A>

			<P class="companys jobs"></P>

			<P class="careers jobs"></P>
		</DIV>
	</SECTION>
	<SECTION id=part18>

		<DIV class=wrap>

			<H2 class=part-tit>学员学的怎么样 看看用人单位怎么说</H2>

			<UL class=cf>

				<LI class=ceo1>

					<P class=remark>人才的吸纳及培养、与公司文化的融合及适应，是很多公司在员工层面所面临的现实问题。极客学院所倡导的人才培养机制和教育理念，提出了一个实用度很高的解决方案，并进行了很多适用现代互联网行业发展的有益尝试。我们信赖极客学院所输送培养的人才。</P>

					<DIV class=introduction>
						<I class=icon-logo1></I>

						<H4 class=realname>顾锐</H4>

						<P class=position>camera 360 CEO</P>
					</DIV>
				<LI class=ceo2>

					<P class=remark>极客学院的“纽带”及“桥接”，弥合了高校学生进入职场角色的断层问题，入职公司后可以很好的应对工作中的挑战，迅速融入技术团队完成项目整体开发。从而帮助企业更高效、有力的建设人才梯队。一直以来我们都把极客学院作为公司的重要人才储备库资源。</P>

					<DIV class=introduction>
						<I class=icon-logo2></I>

						<H4 class=realname>肖异</H4>

						<P class=position>穷游网CEO</P>
					</DIV>
				<LI class=ceo3>

					<P class=remark>企业的基石是人才，工程师越老越值钱。极客学院作为互联网新型大学，不断为企业提供着优质的开发工程师帮助从业者不断提升自身价值。我们非常认同极客学院的教育理念，并有幸与极客学院合作，共同为行业提供一流的人才。</P>

					<DIV class=introduction>
						<I class=icon-logo3></I>

						<H4 class=realname>戴科斌</H4>

						<P class=position>猎聘网CEO</P>
					</DIV>
				<LI class=ceo4>

					<P class=remark>程序员是一个需要持续自我提升的职业,极客学院为这批人提供了绝佳的学习资源。收到极客学院的学员简历时,常常附上了他们的项目实战作品。事实证明，他们的专业技能基础扎实，实战能力强，有很强的自我驱动意识,到岗后可以很快上手并开始承担重要开发工作。我们非常欢迎这样的应聘者。</P>

					<DIV class=introduction>
						<I class=icon-logo4></I>

						<H4 class=realname>杨元元</H4>

						<P class=position>中软国际招聘经理</P>
					</DIV>
				<LI class=ceo5>

					<P class=remark>极客学院作为从andriod开发者社区诞生的在线IT教育产品第一刻考虑的就是开发者的用户体验，以及帮助互联网从业者更高效的学习。我就在极客学院学习微信公众号开发我会到处说么？</P>

					<DIV class=introduction>
						<I class=icon-logo5></I>

						<H4 class=realname>贺嘉</H4>

						<P class=position>腾讯云布道师</P>
					</DIV>
				</LI>
			</UL>
		</DIV>
	</SECTION>
	<SECTION id=part19>

		<DIV class=wrap>

			<H2 class="part-tit white">三重就业保障，确保高薪就业</H2>
			<IMG src="images/part19-1.png"> <A class=zxbtn
				onclick="doyoo.util.openChat('g=10059996');return false;"
				href="javascript:;">咨询老师就业保障</A>
		</DIV>
	</SECTION>
	<SECTION id=part20>

		<DIV class=wrap>

			<H2 class=part-tit>已毕业学员怎么说</H2>

			<UL class=eval-cont>

				<LI class=loyo-link><A
					onclick="doyoo.util.openChat('g=10059996');return false;"
					href="javascript:;"></A><A
					onclick="doyoo.util.openChat('g=10059996');return false;"
					href="javascript:;"></A>
				<LI class=eval>好评&nbsp;31558
				<LI class=eval>中评&nbsp;&nbsp;&nbsp;1011
				<LI class=eval>差评&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;9

				
				<LI class=percent><SPAN id=hc3 class=hc></SPAN>
				<LI class=percent><SPAN id=hc4 class=hc></SPAN>
				<LI class=percent><SPAN id=hc5 class=hc></SPAN>
				<LI class=chart><I class=bar></I>
				<LI class=chart><I class=bar></I>
				<LI class=chart><I class=bar></I></LI>
			</UL>

			<DIV class=swiper-container>

				<DIV class=swiper-wrapper>

					<DIV class=swiper-slide>
						<IMG alt="" src="images/swiper_1.png">
					</DIV>

					<DIV class=swiper-slide>
						<IMG alt="" src="images/swiper_2.png">
					</DIV>

					<DIV class=swiper-slide>
						<IMG alt="" src="images/swiper_3.png">
					</DIV>

					<DIV class=swiper-slide>
						<IMG alt="" src="images/swiper_4.png">
					</DIV>
				</DIV>
			</DIV>

			<DIV class=pagination></DIV>
			<A class="zxbtn diaRegBtn" href="javascript:;">立即报名开启全新实战学习模式</A>
		</DIV>
	</SECTION>
	<SECTION id=part21>

		<DIV class=wrap>

			<H2 class="part-tit white">荣誉源于实力 信赖源自专业</H2>

			<P class="part-tip white">极客学院-IT职业在线教育领先品牌</P>

			<UL class=cf>

				<LI><IMG src="images/part21_1_1.jpg">

					<P>2014年度最具竞争力IT教育品牌</P>
				<LI><IMG src="images/part21_1_2.jpg">

					<P>2014年度最具创新力在线教育品牌</P>
				<LI><IMG src="images/part21_1_3.jpg">

					<P>2015年度竞争力在线教育品牌</P>
				<LI><IMG src="images/part21_1_4.jpg">

					<P>2015年度知名职业教育品牌</P></LI>
			</UL>

			<DL class=cf>

				<DD>
					<IMG src="images/part21_2_1.jpg">

					<P>中国互联网年度最佳产品经理雇主</P>
				<DD>
					<IMG src="images/part21_2_2.jpg">

					<P>2014数字商业创新先锋奖</P>
				<DD>
					<IMG src="images/part21_2_3.jpg">

					<P>2015年度教育类产品及服务奖</P>
				</DD>
			</DL>
		</DIV>
	</SECTION>
	<SECTION id=part22>

		<DIV class=wrap>

			<H2 class=part-tit>媒体报道</H2>
			<IMG src="images/part22-1.jpg">
		</DIV>
	</SECTION>
	<SECTION id=part23>

		<DIV class=wrap>

			<UL class=form-cont>

				<LI class=contact-teah><A
					href="http://jiuye.jikexueyuan.com/enroll/signup?class_id=388&amp;flag=1"
					target=_blank></A>
				<LI class=name><INPUT id=username>
				<LI class=phone><INPUT id=phone>
				<LI class=submit><A id=btnSub href="javascript:;"
					data-position="1"></A><INPUT id=class_id name=class_id value=388
					type=hidden> <INPUT id=class_name name=class_name
					value=Web前端工程师就业班48期1班 type=hidden> <INPUT id=web name=slug
					value=web type=hidden>
				<LI class=get-hc>

					<P>
						已有 <SPAN class=red>9573</SPAN> 人预约
					</P>
				</LI>
			</UL>
		</DIV>
	</SECTION>

	<DIV class=apply-learning>
		<!-- <a href="javascript:;" class="diaRegBtn">

                <i class="icon-apply"></i>

                <i class="apply-radius"></i>

            </a>

             -->
		<A onclick="doyoo.util.openChat('g=10059996');return false;"
			href="javascript:;"><I class=icon-apply></I><I class=apply-radius></I></A>
	</DIV>

	<DIV class="float-nav form">

		<UL>

			<LI class=weight><A
				onclick="doyoo.util.openChat('g=10059996');return false;"
				href="javascript:;">我适合学么 </A></LI>

			<LI><A onclick="doyoo.util.openChat('g=10059996');return false;"
				href="javascript:;">课程安排 </A></LI>

			<LI><A onclick="doyoo.util.openChat('g=10059996');return false;"
				href="javascript:;">就业保障 </A></LI>

			<LI><A onclick="doyoo.util.openChat('g=10059996');return false;"
				href="javascript:;">课程学费 </A></LI>

			<LI><A onclick="doyoo.util.openChat('g=10059996');return false;"
				href="javascript:;">更多问题</A></LI>

			<LI>

				<FORM action="">

					<P class=red>400-678-8266</P>
					<INPUT class=tel placeholder="输入电话号码"> <A id=btnSub02
						class=subphone href="javascript:;" data-position="2"><SPAN
						class=icon-phone></SPAN>免费通话</A>
				</FORM>
			</LI>
		</UL>
	</DIV>
	<FOOTER id=footer>

		<DIV class=wrap>

			<DL>

				<DT>
					<IMG alt="" src="images/logo_jkxy.png">
				<DD>联系电话：400-678-8266
				<DD>公司地址：北京市海淀区上地三街9号金隅嘉华大厦C座1008</DD>
			</DL>

			<P class=copyright>Copyright ? 2013-2017 jikexueyuan.com All
				Rights Reserved. 京ICP备11018032号-8 京公网安备11010802020210</P>
		</DIV>
	</FOOTER>
	<!-- <div id="pop">

        <div class="inner">

            <i class="close"></i>

            <a onclick="doyoo.util.openChat('g=10059996');return false;" href="javascript:;"></a>

        </div>

    </div> -->
	<LINK rel=stylesheet type=text/css href="css/register.css">


	<SCRIPT type=text/javascript src="js/vds.js" async="true"></SCRIPT>



	<SCRIPT type=text/javascript src="js/jquery-2.2.4.min.js"></SCRIPT>



	<SCRIPT type=text/javascript src="js/jquery.animateNumber.min.js"></SCRIPT>



	<SCRIPT type=text/javascript src="js/idangerous.swiper.min.js"></SCRIPT>



	<SCRIPT type=text/javascript src="js/growingio.js"></SCRIPT>



	<SCRIPT type=text/javascript charset=utf-8 src="js/10066807.js"></SCRIPT>



	<DIV id=doyoo_panel></DIV>

	<DIV
		style="POSITION: fixed; WIDTH: 429px; BACKGROUND: url(http://yun-static.soperson.com/131221/../default/images/monitor/m_bg_1.gif?131127) no-repeat; HEIGHT: 196px"
		id=doyoo_monitor>

		<DIV
			style="POSITION: relative; WIDTH: 100%; HEIGHT: 100%; -webkit-transform: translateZ(0px)"
			id=doyoo_mon_innner>

			<DIV style="CURSOR: move" id=doyoo_mon_head>在线客服</DIV>

			<DIV id=doyoo_mon_main>尊敬的客户您好，欢迎光临本公司网站！我是今天的在线值班客服，点击“开始交谈”即可与我对话。</DIV>

			<DIV id=doyoo_mon_foot>
				<A
					style="BACKGROUND-IMAGE: url(http://yun-static.soperson.com/131221/../default/images/monitor/acc_sc.gif?131127)"
					id=doyoo_mon_accept class=doyoo_mon_btn href="javascript:;"></A><A
					style="BACKGROUND-IMAGE: url(http://yun-static.soperson.com/131221/../default/images/monitor/phone_sc.gif?131127); DISPLAY: none"
					id=doyoo_mon_phone class=doyoo_mon_btn href="javascript:;"
					doyoo_old></A>

				<DIV
					style="BACKGROUND-IMAGE: url(http://yun-static.soperson.com/131221/../default/images/monitor/dn_sc.gif?131127)"
					id=doyoo_mon_refuse class=doyoo_mon_btn></DIV>
			</DIV>
		</DIV>

		<DIV id=doyoo_mon_closer></DIV>

		<DIV></DIV>

		<DIV></DIV>
	</DIV>

	<DIV id=talk99_message></DIV>

	<DIV id=doyoo_share>
		<IFRAME id=shareWrapper src="about:blank"></IFRAME>
	</DIV>
	<LINK rel=stylesheet type=text/css href="${ctxStaticTheme }/css/oms.css?170217"></LINK>

	<SCRIPT type=text/javascript charset=utf-8 src="${ctxStaticTheme }/js/oms.js?17021902"></SCRIPT>



	<SCRIPT type=text/javascript src="${ctxStaticTheme }/js/jquery.validate.min.js"></SCRIPT>



	<SCRIPT type=text/javascript src="${ctxStaticTheme }/js/LoginAndRegister.js"></SCRIPT>



	<SCRIPT type=text/javascript src="${ctxStaticTheme }/js/jbase64.js"></SCRIPT>



	<SCRIPT type=text/javascript src="${ctxStaticTheme }/js/setcookie.js"></SCRIPT>



	<SCRIPT type=text/javascript src="${ctxStaticTheme }/js/web.js"></SCRIPT>

</BODY>
</HTML>