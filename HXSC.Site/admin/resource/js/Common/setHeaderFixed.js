function setHeaderFixed(ifResize, heightByChildNodes) {
    var main_zone_header = document.getElementById("main_zone_header");
    var headerFixed = document.getElementById("headerFixed");
    if (main_zone_header && (ifResize || (headerFixed && headerFixed.className == ""))) {        
        main_zone_header.style.height = (ifResize && heightByChildNodes && headerFixed.offsetHeight > main_zone_header.offsetHeight ? headerFixed.offsetHeight : main_zone_header.offsetHeight) + "px";
    }

    if (headerFixed && headerFixed.className == "") {
        headerFixed.className = "headerFixed";
    }
};
var oldFun_OnScroll = window.onscroll;
window.onscroll = function () {
    if (oldFun_OnScroll != null && typeof (oldFun_OnScroll) == "function") {
        oldFun_OnScroll();
    }
    setHeaderFixed();
};
var oldFun_OnResize = window.onresize;
window.onresize = function () {
    if (oldFun_OnResize != null && typeof (oldFun_OnResize) == "function") {
        oldFun_OnResize();
    }
    setHeaderFixed(true);
};