define("common:widget/pager/PagerDemo.js",
function(e, a, n) {
    e("common:widget/pager/jquery.pager.js");
    var o = {
        init: function(e, a, n) {
            o.page(e, a, n)
        },
        page: function(e, a, n) {
            $("#page-nav").pager({
                pagenumber: e,
                pagecount: a,
                totalcount: n,
                buttonClickCallback: o.PageClick
            })
        },
        PageClick: function(e) {
            var a = window.location.pathname;
            document.location.href = a + "?pageNo=" + e
        }
    };
    n.exports = o
});