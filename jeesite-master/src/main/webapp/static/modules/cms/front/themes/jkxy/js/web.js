// 使用了数字滚动插件 调用方式 .animateNumber()

var webPage = {
    lock: true,
    data: {
        booknum: $('#bookNum').text(),
        jobnum: $('#jobNum').text(),
        perarr: [96.87, 3.10, 0.03],
        companys: [3218, 58273],
        getNumber1: $('#monthNums').text(),
        getNumber2: $('#monthAsks').text(),
        offset: {
            offset2: $('#part2').offset().top - 100,
            offset5: $('#part5').offset().top - 200,
            offset7: $('#part7').offset().top - 200,
            offset14: $('#part14').offset().top - 300,
            offset16: $('#part16').offset().top - 300,
            offset17: $('#part17').offset().top - 300,
            offset20: $('#part20').offset().top - 300
        },
        swiper: 0
    },
    init: function() {
        this.eleBind();
        this.discount();
        this.changeNum();
        this.countDown();
        this.courses();
    },
    eleBind: function() {
        $('#playA').on('click', this.videoA);
        $('.play-btn,#playB').on('click', this.videoB);
        $('.courses').on('click', this.changeCourse);
        $('#btnSub').on('click', this.subMsg);
        $('#btnSub02').on('click', this.subMsg);

        $(window).scroll(this.scrollEle);

        $('#gotoTop').on("click", { "id": "pageTop" }, this.gotop);
        $(".kcsz").on("click", { "id": "part9" }, this.gotop);
        $(".szms").on("click", { "id": "part7" }, this.gotop);
        $(".zyfd").on("click", { "id": "part13" }, this.gotop);
        $(".jybz").on("click", { "id": "part19" }, this.gotop);
        $(".xypj").on("click", { "id": "part20" }, this.gotop);
        $(".jump1").on("click", { "id": "part7" }, this.gotop);
        $(".jump2").on("click", { "id": "part9" }, this.gotop);
        $(".jump3").on("click", { "id": "part11" }, this.gotop);
        $(".jump4").on("click", { "id": "part8" }, this.gotop);
        $(".jump5").on("click", { "id": "part10" }, this.gotop);
        $(".jump6").on("click", { "id": "part12" }, this.gotop);

        var _this = this;
        setTimeout(_this.popup, 10000);
        setTimeout(_this.popup, 35000);

        $('.close').on('click', _this.closePop);
    },
    courses: function() {
        var outTimer = setInterval(webPage.swiperCourse, 2000);
        $('.course-sys').hover(function() {
            clearInterval(outTimer);
            hoverTimer = setInterval(webPage.swiperCourse, 99999);
        }, function() {
            clearInterval(hoverTimer);
            outTimer = setInterval(webPage.swiperCourse, 2000);
        })
    },
    gotop: function(e) {
        var id = e.data.id;
        $("html,body").animate({ scrollTop: $("#" + id).offset().top + 10 }, 500);
    },
    swiperCourse: function() {
        var courses = $('.courses');

        $(courses[webPage.data.swiper]).click();
        webPage.data.swiper++;

        if (webPage.data.swiper == 4) {
            webPage.data.swiper = 0
        }

    },
    scrollEle: function() {
        var scrollTop = $(window).scrollTop();
        if (scrollTop > webPage.data.offset.offset2) {
            $('#gotoTop').fadeIn();
        } else {
            $('#gotoTop').fadeOut();
        }
        if (scrollTop > webPage.data.offset.offset5) {
            webPage.numAnimate("#getNumber1",webPage.data.getNumber1);
        }
        if (scrollTop > webPage.data.offset.offset7) {
            webPage.numAnimate("#getNumber2",webPage.data.getNumber2);
        }
        if (scrollTop > webPage.data.offset.offset14) {
            webPage.tlAnimate();
        }
        if (scrollTop > webPage.data.offset.offset16) {
            webPage.clAnimate();
        }
        if (scrollTop > webPage.data.offset.offset17) {
            webPage.companys();
        }
        if (scrollTop > webPage.data.offset.offset20) {
            webPage.aniBar();
        }

    },
    numAnimate: function(ele,num) {
        if ($(ele).hasClass('show')) {
            return false;
        } else {
            $(ele).addClass('show');
            $(ele).animateNumber({
                number: num
            }, 3000)
        }

    },
    countDown: function() {
        $('#jkct').animateNumber({
            number:webPage.data.jobnum
        },3000)
    },
    closePop: function() {
        $('#pop').hide();
    },
    popup: function() {
        $('#pop').fadeIn();
    },
    changeNum: function() {
        var num = $('#upNum').text();
        var txt = $('#upEle').text();
        $('#upNum').text(txt);
        $('#upEle').text(num);
        setTimeout(webPage.changeNum, 4000);
    },
    discount: function() {
        var endTime = Date.parse($('.discount').attr('end-time')); //time end
        var startTime = Date.parse($('.discount').attr('start-time')); //time start
        var leftTime = endTime - startTime; //time left
        webPage.countTime(leftTime);
    },
    countTime: function(t) {
        setInterval(function() {
            if (t >= 0) { //t等于0继续计算
                var d = Math.floor(t / 1000 / 60 / 60 / 24); //days
                var h = Math.floor(t / 1000 / 60 / 60 % 24); //hours
                var m = Math.floor(t / 1000 / 60 % 60); //minutes
                var s = Math.floor(t / 1000 % 60); //seconds
            }
            if (h < 10)
                h = "0" + h;
            if (m < 10)
                m = "0" + m;
            if (s < 10)
                s = "0" + s;

            t -= 1000;

            if (t < 0) {
                location.reload();
            }

            $('#days').html(d);
            $('#hours').html(h);
            $('#mins').html(m);
            $('#seconds').html(s);

        }, 1000)
    },
    videoA: function() {
        var videoA = document.getElementById('videoA'),
            playA = $('#playA');
        playA.css('display', 'none');
        videoA.style.display = 'block';
        videoA.play();
    },
    videoB: function() {
        var videoB = document.getElementById("videoB"),
            playB = $("#playB"),
            playBtn = $('.play-btn');

        playB.css({ "display": "none" });
        playBtn.css({ "display": "none" });
        videoB.style.display = "block";
        videoB.play();
    },
    aniBar: function() {
        var bars = $('.bar');
        if (bars.hasClass('show')) {
            return false;
        } else {
            webPage.swiper();

            var j = 1;
            for (var i = 0; i < bars.length; i++) {
                $(bars[i]).addClass('ani-bar' + j);
                $(bars[i]).addClass('show');
                j++;
            }
            // 百分比计数
            var hc = $('.hc');
            var decimal_places = 2;
            var decimal_factor = decimal_places === 0 ? 1 : Math.pow(10, decimal_places);

            for (var i = 0; i < hc.length; i++) {
                $(hc[i])
                    .animateNumber({
                            number: webPage.data.perarr[i] * decimal_factor,

                            numberStep: function(now, tween) {
                                var floored_number = Math.floor(now) / decimal_factor,
                                    target = $(tween.elem);

                                if (decimal_places > 0) {
                                    // force decimal places even if they are 0
                                    floored_number = floored_number.toFixed(decimal_places);
                                }

                                target.text(floored_number + '%');
                            }
                        },
                        3000
                    );
            }
        }
    },
    changeCourse: function() {
        if (webPage.lock) {
            webPage.lock = false;
            var courseList = $('.courses');
            var courseCont = $('.course-container');
            var clickNum = $(this).attr('data-position');

            webPage.data.swiper = clickNum;

            for (var i = 0; i < courseList.length; i++) {
                $(courseList[i]).removeClass('active');
            }
            for (var i = 0; i < courseCont.length; i++) {
                $(courseCont[i]).hide();
            }
            $(this).addClass('active');
            $(courseCont[clickNum]).show();

            setTimeout('webPage.lock = true', 400);
        }
    },
    tlAnimate: function() {
        var gather = $('.tl-stream');
        if (gather.hasClass('show')) {
            return false;
        } else {
            var time = 0;
            for (var i = 0; i < gather.length; i++) {
                gather[i].className += " " + "show";
                (function(i) {
                    setTimeout(function() { $(gather[i]).fadeIn() }, time)
                })(i);
                time += 500;
            }
        }
    },
    companys: function() {
        var gather = $('.jobs');
        if (gather.hasClass('show')) {
            return false;
        } else {
            for (var i = 0; i < gather.length; i++) {
                $(gather[i]).addClass('show');
                $(gather[i]).animateNumber({
                    number: webPage.data.companys[i]
                }, 3000)
            }
        }
    },
    clAnimate: function() {
        var gather = $('.icons');
        if (gather.hasClass('show')) {
            return false;
        } else {
            var time = 0;
            for (var i = 0; i < gather.length; i++) {
                gather[i].className += " " + "show";
                (function(i) {
                    setTimeout(function() { $(gather[i]).fadeIn() }, time)
                })(i);
                time += 500;
            }
            $('#hc2').animateNumber({
                number: webPage.data.jobnum
            }, 5000)
        }
    },
    swiper: function() {
        var mySwiper = new Swiper('.swiper-container', {
            loop: true,
            autoplay: 3000,
            pagination: '.pagination',
            grabCursor: true,
            paginationClickable: true
        });
    },
    subMsg: function() {
        var _this = $(this);
        var sn = $(_this).attr('data-position');

        if (sn == 1) {
            var tel = $('#phone').val();
        } else {
            var tel = $('.tel').val();
        }

        var username = $("#username").val();
        var data = {
            'uname': $.trim(username),
            'tel': $.trim(tel),
            'class_id': $("#class_id").val(),
            'class_name': $("#class_name").val(),
            'slug': $("#web").val(),
            'source_url': location.href
        }
        console.log(data);
        if ($.trim(tel) == '') {
            alert('请输入您的手机号');
        } else if (webPage.isMobile($.trim(tel)) == false) {
            alert('请输入正确的手机号');
        } else {
            var url = "/newtrain/collectinfo";
            $.ajax({
                type: "post",
                url: url,
                data: data,
                dataType: "json",
                success: function(res) {
                    if (res.status == 1) { //成功
                        alert(res.msg);
                        _this.css('cursor', 'default');
                        _this.off('click', this.subMsg);
                    } else if (res.status == 0) { // 失败
                        alert(res.msg);
                        _this.css('cursor', 'pointer');
                    } else if (res.status == 2) { // 失败
                        alert(res.msg);
                        _this.css('cursor', 'default');
                        _this.off('click', this.subMsg);
                    }
                },
                error: function() {
                    alert('网络出现错误，请刷新重试！');
                    console.log(data)
                }
            });
        }
    },
    isMobile: function(tel) {
        return /^((\(\d{2,3}\))|(\d{3}\-))?(1[34578]\d{9})$/.test(tel);
    }
}

$(function() {
    webPage.init();
})
