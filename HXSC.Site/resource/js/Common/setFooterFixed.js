var footerFixed_offsetTop = 0;
function setfooterFixed(IfOnload,IfOnresize) {
    var footerFixed = document.getElementById("footerFixed");
    if (footerFixed) {
        if (IfOnload) {
            footerFixed_offsetTop =getElementViewTop(footerFixed);
        }
        var height = "innerHeight" in window ? window.innerHeight : document.documentElement.offsetHeight;
//        alert(height);
//        alert(GetPageScroll().Y);
//        alert(footerFixed_offsetTop);
        if ((height + GetPageScroll().Y) >= footerFixed_offsetTop) {
            footerFixed.className = "footerFixed";
        }
        else {
            footerFixed.className = "";
        }
    }
};
var oldFun_OnScroll = window.onscroll;
window.onscroll = function () {
    if (oldFun_OnScroll != null && typeof (oldFun_OnScroll) == "function") {
        oldFun_OnScroll();
    }
    setfooterFixed();
};
var oldFun_OnResize = window.onresize;
window.onresize = function () {
    if (oldFun_OnResize != null && typeof (oldFun_OnResize) == "function") {
        oldFun_OnResize();
    }
    setfooterFixed(false,true);
};
var oldFun_OnLoad = window.onload;
window.onload = function () {
    if (oldFun_OnLoad != null && typeof (oldFun_OnLoad) == "function") {
        oldFun_OnLoad();
    }
    setfooterFixed(true);
};

function GetPageScroll() {
    var x, y;
    if (window.pageYOffset) {
        // all except IE
        y = window.pageYOffset;
        x = window.pageXOffset;
    } else if (document.documentElement
    && document.documentElement.scrollTop) {
        // IE 6 Strict
        y = document.documentElement.scrollTop;
        x = document.documentElement.scrollLeft;
    } else if (document.body) {
        // all other IE
        y = document.body.scrollTop;
        x = document.body.scrollLeft;
    }
    return { X: x, Y: y };
}

function getElementViewTop(element) {
    var actualTop = element.offsetTop;
    var current = element.offsetParent;
    while (current !== null) {
        actualTop += current.offsetTop;
        current = current.offsetParent;
    }
    if (document.compatMode == "BackCompat") {
        var elementScrollTop = document.body.scrollTop;
    } else {
        var elementScrollTop = document.documentElement.scrollTop;
    }
    return actualTop - elementScrollTop;
}