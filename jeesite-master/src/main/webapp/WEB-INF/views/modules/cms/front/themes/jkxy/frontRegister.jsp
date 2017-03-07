<%@ page contentType="text/html;charset=UTF-8"%>
<%@ include file="/WEB-INF/views/modules/cms/front/include/taglib.jsp"%>
<!DOCTYPE html>
<html lang="zh-cn">
<head>
	<meta charset="utf-8">
    <meta name="renderer" content="webkit">
    <meta name="viewport" content="width=device-width,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
	<title>${site.name }</title>
	<link rel="stylesheet" type="text/css" href="${ctxStaticTheme }/css/passport.min.css"/>
	<script src="${ctxStaticTheme }/js/jquery.min.js"></script>
	<script src="${ctxStaticTheme }/js/setcookie.js"></script>
	<script src="${ctxStaticTheme }/js/verify.js"></script>
	<script type="text/javascript">
		var passportReg = {
		    pwd: /^.*[A-Za-z0-9_\.-]+.*$/,
		    email: /^[A-Z_a-z0-9-\.]+@([A-Z_a-z0-9-]+\.)+[a-z0-9A-Z]{2,4}$/,
		    phone: /^(13[0-9]|14[5|7]|15[0|1|2|3|5|6|7|8|9]|18[0-9]|17[0-9])\d{8}$/,
		};
		$(document).ready(function(){
			$('.verifyCode').click(function(){
				$(".verifyCode").attr('src', "${pageContext.request.contextPath}/servlet/validateCodeServlet?" + Math.random());
			})
			$("#password").passportPasswordStrong($('#safely'));
		});
		function checkForm(){
			var phoneType = passportReg.phone.test($("#phone").val());
			if(!phoneType){
				alert(passportHint.phone.rules);
				return false;
			}
			return true;
		}
	</script>
</head>
<body>
	<div class="passport-wrapper">
    <header id="header" class="passport-header">
        <div id="logo"><a href="${ctx }${frontPath }" jktag="0001|0.1|91006"><img src="${site.logo }"/></a></div>
    </header>	<!--feg-box-- -->
<div id="container">
    <div class="passport-sign">
        <div class="main-form">
            <h2>新用户注册</h2>
            <p></p>
            <!-- form -->
            <form class="passport-form passport-form-sign" onsubmit="return checkForm()" id="register-form" action="${ctx }${frontPath }/register" method="post">
                <div class="form-item">
                    <div class="form-cont">
                        <input type="text" name="phone" id="phone" class="passport-txt xl w-full" tabindex="1" autocomplete="off" placeholder="请输入手机号" />
                    </div>
                </div>
                <div class="form-item">
                    <div class="form-cont">
                        <input type="password" name="password" id="password" class="passport-txt xl w-full" tabindex="2" autocomplete="off" placeholder="输入6~32位密码" />
                        <ul class="passport-safely" id="safely">
                            <li class="danger">弱</li>
                            <li class="general">中</li>
                            <li class="safe">高</li>
                        </ul>
                    </div>
                </div>
                <div class="form-item form-imgcode">
                    <div class="form-cont">
                        <div class="layout-inner">
                            <input type="text" name="verify" class="passport-txt xl w-lg" tabindex="3" autocomplete="off" placeholder="验证码" />
                        </div>
                        <div class="imgcode">
                            <img src="${pageContext.request.contextPath}/servlet/validateCodeServlet" alt='验证码' class="verifyCode" jktag="0001|0.1|91002">
                            <i class="passport-icon icon-refresh refreshCode" jktag="0001|0.1|91002"></i>
                        </div>
                    </div>
                </div>
                <!-- 
                <div class="form-item form-mcode mb-25">
                    <div class="form-cont">
                        <input type="text" name="verify_code" class="passport-txt xl w-full" tabindex="4" autocomplete="off" placeholder="动态码" />
                        <div class="btn-getcode">
                            <button type="button" class="passport-btn js-getcode" jktag="0001|0.1|91024">获取动态码</button>
                        </div>
						<div class="passport-sms getVoice" style="display: none;">未收到短信？使用<a href="javascript:;" class="js-getvoice" jktag="0001|0.1|91044">语音动态码</a></div>
						<div class="passport-sms reVoice" style="display: none;"><span class="js-revoice"></span>，请注意接听来电</div>
                    </div>
                </div>
                 -->
                <div class="form-item form-treaty">
                    <div class="form-cont">
                        <input type="checkbox" name="treaty" checked="checked" value="treaty"/>
                        <span>同意</span><a href="${ctx }${frontPath }/deal1${urlSuffix}" target="_blank" class="treaty">极客学院用户协议</a>
                    </div>
                </div>
                <div class="form-item">
                    <div class="form-cont">
                        <button type="submit" name="register" id="register" class="passport-btn passport-btn-def xl w-full" tabindex="5" jktag="0001|0.1|91026" href="javascript:;">注册</button>
                    </div>
                </div>
            </form>
            <!-- form end -->
        </div>
        <div class="aside">
            <div class="passport-goto mg-b100">已有帐号 <a href="${ctx }${frontPath }/loginPage${urlSuffix}" tabindex="6" jktag="0001|0.1|91040">直接登录</a></div>
            <div class="passport-third">
                <header class="hd">
                    <div class="layout-inner">
                        <h3>合作方帐号登录</h3>
                    </div>
                </header>
                <div class="links">
                <!-- 
					<a href="/connect/qq" jktag="0001|0.1|91053"><i class="passport-icon icon-tencent"></i></a>
					<a href="/connect/weibo" jktag="0001|0.1|91054"><i class="passport-icon icon-weibo"></i></a>
					<a href="/connect/weixin" jktag="0001|0.1|91055"><i class="passport-icon icon-weixin"></i></a>
					<a href="/connect/eoe" jktag="0001|0.1|91056"><i class="passport-icon icon-eoe"></i></a>
				 -->
                </div>
            </div>
            <div class="passport-ad" id="reg-ad01"></div>
        </div>
    </div>
</div>
</div>
<c:if test="${not empty type }">
<script type="text/javascript">
var type = '${type}';
alert(passportHint.phone[type]);
</script>
</c:if>
</body>
</html>