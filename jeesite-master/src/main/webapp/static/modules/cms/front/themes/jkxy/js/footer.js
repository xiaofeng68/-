function gotop() {
    $("#gototop");
    $(window).scrollTop() <= 0 && $("#gototop>.top").hide(),
    $("#gototop>.top").bind("click",
    function() {
        return $(window).scrollTop() <= 0 ? !1 : ($("body,html").animate({
            scrollTop: 0
        },
        200), !1)
    }),
    $(window).scroll(function() {
        $(window).scrollTop() > 0 ? $("#gototop>.top").fadeIn() : $("#gototop>.top").fadeOut()
    })
}
$(function() {
    gotop()
});