// sign javascript//获取href？strParame = test  获取href传参的值var getArgs = function (strParame) {    var args = new Object();    var query;    if (arguments.length == 2)        query = arguments[1];    else        query = location.search.substring(1);    var pairs = query.split("&");    for (var i = 0; i < pairs.length; i++) {        var pos = pairs[i].indexOf('=');        if (pos == -1) continue;        var argname = pairs[i].substring(0, pos);        var value = pairs[i].substring(pos + 1);        value = decodeURIComponent(value);        args[argname] = value;    }    return args[strParame];};var SIGN = {    lock: true,    submitLock: true,    total: 60,    oldval: {},    valid: {},    invalid: {},    init: function() {        var self = this;        this.bindEle();        this.otherlogin();        PASSPORT.getImgcode($('.verifyCode'));        $('.verifyCode').click();        $('.passport-txt').passportPlaceholder('placeholder');        this.register('#register-form', '#register');        this.login('#login-form', '#login');        this.fastlogin('#fastlogin-form', '#fastlogin');        PASSPORT.tabs($('#login-tabs'));        //是否到了快速登录页面        if(getArgs("d") == 2){        	$('.tabs>ul>li:eq(1)').click();        }    },    bindEle: function() {        var self = this;        var $regform = $('#register-form');        var $login = $('#login-form');        var $fastlogin = $('#fastlogin-form');        // 刷新图片验证码
        $('.refreshCode, .verifyCode').bind('click', function() {            PASSPORT.getImgcode($('.verifyCode'));        });        // 获取动态码
        $('#register-form .js-getcode').bind('click', function() {            if (self.lock) self.getMcode('#register-form');        });        $('#fastlogin-form .js-getcode').bind('click', function() {            if (self.lock) self.getMcode('#fastlogin-form', {                restype: 5            });        });        $('body').delegate('.passport-txt', 'focus', function() {            PASSPORT.removeHint($(this), self.hintclass());            PASSPORT.removeInputState($(this), self.inputclass());        });        $('body').delegate('#register-form input[name="treaty"]', 'click', function() {            if ($('#register-form input[name="treaty"]').is(':checked')) {                PASSPORT.removeHint($(this), self.hintclass());                PASSPORT.removeInputState($(this), self.inputclass());            }        });        $(document).bind('keyup', function(e) {            if (e.keyCode == 13) {                if ($regform.length) $regform.find('#register').click();                if ($login.length && $login.is(':visible')) $login.find('#login').click();                if ($fastlogin.length && $fastlogin.is(':visible')) $fastlogin.find('#fastlogin').click();            }        });    },    hintclass: function() {        return PASSPORT.toHintClass('passport-note', ['passport-error-text']);    },    inputclass: function() {        return PASSPORT.toStateClass(['passport-error-input']);    },    hintEvent: function(elem, errhint) {        PASSPORT.insetHint(elem, errhint, this.hintclass());        PASSPORT.removeInputState(elem, this.inputclass());        PASSPORT.addInputState(elem, this.inputclass());    },    hintArgs: {        tag: 'div',        hint: 'passport-note',        state: 'passport-error-text'    },    submit: function(param) {        var self = this;        var sets = $.extend({            'form': null,            'button': null,            'text': null,            'error': null,            'success': null        }, param);        var oldtext = sets.button.val();        if (!self.submitLock) return false;        self.submitLock = false;        sets.button.val(sets.text);                $.post(sets.form.attr('action') + '?is_ajax=1' , sets.form.serialize(), function(res) {            if (res.status != 1) {                PASSPORT.msgBox(0, res.msg);                self.submitLock = true;                sets.form.find('.verifyCode').click();                sets.button.val(oldtext);                if (sets.error) sets.error(res);            } else {                if (sets.success) sets.success(res);                document.location.href = res.jumpUrl;            }        }, 'json');    },    resetData: function(mode) {        this.oldval[mode] = {};        this.valid[mode] = {};        this.invalid[mode] = {};    },    required: function(param) {        var self = this;        var sets = $.extend({            'elem': null,            'val': null,            'hint': null,            'mode': null,            'error': null,            'success': null,            'rules': null,            'rangelength': null,        }, param);        var name = sets.elem.attr('name');        var type = sets.elem.attr('type');        var errhint;        if (type == 'text' || type == 'password' || type == 'textarea') {            if (!sets.val) {                self.hintArgs.text = sets.hint;                errhint = PASSPORT.createHint(self.hintArgs, 'span');                self.hintEvent(sets.elem, errhint);                self.oldval[sets.mode][name] = '';                if (sets.error) sets.error();                return false;            } else {                if (sets.success) sets.success();            }        } else if (type == 'checkbox' || type == 'radio') {            if (!sets.elem.is(':checked')) {                self.hintArgs.text = sets.hint;                errhint = PASSPORT.createHint(self.hintArgs, 'span');                self.hintEvent(sets.elem, errhint);                self.oldval[sets.mode][name] = '';                if (sets.error) sets.error();                return false;            } else {                if (sets.success) sets.success();            }        }        if (sets.rules && !self.rules(sets.rules)) return false;        if (sets.rangelength && !self.rangelength(sets.rangelength)) return false;        return true;    },
    rules: function(param) {
        var self = this;
        var sets = $.extend({
            'elem': null,
            'val': null,
            'rules': null,
            'hint': null,
            'error': null,
            'success': null
        }, param);
        var rules = sets.rules.test(sets.val);
        var errhint;
        if (!rules) {
            self.hintArgs.text = sets.hint;
            errhint = PASSPORT.createHint(self.hintArgs, 'span');
            self.hintEvent(sets.elem, errhint);
            if (sets.error) sets.error();
            return false;
        } else {
            if (sets.success) sets.success();
        }
        return true;
    },
    rangelength: function(param) {
        var self = this;
        var sets = $.extend({
            'elem': null,
            'val': null,
            'rangelength': null,
            'hint': null
        }, param);
        var errhint, minlength = sets.rangelength[0], maxlength = sets.rangelength[1];
        if (sets.val.length < minlength || sets.val.length > maxlength) {
            self.hintArgs.text = sets.hint;
            errhint = PASSPORT.createHint(self.hintArgs, 'span');
            self.hintEvent(sets.elem, errhint);
            return false;
        }
        return true;
    },
    remote: function(args, settings) {
        var self = this;
        var sets = $.extend({
            'context': null,
            'mode': null,
            'elem': settings.elem,
            'hint': settings.hint,
            'reverse': false,
            'error': null,
            'success': null,
        }, settings);
        var name = sets.elem.attr('name');
        var status, errhint;
        var param = $.extend(true, {
            type: 'post',
            dataType: 'json',
            context: sets.context,
            error: function() {
                PASSPORT.msgBox(0, '远程：网络出错了，过会再试');
            },
            success: function(res) {
                status = sets.reverse ? 0 : 1;
                if (res.status !== status) {
                    self.hintArgs.text = sets.hint;
                    errhint = PASSPORT.createHint(self.hintArgs, 'span');
                    self.hintEvent(sets.elem, errhint);
                    self.invalid[sets.mode][name] = true;
                    delete self.valid[sets.mode][name];
                    if (sets.error) return sets.error(res);
                } else {
                    self.valid[sets.mode][name] = true;
                    delete self.invalid[sets.mode][name];
                    if (sets.success) return sets.success(res);
                }
            }
        }, args);
        return param;
    },
    getVoice: function(form, param) {
        var self = this;
        self.lock = true;

        var sets = $.extend({
            restype: 4,
            error: null,
            success: null
        }, param);
        // 获取语音动态码
        $(form + ' .js-getvoice').unbind('click');
        $(form + ' .js-getvoice').removeClass('disabled');
        $(form + ' .js-getvoice').bind('click', function() {
            var $this = $(this);
            var $form = $(form);
            var $getBtn = $form.find('.js-getcode');
            var $phone = $form.find('input[name="phone"]');
            var $verify = $form.find('input[name="verify"]');
            var phoneNum = $.trim($phone.val());
            var verifyCode = $.trim($verify.val());
            var $getVoice = $this.parent('.getVoice');
            var $reVoice = $getVoice.siblings('.reVoice');
            var $revoice = $reVoice.find('.js-revoice');
            var data = {
                phone: phoneNum,
                verify: verifyCode,
                type: sets.restype,
            };
            var timestart = function() {
                $getVoice.hide();
                $reVoice.show();
                $getBtn.prop('disabled', true);
            };
            var timeend = function() {
                $getVoice.show();
                $reVoice.hide();
                $getBtn.removeAttr('disabled');
                self.lock = true;
            };
            $.ajax({
                type: 'post',
                url: passportUrl + '/sso/voice?is_ajax=1',
                dataType: 'json',
                data: data,
                error: function() {
                    PASSPORT.msgBox(0, '语音：网络出错了，过会再试');
                    $revoice.passportSetBtnTimer({
                        time: 0,
                        timerstart: function() {
                            timestart();
                        },
                        timerend: function() {
                            timeend();
                        }
                    });
                },
                success: function(res) {
                    if (res.status == 1) {
                        $revoice.passportSetBtnTimer({
                            time: self.total,
                            timerstart: function() {
                                timestart();
                            },
                            timerend: function() {
                                timeend();
                            }
                        });
                    } else {
                        PASSPORT.msgBox(0, res.msg);
                        $revoice.passportSetBtnTimer({
                            time: 0,
                            timerstart: function() {
                               timestart();
                            },
                            timerend: function() {
                                timeend();
                            }
                        });
                    }
                },
            });
        });
    },
    getMcode: function(form, param) {        var self = this;        self.lock = false;        var sets = $.extend({            'restype': 4,            'phoneError': null,            'verifyError': null        }, param);        var $this = $(this);        var $form = $(form);        var $getBtn = $form.find('.js-getcode');        var $phone = $form.find('input[name="phone"]');        var $verify = $form.find('input[name="verify"]');        var phoneNum = $.trim($phone.val());        var verifyCode = $.trim($verify.val());        var phoneType = passportReg.phone.test(phoneNum);        self.hintArgs.text = passportHint.phone.required;        var errhint = PASSPORT.createHint(self.hintArgs, 'span');        if (!phoneNum) {            self.hintEvent($phone, errhint);            self.lock = true;        } else {            self.hintArgs.text = passportHint.phone.rules;            errhint = PASSPORT.createHint(self.hintArgs, 'span');            if (!phoneType) {                self.hintEvent($phone, errhint);                self.lock = true;            }        }        self.hintArgs.text = passportHint.verify.required;        errhint = PASSPORT.createHint(self.hintArgs, 'span');        if (!verifyCode) {            self.hintEvent($verify, errhint);        }        if (!phoneNum || !phoneType || !verifyCode) {            self.lock = true;            return false;        }        if (sets.restype == 4) {            $.ajax({                type: 'post',                url: passportUrl + '/check/phone?is_ajax=1',                data: {phone: phoneNum},                dataType: 'json',                error: function() {                    PASSPORT.msgBox(0, '手机：网络出错了，过会再试');                    self.lock = true;                },                success: function(res) {                    if (res.status == 1) {                        $.ajax({                            type: 'post',                            url: passportUrl + '/servlet/validateCodeServlet?is_ajax=1',                            data: {verify: verifyCode},                            dataType: 'json',                            error: function() {                                PASSPORT.msgBox(0, '验证：网络出错了，过会再试');                                $getBtn.passportSetBtnTimer({                                    time: 0,                                    callback: function() {                                        self.lock = true;                                    }                                });                            },                            success: function(res) {
                                if (res.status == 0) {
                                    // 创建提示
                                    self.hintArgs.text = '验证码错误';
                                    var ajaxhint = PASSPORT.createHint(self.hintArgs, 'span');
                                    self.hintEvent($verify, ajaxhint);
                                    self.lock = true;
                                    if (sets.verifyError) sets.verifyError(res);
                                    return false;
                                }

                                $getBtn.addClass('passport-btn-def').text('短信发送中');

                                var data = {
                                    phone: phoneNum,
                                    verify: verifyCode,
                                    type: 4,
                                };
                                $.ajax({
                                    type: "post",
                                    url: passportUrl + '/sso/sms?is_ajax=1',
                                    data: data,
                                    dataType: 'json',
                                    error: function() {
                                        PASSPORT.msgBox(0, '短信：网络出错了，过会再试');
                                        $getBtn.passportSetBtnTimer({
                                            time: 0,
                                            timerstart: function(elem) {
                                                $form.find('.js-getvoice').addClass('disabled').unbind('click');
                                                elem.removeClass('passport-btn-def');
                                            },
                                            callback: function() {
                                                self.lock = true;
                                                // 获取语音动态码
                                                self.getVoice(form, {restype: 4});
                                            }
                                        });
                                    },
                                    success: function(res) {
                                        if (res.status == 1) {
                                            $getBtn.passportSetBtnTimer({
                                                time: self.total,
                                                timerstart: function(elem) {
                                                    $form.find('.js-getvoice').addClass('disabled').unbind('click');
                                                    elem.removeClass('passport-btn-def');
                                                },
                                                callback: function() {
                                                    self.lock = true;
                                                    $form.find('.getVoice').show();
                                                    // 获取语音动态码
                                                    self.getVoice(form, {restype: 4});
                                                },
                                            });
                                        } else {
                                            PASSPORT.msgBox(0, res.msg);
                                            $('.verifyCode').click();
                                            $getBtn.passportSetBtnTimer({
                                                time: 0,
                                                timerstart: function(elem) {
                                                    $form.find('.js-getvoice').addClass('disabled').unbind('click');
                                                    elem.removeClass('passport-btn-def');
                                                },
                                                callback: function() {
                                                    // 获取语音动态码
                                                    self.lock = true;
                                                    self.getVoice(form, {restype: 4});
                                                }
                                            });
                                        }
                                    },
                                });
                            }
                        });
                    } else {
                        self.hintArgs.text = passportHint.phone.remote;
                        errhint = PASSPORT.createHint(self.hintArgs, 'span');
                        self.hintEvent($phone, errhint);
                        self.lock = true;
                        if (sets.phoneError) sets.phoneError(res);
                    }
                }
            });
        } else if (sets.restype == 5) {
            $.ajax({
                type: 'post',
                url: passportUrl + '/servlet/validateCodeServlet?is_ajax=1',
                data: {
                    verify: verifyCode
                },
                dataType: 'json',
                error: function() {
                    PASSPORT.msgBox(0, '验证：网络出错了，过会再试！');
                    $getBtn.passportSetBtnTimer({
                        time: 0,
                        callback: function() {
                            self.lock = true;
                        }
                    });
                },
                success: function(res) {
                    if (res.status == 0) {
                        // 创建提示
                        self.hintArgs.text = '验证码错误';
                        var ajaxhint = PASSPORT.createHint(self.hintArgs, 'span');
                        self.hintEvent($verify, ajaxhint);
                        self.lock = true;
                        return false;
                    }

                    $getBtn.addClass('passport-btn-def').text('短信发送中');

                    var data = {
                        phone: phoneNum,
                        verify: verifyCode,
                        type: 5,
                    };
                    $.ajax({
                        type: "post",
                        url: passportUrl + '/sso/sms?is_ajax=1',
                        data: data,
                        dataType: 'json',
                        error: function() {
                            PASSPORT.msgBox(0, '短信：网络出错了，过会再试！');
                            $getBtn.passportSetBtnTimer({
                                time: 0,
                                timerstart: function(elem) {
                                    $form.find('.js-getvoice').addClass('disabled').unbind('click');
                                    elem.removeClass('passport-btn-def');
                                },
                                callback: function() {
                                    self.lock = true;
                                    // 获取语音动态码
                                    self.getVoice(form, {restype: 5});
                                }
                            });
                        },
                        success: function(res) {
                            if (res.status == 1) {
                                $getBtn.passportSetBtnTimer({
                                    time: self.total,
                                    timerstart: function(elem) {
                                        $form.find('.js-getvoice').addClass('disabled').unbind('click');
                                        elem.removeClass('passport-btn-def');
                                    },
                                    callback: function() {
                                        self.lock = true;
                                        $form.find('.getVoice').show();
                                        // 获取语音动态码
                                        self.getVoice(form, {restype: 5});
                                    },
                                });
                            } else {
                                PASSPORT.msgBox(0, res.msg);
                                $('.verifyCode').click();
                                $getBtn.passportSetBtnTimer({
                                    time: 0,
                                    timerstart: function(elem) {
                                        $form.find('.js-getvoice').addClass('disabled').unbind('click');
                                        elem.removeClass('passport-btn-def');
                                    },
                                    callback: function() {
                                        // 获取语音动态码
                                        self.lock = true;
                                        self.getVoice(form, {restype: 5});
                                    }
                                });
                            }
                        },
                    });
                }
            });

        }

       

    },
    register: function(form, button) {
        if (!$(form).length) return;
        var self = this;
        var $form = $(form);
        var $phone = $form.find('input[name="phone"]');
        var $pwd = $form.find('input[name="password"]');
        var $verify = $form.find('input[name="verify"]');
        var $mcode = $form.find('input[name="verify_code"]');
        var $treaty = $form.find('input[name="treaty"]');
        var $submit = $form.find(button);
        self.oldval.register = {};
        self.valid.register = {};
        self.invalid.register = {};
        // 密码强度验证
        $pwd.passportPasswordStrong($('#safely'));

        $phone.bind('blur', function() {
        	
            var $this = $(this);
            var name = $this.attr('name');
            var val = $.trim($this.val());
            var check = self.required({
                elem: $this,
                val: val,
                hint: passportHint.phone.required,
                mode: 'register',
                error: function() {
                    if(typeof stat != 'undefined') stat.efunc({po:91046});
                },
                rules: {
                    elem: $this,
                    val: val,
                    rules: passportReg.phone,
                    hint: passportHint.phone.rules,
                    error: function() {
                        if (typeof stat != 'undefined') stat.efunc({po: 91047});
                    },
                    success: function () {
                        if (typeof stat != 'undefined') stat.efunc({po: 91090});
                         
                    }
                }
            });

            if (check) {
                if (self.oldval.register[name] === val && self.valid.register[name]) return false;
                if (self.oldval.register[name] === val && self.invalid.register[name]) {
                    self.hintArgs.text = premote;
                    var errhint = PASSPORT.createHint(self.hintArgs, 'span');
                    self.hintEvent($this, errhint);
                    return false;
                }
                self.oldval.register[name] = val;
                $.ajax(self.remote({
                    type: 'post',
                    url: passportUrl + '/check/phone?is_ajax=1',
                    dataType: 'json',
                    data: {phone: val}
                }, {
                    context: $form,
                    mode: 'register',
                    elem: $this,
                    hint: passportHint.phone.remote,
                    error: function() {
                        if(typeof stat != 'undefined') stat.efunc({po:91048});
                    }
                }));
            }
        });
        $pwd.bind('blur', function() {
            var $this = $(this);
            var name = $this.attr('name');
            var val = $.trim($this.val());
            var check = self.required({
                elem:$this,
                val:val,
                hint:passportHint.pwd.required,
                mode:'register',
                success: function() {
                    var $safely = $form.find('#safely');
                    if ($safely.hasClass('safely-danger')) {
                        if(typeof stat != 'undefined') stat.efunc({po:91049});
                    } else if ($safely.hasClass('safely-general')) {
                        if(typeof stat != 'undefined') stat.efunc({po:91050});
                    } else if ($safely.hasClass('safely-safe')) {
                        if(typeof stat != 'undefined') stat.efunc({po:91051});
                    }
                    
                },
                error: function () {
                    if(typeof stat != 'undefined') stat.efunc({po:91096});
                },
                rangelength: {
                    elem: $this,
                    val: val,
                    rangelength: [6, 32],
                    hint: passportHint.pwd.rangelength
                }
            });
        });
        $verify.bind('blur', function() {
            var $this = $(this);
            var name = $this.attr('name');
            var val = $.trim($this.val());
            var check = self.required({
                elem:$this,
                val:val,
                hint:passportHint.verify.required,
                mode:'register',
                error: function () {
                    if(typeof stat != 'undefined') stat.efunc({po:91097});
                }
            });
            if (check) {
                if (self.oldval.register[name] === val && self.valid.register[name]) return false;
                if (self.oldval.register[name] === val && self.invalid.register[name]) {
                    self.hintArgs.text = passportHint.verify.remote;
                    var errhint = PASSPORT.createHint(self.hintArgs, 'span');
                    self.hintEvent($this, errhint);
                    return false;
                }
                self.oldval.register[name] = val;
                $.ajax(self.remote({
                    type: 'post',
                    url: passportUrl + '/servlet/validateCodeServlet?is_ajax=1',
                    dataType: 'json',
                    data: {verify: val}
                }, {
                    centext: $form,
                    mode: 'register',
                    elem: $this,
                    hint: passportHint.verify.remote,
                    error: function() {
                        if(typeof stat != 'undefined') stat.efunc({po:91022});
                        $form.find('.verifyCode').click();
                    },
                    success: function () {
                        if(typeof stat != 'undefined') stat.efunc({po:91094});
                        
                    }
                }));
            }
        });
        $mcode.bind('blur', function() {
            var $this = $(this);
            var name = $this.attr('name');
            var val = $.trim($this.val());
            var check = self.required({
                elem:$this,
                val:val,
                hint:passportHint.mobile.required,
                mode:'register',
                error: function () {
                    if(typeof stat != 'undefined') stat.efunc({po:91098});
                }
            });
        });
        $treaty.bind('click', function() {
            var $this = $(this);
            var name = $this.attr('name');
            var val = $.trim($this.val());
            var check = self.required({
                elem:$this,
                val:val,
                hint:passportHint.treaty.required,
                mode:'register'
            });
        });
        $submit.bind('click', function() {
            var phoneVal = $.trim($phone.val());
            var phoneCheck = self.required({
                elem:$phone,
                val:phoneVal,
                hint:passportHint.phone.required,
                mode:'register',
                error: function() {
                    if(typeof stat != 'undefined') stat.efunc({po:91046});
                },
                rules: {
                    elem:$phone,
                    val:phoneVal,
                    rules:passportReg.phone,
                    hint:passportHint.phone.rules,
                    error: function() {
                        if(typeof stat != 'undefined') stat.efunc({po:91047});
                    }
                }
            });
            var pwdVal = $.trim($pwd.val());
            var pwdCheck = self.required({
                elem:$pwd,
                val:pwdVal,
                hint:passportHint.pwd.required,
                mode:'register',
                rangelength: {
                    elem: $pwd,
                    val: pwdVal,
                    rangelength: [6, 32],
                    hint: passportHint.pwd.rangelength
                }
            });
            var verifyVal = $.trim($verify.val());
            var verifyCheck = self.required({
                elem:$verify,
                val:verifyVal,
                hint:passportHint.verify.required,
                mode:'register'
            });
            var mcodeVal = $.trim($mcode.val());
            var mcodeCheck = self.required({
                elem:$mcode,
                val:mcodeVal,
                hint:passportHint.mobile.required,
                mode:'register'
            });
            var treatyVal = $.trim($treaty.val());
            var treatyCheck = self.required({
                elem:$treaty,
                val:treatyVal,
                hint:passportHint.treaty.required,
                mode:'register'
            });

            if (phoneCheck && pwdCheck && verifyCheck && mcodeCheck && treatyCheck) {
                 $.ajax(self.remote({
                    type: 'post',
                    url: passportUrl + '/check/phone?is_ajax=1',
                    dataType: 'json',
                    data: {phone: phoneVal}
                }, {
                    context: $form,
                    mode: 'register',
                    elem: $phone,
                    hint: passportHint.phone.remote,
                    error: function() {
                        if(typeof stat != 'undefined') stat.efunc({po:91048});
                    },
                    success: function() {
                        $.ajax(self.remote({
                                type: 'post',
                                url: passportUrl + '/servlet/validateCodeServlet?is_ajax=1',
                                dataType: 'json',
                                data: {verify: verifyVal}
                            }, {
                                context: $form,
                                mode: 'register',
                                elem: $verify,
                                hint: passportHint.verify.remote,
                                error: function() {
                                    if(typeof stat != 'undefined') stat.efunc({po:91022});
                                },
                                success: function() {
                                    self.resetData('register');
                                    self.submit({
                                        form: $form,
                                        button: $submit,
                                        text: '注册中',
                                        error: function(res) {
                                            if (res.msg == '手机验证码错误或过期') {
                                                if(typeof stat != 'undefined') stat.efunc({po:91025});
                                            }
                                        },
                                        success: function() {
                                            if (typeof stat != 'undefined') stat.efunc({po:91052});
                                            
                                        }
                                    });
                                }
                            })
                        );
                    }
                }));
            }
        });
    },
    login: function(form, button) {        if (!$(form).length) return;        var self = this;        var $form = $(form);        var $uname = $form.find('input[name="uname"]');        var $pwd = $form.find('input[name="password"]');        var $verify = $form.find('input[name="verify"]');        var $expire = $form.find('input[name="expire"]');        var $submit = $form.find(button);        var day = 7;        self.oldval.login = {};        self.valid.login = {};        self.invalid.login = {};        $('body').delegate(form + ' input[name="expire"]', 'click', function() {            if ($expire.prop('checked')) {                day = 7;            } else {                day = 0;            }            $('#expire').val(day);        });        $uname.bind('blur', function() {            var $this = $(this);            var name = $this.attr('name');            var val = $.trim($this.val());            var check = self.required({                elem:$this,                val:val,                hint:passportHint.uname.required,                mode:'login',                error: function() {                    if(typeof stat != 'undefined') stat.efunc({po:91062});                }            });        });        $pwd.bind('blur', function() {            var $this = $(this);            var name = $this.attr('name');            var val = $.trim($this.val());            var check = self.required({                elem:$this,                val:val,                hint:passportHint.pwd.required,                mode:'login',                error: function() {                    if(typeof stat != 'undefined') stat.efunc({po:91063});                }            });        });        $verify.bind('blur', function() {            var $this = $(this);            var name = $this.attr('name');            var val = $.trim($this.val());            var check = self.required({                elem:$this,                val:val,                hint:passportHint.verify.required,                mode:'login',
                error: function() {
                    if(typeof stat != 'undefined') stat.efunc({po:91064});
                }
            });
            if (check) {
                if (self.oldval.login[name] === val && self.valid.login[name]) return false;
                if (self.oldval.login[name] === val && self.invalid.login[name]) {
                    self.hintArgs.text = passportHint.verify.remote;
                    var errhint = PASSPORT.createHint(self.hintArgs, 'span');
                    self.hintEvent($this, errhint);
                    return false;
                }
                self.oldval.login[name] = val;
                $.ajax(self.remote({
                    type: 'post',
                    url: passportUrl + '/servlet/validateCodeServlet?is_ajax=1',
                    dataType: 'json',
                    data: {verify: val}
                }, {
                    centext: $form,
                    mode: 'login',
                    elem: $this,
                    hint: passportHint.verify.remote,
                    error: function() {
                        if(typeof stat != 'undefined') stat.efunc({po:91065});
                        $form.find('.verifyCode').click();
                    },
                    success: function () {
                        if(typeof stat != 'undefined') stat.efunc({po:91093});
                    }
                }));
            }
        });
        $submit.bind('click', function() {
            var $this = $(this);
            var unameVal = $.trim($uname.val());
            var unameCheck = self.required({
                elem:$uname,
                val:unameVal,
                hint:passportHint.uname.required,
                mode:'login',
                error: function() {
                    if(typeof stat != 'undefined') stat.efunc({po:91062});
                }
            });
            var pwdVal = $.trim($pwd.val());
            var pwdCheck = self.required({
                elem:$pwd,
                val:pwdVal,
                hint:passportHint.pwd.required,
                mode:'login',
                error: function() {
                    if(typeof stat != 'undefined') stat.efunc({po:91063});
                }
            });
            var verifyVal = $.trim($verify.val());
            var verifyCheck = self.required({
                elem:$verify,
                val:verifyVal,
                hint:passportHint.verify.required,
                mode:'login',
                error: function() {
                    if(typeof stat != 'undefined') stat.efunc({po:91064});
                }
            });

            if (unameCheck && pwdCheck && verifyCheck) {
               $.ajax(self.remote({
                    type: 'post',
                    url: passportUrl + '/servlet/validateCodeServlet?is_ajax=1',
                    dataType: 'json',
                    data: {verify: verifyVal}
                }, {
                    centext: $form,
                    mode: 'login',
                    elem: $verify,
                    hint: passportHint.verify.remote,
                    error: function() {
                        if(typeof stat != 'undefined') stat.efunc({po:91065});
                        $form.find('.verifyCode').click();
                    },
                    success: function() {
                        self.resetData('login');
                        self.submit({
                            form: $form,
                            button: $submit,
                            text: '登录中',
                            success: function() {
                                if (typeof stat != 'undefined') stat.efunc({po:91066});
                            }
                        });
                    }
                }));
            }
        });
    },
    fastlogin: function(form, button) {        if (!$(form).length) return;        var self = this;        var $form = $(form);        var $phone = $form.find('input[name="phone"]');        var $verify = $form.find('input[name="verify"]');        var $mcode = $form.find('input[name="verify_code"]');        var $hold = $form.find('#remember');        var $submit = $form.find(button);        var phone = PASSPORT.getCookie('hold_phone', $phone);        self.oldval.fastlogin = {};        self.valid.fastlogin = {};        self.invalid.fastlogin = {};        if (phone) $hold.prop('checked', true);        $phone.bind('blur', function() {            var $this = $(this);            var name = $this.attr('name');            var val = $.trim($this.val());            var check = self.required({                elem:$this,                val:val,                hint:passportHint.phone.required,                mode:'fastlogin',                error: function() {                    if(typeof stat != 'undefined') stat.efunc({po:91083});                },                rules: {                    elem: $this,                    val: val,                    rules: passportReg.phone,                    hint: passportHint.phone.rules,                    error: function() {                        if (typeof stat != 'undefined') stat.efunc({                            po: 91084                        });                    },                    success: function () {                        if(typeof stat != 'undefined') stat.efunc({po:91092});                    }                }            });        });        $verify.bind('blur', function() {            var $this = $(this);            var name = $this.attr('name');            var val = $.trim($this.val());            var check = self.required({                elem:$this,                val:val,                hint:passportHint.verify.required,                mode:'fastlogin',                error: function() {                    if(typeof stat != 'undefined') stat.efunc({po:91085});                }            });            if (check) {                if (self.oldval.fastlogin[name] === val && self.valid.fastlogin[name]) return false;                if (self.oldval.fastlogin[name] === val && self.invalid.fastlogin[name]) {                    self.hintArgs.text = passportHint.verify.remote;                    var errhint = PASSPORT.createHint(self.hintArgs, 'span');                    self.hintEvent($this, errhint);                    return false;                }                self.oldval.fastlogin[name] = val;                $.ajax(self.remote({                    type: 'post',                    url: passportUrl + '/servlet/validateCodeServlet?is_ajax=1',                    dataType: 'json',                    data: {verify: val}                }, {                    centext: $form,                    mode: 'fastlogin',                    elem: $this,                    hint: passportHint.verify.remote,                    error: function() {                        if(typeof stat != 'undefined') stat.efunc({po:91086});                        $form.find('.verifyCode').click();                    },                    success: function () {                        if(typeof stat != 'undefined') stat.efunc({po:91093});                    }                }));            }        });        $mcode.bind('blur', function() {            var $this = $(this);            var name = $this.attr('name');            var val = $.trim($this.val());            var check = self.required({                elem:$this,                val:val,                hint:passportHint.mobile.required,                mode:'fastlogin',                error: function() {                    if(typeof stat != 'undefined') stat.efunc({po:91087});                }            });        });        $submit.bind('click', function() {            var $this = $(this);            var phoneVal = $.trim($phone.val());            var phoneCheck = self.required({                elem:$phone,                val:phoneVal,                hint:passportHint.phone.required,                mode:'fastlogin',                error: function() {                    if(typeof stat != 'undefined') stat.efunc({po:91083});                },                rules: {                    elem: $phone,                    val: phoneVal,                    rules: passportReg.phone,                    hint: passportHint.phone.rules,                    error: function() {                        if (typeof stat != 'undefined') stat.efunc({                            po: 91084                        });                    }                }            });            var verifyVal = $.trim($verify.val());            var verifyCheck = self.required({                elem:$verify,                val:verifyVal,                hint:passportHint.verify.required,                mode:'fastlogin',                error: function() {                    if(typeof stat != 'undefined') stat.efunc({po:91085});                }            });            var mcodeVal = $.trim($mcode.val());            var mcodeCheck = self.required({                elem:$mcode,                val:mcodeVal,                hint:passportHint.mobile.required,                mode:'fastlogin',                error: function() {                    if(typeof stat != 'undefined') stat.efunc({po:91087});                }            });            if (phoneCheck && verifyCheck && mcodeCheck) {               $.ajax(self.remote({                    type: 'post',                    url: passportUrl + '/servlet/validateCodeServlet?is_ajax=1',                    dataType: 'json',                    data: {verify: verifyVal}                }, {                    centext: $form,                    mode: 'fastlogin',                    elem: $verify,                    hint: passportHint.verify.remote,                    error: function() {                        if(typeof stat != 'undefined') stat.efunc({po:91086});                        $form.find('.verifyCode').click();                    },                    success: function() {                        self.resetData('fastlogin');                        if ($hold.prop('checked')) {                            PASSPORT.setCookie('hold_phone', $phone.val(), 7);                        } else {                            PASSPORT.setCookie('hold_phone', '', 7);                        }                        self.submit({                            form: $form,                            button: $submit,                            text: '登录中',                            success: function() {                                if (typeof stat != 'undefined') stat.efunc({po:91066});                            }                        });                    }                }));            }        });    }};$(function() {    SIGN.init();})