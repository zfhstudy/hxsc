/**
* Loading.js
* @author zfhstudy@163.com
*/
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

function existTransparentBox() {
    var tb = document.getElementById('TransparentBox');
    return tb != null;
}

function initTransparentBox() {
    var scriptSrc = document.getElementById("script_loading");
    if (scriptSrc == null) {
        alert("Error:Can not find Loading's Javascript reference!");
        return false;
    }
    var src = scriptSrc.src.substring(0, scriptSrc.src.lastIndexOf('/') + 1);

    var isIE = ! +'\v1';
    var IE6 = isIE && /MSIE (\d)\./.test(navigator.userAgent) && parseInt(RegExp.$1) < 7;

    var div = document.createElement('div');
    div.id = "TransparentBox";
    div.innerHTML = [
	"<iframe " + (IE6 ? "" : ("allowTransparency='true'")) + " class='TransparentLayout' src='" + src + "transparent.htm' frameborder='0' style='height:" + window.screen.height + "px;width:" + window.screen.width + "px;'></iframe>",
	"<div class='TransparentBoxContent'><table style='width:100%;height:100%;' border='0' align='center' cellpadding='0' cellspacing='1'><tr><td valign='middle' align='center' nowrap='nowrap'><img src='" + src + "loading.gif' border='0' /></td><td valign='middle' align='center' nowrap='nowrap'><span style='font-family:Arial;font-size:16px;padding-top:15px; color:#7c7c7c;font-weight:bold;'>Loading . . .</span></td></tr></table></div>"].join('');
    document.body.appendChild(div);
    return true;
}

var bodyPosition4TransparentBox = null;
var htmlOverflow4TransparentBox = null;
function showTransparentBox(IsShowContent) {
    if (!existTransparentBox()) {
        if (!initTransparentBox()) { return false; }
    }
    htmlOverflow4TransparentBox = document.getElementsByTagName("html")[0].style.overflow;
    document.getElementsByTagName("html")[0].style.overflow = "hidden";
    bodyPosition4TransparentBox = document.body.style.position;
    document.body.style.position = "static";
    if (existTransparentBox()) {
        document.getElementById('TransparentBox').style.display = 'block';
        if (!!IsShowContent) {
            showTransparentBoxContent();
        }
        else {
            hideTransparentBoxContent();
        } 
    }
}
function hideTransparentBox() {
    document.getElementsByTagName("html")[0].style.overflow = htmlOverflow4TransparentBox;
    document.body.style.position = bodyPosition4TransparentBox;
    if (existTransparentBox()) {
        document.getElementById('TransparentBox').style.display = 'none';
    }
}
function showTransparentBoxContent() {
    if (existTransparentBox())
        document.getElementById('TransparentBox').className = "ShowAllTransparentBoxLayoutItem";
}
function hideTransparentBoxContent() {
    if (existTransparentBox())
        document.getElementById('TransparentBox').className = "ShowTransparentBoxLayout";
}
