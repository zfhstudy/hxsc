﻿<%@ Page Title="" Language="C#" MasterPageFile="~/BackMaster.Master" AutoEventWireup="true"
    CodeBehind="login.aspx.cs" Inherits="FzCompany.HXSC.login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script type="text/javascript">

        //轮播
        var t = n = 0, count;
        $(document).ready(function () {
            count = $("#banner_listlogin a").length;
            $("#banner_listlogin a:not(:first-child)").hide();
            $("#banner_infologin").html($("#banner_listlogin a:first-child").find("img").attr('alt'));
            $("#banner_infologin").click(function () { window.open($("#banner_listlogin a:first-child").attr('href'), "_blank") });
            $("#bannerlogin li").click(function () {
                var i = $(this).text() - 1; //获取Li元素内的值，即1，2，3，4
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
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="cbr padding-top-60">
    </div>
    <div class="line-margin-960 ">
        <div class="loginlinehui">
            <div class="fleft" style="border: 1px #000 solid; overflow: hidden;">
                <div id="bannerlogin">
                    <div id="banner_bglogin">
                    </div>
                    <div id="banner_infologin">
                    </div>
                    <ul>
                        <li class="on">1</li>
                        <li>2</li>
                        <li>3</li>
                        <li>4</li>
                        <li>5</li>
                        <li>6</li>
                    </ul>
                    <div id="banner_listlogin">
                        <a href="#" target="_blank">
                            <img src="images/login/ad1.jpg" width="400" height="400" /></a> <a href="#" target="_blank">
                                <img src="images/login/ad2.jpg" /></a> <a href="#" target="_blank">
                                    <img src="images/login/ad3.jpg" /></a> <a href="#" target="_blank">
                                        <img src="images/login/ad4.jpg" /></a> <a href="#" target="_blank">
                                            <img src="images/login/ad1.jpg" /></a> <a href="#" target="_blank">
                                                <img src="images/login/ad2.jpg" /></a>
                    </div>
                    <div class="tree_img tree">
                    </div>
                </div>
            </div>
            <div class="fleft w500 padding-35">
                <div class="loginline">
                    <input type="text" value="用户名" id="logintxt" class="logintxt"></div>
                <div class="loginline">
                    <input type="text" value="密 码" id="loginpaw" class="loginpaw"></div>
                <div class="loginlineno">
                    <input type="checkbox" id="autologin" checked="checked">
                    七天内自动登录 <span class="pull-textright "><a href="password.html" class="orange">忘记密码</a></span></div>
                <div class="loginlineno">
                    <input type="button" value="登 录" onclick="login()" class="regbtn2"></div>
                <div class="loginline">
                    <input type="button" value="免费注册" onclick="Regist()" class="regbtn3"></div>
            </div>
        </div>
    </div>
    <div class="cor-line-bottom cbr mt10 margin-top-60">
    </div>
    <script type="text/javascript" src="/js/jquery-1.7.2.min.js"></script>
    <script type="text/javascript" src="/js/jquery.md5.js"></script>
    <script type="text/javascript">
        $(function () {
            var pwd = $.md5("123");
            var mac = $.md5('actionid=1001&userna=sf1236&pwd=' + pwd + '&key=3321pc3321pc');

            $.ajax(
            {
                url: "Service.aspx",//调用GetData方法
                type: "post",
                dataType: "json",
                contentType: "application/json",
                data: 'actionid=1001&userna=sf1236&pwd=' + pwd + '&key=3321pc&mac=' + mac,//传递参数值（参数名叫value)
                success: function (data) {
                    console.log(data);
                },
                error: function (request, message, e) {
                    alert("err");
                }
            });
        });
    </script>
</asp:Content>
