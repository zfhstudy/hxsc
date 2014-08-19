<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="FzCompany.HXSC.Site.Login" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>海峡书城</title>
<script type="text/javascript" src="js/jquery-1.7.2.min.js"></script>
<link href="css/css.css" rel="stylesheet" type="text/css">
</head>

<body>
<div class="content margin-top-60">

	<div class="fleft p708 "><img src="images/logo.jpg" width="199" height="72"></div>
    <div class="cbr padding-top-60"></div>
    
    <div class="line-margin-960 ">
    <div class="loginlinehui">
    	<div class="fleft" style="border:1px #000 solid; overflow:hidden;">
        	<div id="bannerlogin">	
          <div id="banner_bglogin"></div> 
          <div id="banner_infologin"></div>
          <ul>
              <li class="on">1</li>
              <li>2</li>
              <li>3</li>
              <li>4</li>
              <li>5</li>
              <li>6</li>
          </ul>
         <div id="banner_listlogin">
              <a href="#" target="_blank"><img src="images/login/ad1.jpg" width="400" height="400"/></a>
             <a href="#" target="_blank"><img src="images/login/ad2.jpg" /></a>
             <a href="#" target="_blank"><img src="images/login/ad3.jpg" /></a>
             <a href="#" target="_blank"><img src="images/login/ad4.jpg" /></a>
             <a href="#" target="_blank"><img src="images/login/ad1.jpg" /></a>
             <a href="#" target="_blank"><img src="images/login/ad2.jpg" /></a>
          </div>
          <div class="tree_img tree"></div>
      </div>
        </div>
        <div class="fleft w500 padding-35" >
        	<div class="loginline"><input type="text" id="txt_username" value="" class="logintxt" ></div>
         	<div class="loginline"><input type="text" id="txt_pwd" value="" class="loginpaw" ></div>
            
            <div class="loginlineno"><input type="checkbox" id="chk_autologin" checked> 七天内自动登录 <span class="pull-textright "><a href="password.html" class="orange">忘记密码</a></span></div>
           <div class="loginlineno"><input type="button" id="btn_login" value="登 录" class="regbtn2"></div>
             <div class="loginline"><input type="button" id="btn_reg" value="免费注册" class="regbtn3"></div>
        </div>
        
    </div>  
</div>
    <div class="cor-line-bottom cbr mt10 margin-top-60"></div>
</div>

<div class="cbr mh10 "></div>

<div class="footer">
        	<a href="#">关于我们</a>&nbsp;&nbsp;&nbsp;&nbsp;|<a href="#">联系我们</a>&nbsp;&nbsp;&nbsp;&nbsp;|<a href="#">商务合作</a>&nbsp;&nbsp;&nbsp;&nbsp;|<a href="#">意见反馈</a>&nbsp;&nbsp;&nbsp;&nbsp;|<a href="#" class="noa">友情连接</a>
</div>
<script type="text/javascript">
    //轮播
    var t = n = 0, count;
    $(document).ready(function () {
        count = $("#banner_listlogin a").length;
        $("#banner_listlogin a:not(:first-child)").hide();
        $("#banner_infologin").html($("#banner_listlogin a:first-child").find("img").attr('alt'));
        $("#banner_infologin").click(function () { window.open($("#banner_listlogin a:first-child").attr('href'), "_blank") });
        $("#bannerlogin li").click(function () {
            var i = $(this).text() - 1;//获取Li元素内的值，即1，2，3，4
            n = i;
            if (i >= count) return;
            $("#banner_infologin").html($("#banner_listlogin a").eq(i).find("img").attr('alt'));
            $("#banner_infologin").unbind().click(function () { window.open($("#banner_listlogin a").eq(i).attr('href'), "_blank") })
            $("#banner_listlogin a").filter(":visible").fadeOut(500).parent().children().eq(i).fadeIn(1000);
            document.getElementById("bannerlogin").style.background = "";
            $(this).toggleClass("on");
            $(this).siblings().removeAttr("class");
        });
        t = setInterval("showAuto()", 4000);
        $("#bannerlogin").hover(function () { clearInterval(t) }, function () { t = setInterval("showAuto()", 4000); });
    })
    function showAuto() {
        n = n >= (count - 1) ? 0 : ++n;
        $("#bannerlogin li").eq(n).trigger('click');
    }
</script>
    <script type="text/javascript">
        $(function () {
            var txt = {
                username: $("#txt_username"),
                pwd:$("#txt_pwd")
            }
            var btn = {
                login: $("#btn_login"),
                reg:$("#btn_reg")
            }
            
            btn.login.click(function () {
                if (txt.username.val() == "") {
                    alert("用户名不能为空！"); return;
                }
                if (txt.pwd.val() == "") {
                    alert("请输入密码"); return;
                }
                //todo:添加ajax
            });
        });
    </script>
</body>
</html>

