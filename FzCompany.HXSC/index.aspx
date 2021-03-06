﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true"
    CodeBehind="index.aspx.cs" Inherits="FzCompany.HXSC.index" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script type="text/javascript" src="js/jquery-1.7.2.min.js"></script>
    <script type="text/javascript">
        //轮播
        var t = n = 0, count;
        $(document).ready(function () {
            count = $("#banner_list a").length;
            $("#banner_list a:not(:first-child)").hide();
            $("#banner_info").html($("#banner_list a:first-child").find("img").attr('alt'));
            $("#banner_info").click(function () { window.open($("#banner_list a:first-child").attr('href'), "_blank") });
            $("#banner li").click(function () {
                var i = $(this).text() - 1; //获取Li元素内的值，即1，2，3，4
                n = i;
                if (i >= count) return;
                $("#banner_info").html($("#banner_list a").eq(i).find("img").attr('alt'));
                $("#banner_info").unbind().click(function () { window.open($("#banner_list a").eq(i).attr('href'), "_blank") })
                $("#banner_list a").filter(":visible").fadeOut(500).parent().children().eq(i).fadeIn(1000);
                document.getElementById("banner").style.background = "";
                $(this).toggleClass("on");
                $(this).siblings().removeAttr("class");
            });
            t = setInterval("showAuto()", 4000);
            $("#banner").hover(function () { clearInterval(t) }, function () { t = setInterval("showAuto()", 4000); });
        })
        function showAuto() {
            n = n >= (count - 1) ? 0 : ++n;
            $("#banner li").eq(n).trigger('click');
        }
    </script>
    <script type="text/javascript" src="js/index.js"></script>
    <script type="text/javascript" src="js/pislider.min.js"></script>
    <script type="text/javascript" src="js/play.js"></script>
    <script type="text/javascript" src="js/index.min.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!--左边导航栏开始-->
    <div class="cbr mh10">
    </div>
    <div class="content">
        <!--左导航开始-->
        <div class="m200 nav-left-tab fleft">
            <div class="leftnav_title">
                <img src="images/llogo.jpg" width="22" height="20" alt="" />图书分类</div>
            <div class="main_bar_nav_sub" id="main_bar_nav_sub">
                <!--
                <dl>
                    <dt>
                        <img src="images/licon1.jpg" width="20" height="20" class="icon-pad" alt="" /><a
                            href="javascript:;">教材教辅</a></dt>
                    <ul class="text">
                        <li><a href="#" target="erp_frame" title="教材">教材</a></li>
                        <li class="line"><a href="#" target="erp_frame" title="教材读物">教材读物</a></li>
                    </ul>
                </dl>
                <dl>
                    <dt>
                        <img src="images/licon2.jpg" width="20" height="20" class="icon-pad" alt="" /><a
                            href="javascript:;">教育图书</a></dt>
                    <ul class="text">
                        <li><a href="#" target="erp_frame" title="教育学理论">教育学理论</a></li>
                        <li><a href="#" target="erp_frame" title="教育学理论">教育学理论</a></li>
                        <li><a href="#" target="erp_frame" title="教育学理论">教育学理论</a></li>
                        <li><a href="#" target="erp_frame" title="教育学理论">教育学理论</a></li>
                        <li><a href="#" target="erp_frame" title="教育学理论">教育学理论</a></li>
                        <li class="line"><a href="#" target="erp_frame" title="教育学理论">教育学理论</a></li>
                    </ul>
                </dl>
                <dl>
                    <dt>
                        <img src="images/licon3.jpg" width="20" height="20" class="icon-pad" alt="" /><a
                            href="javascript:;">社科图书</a></dt>
                    <ul class="text">
                        <li><a href="#" target="erp_frame" title="人文历史">人文历史</a></li>
                        <li><a href="#" target="erp_frame" title="人文历史">人文历史</a></li>
                        <li><a href="#" target="erp_frame" title="人文历史">人文历史</a></li>
                        <li class="line"><a href="#" target="erp_frame" title="人文历史">人文历史</a></li>
                    </ul>
                </dl>
                <dl>
                    <dt>
                        <img src="images/licon4.jpg" width="20" height="20" class="icon-pad" alt="" /><a
                            href="javascript:;">青少年读物</a></dt>
                    <ul class="text">
                        <li><a href="#" target="erp_frame" title="科普世界">科普世界</a></li>
                        <li><a href="#" target="erp_frame" title="科普世界">科普世界</a></li>
                        <li><a href="#" target="erp_frame" title="科普世界">科普世界</a></li>
                        <li><a href="#" target="erp_frame" title="科普世界">科普世界</a></li>
                    </ul>
                </dl>-->
            </div>
        </div>
        <!--左导航结束-->
        <div class="w970 fleft">
            <!--第一个轮播开始-->
            <div class="w755 fleft">
                <!--轮播-->
                <div id="banner">
                    <div id="banner_bg">
                    </div>
                    <div id="banner_info">
                    </div>
                    <ul>
                        <li class="on">1</li>
                        <li>2</li>
                        <li>3</li>
                        <li>4</li>
                        <li>5</li>
                        <li>6</li>
                    </ul>
                    <div id="banner_list">
                        <a href="#" target="_blank">
                            <img src="images/ad1.jpg" /></a> <a href="#" target="_blank">
                                <img src="images/ad2.jpg" /></a> <a href="#" target="_blank">
                                    <img src="images/ad1.jpg" /></a> <a href="#" target="_blank">
                                        <img src="images/ad2.jpg" /></a> <a href="#" target="_blank">
                                            <img src="images/ad1.jpg" /></a> <a href="#" target="_blank">
                                                <img src="images/ad2.jpg" /></a>
                    </div>
                    <div class="tree_img tree">
                    </div>
                </div>
            </div>
            <!--第一个轮播结束-->
            <!--最新动态开始-->
            <div class="new-ad ptop10">
                <div class="newtxt fleft">
                    <div class="new-list">
                        <h3>
                            最新动态</h3>
                        <ul id="LatestDevelopments">
                            <!--
                            <li><a href="#">大众有奖推荐书，送十万当礼卷</a></li>
                            <li><a href="#">大众有奖推荐书，送十万当礼卷</a></li>
                            <li><a href="#">大众有奖推荐书，送十万当礼卷</a></li>
                            <li><a href="#">大众有奖推荐书，送十万当礼卷</a></li>
                            <li><a href="#">大众有奖推荐书，送十万当礼卷</a></li>-->
                        </ul>
                    </div>
                </div>
                <!--最新动态结束-->
                <div class="mt10 cbr">
                </div>
                <!--第二个轮播开始-->
                <div class="game_content_img3">
                    <div class="control_btn3">
                        <a class="prev3" id="prev3"></a><a class="next3" id="next3"></a>
                    </div>
                    <div class="img_content3">
                        <div class="imgs_list3" id="imgs_list3">
                            <ul class="clearfix ul_content3" id="ul_content3">
                                <li><a href="#p=1">
                                    <img src="images/ad3.jpg" alt="" /></a> </li>
                                <li><a href="#p=2">
                                    <img src="images/ad4.jpg" alt="" /></a> </li>
                                <li><a href="#p=3">
                                    <img src="images/ad3.jpg" alt="" /></a> </li>
                                <li><a href="#p=4">
                                    <img src="images/ad4.jpg" alt="" /></a> </li>
                                <li><a href="#p=5">
                                    <img src="images/ad3.jpg" alt="" /></a> </li>
                            </ul>
                        </div>
                    </div>
                </div>
                <!--第二个轮播结束-->
            </div>
            <!--新书上架开始-->
            <div class="mt10 cbr">
            </div>
            <div class="newbook fleft">
                <div class="newbook-titile">
                    <h3 class="col-wi50 fleft p10">
                        新书上架</h3>
                    <span class="fright mp10"><a href="#">more </a>&nbsp; ></span></div>
                <div class="game_content_img">
                    <div class="control_btn">
                        <a class="prev" id="prev"></a><a class="next" id="next"></a>
                    </div>
                    <div style="clear: both;">
                    </div>
                    <div class="img_content">
                        <div class="imgs_list" id="imgs_list">
                            <ul class="clearfix ul_content" id="ul_content">
                                <li><a href="#p=1">
                                    <img src="images/ad6.jpg" alt="" /></a> </li>
                                <li><a href="#p=2">
                                    <img src="images/ad7.jpg" alt="" /></a> </li>
                                <li><a href="#p=3">
                                    <img src="images/ad8.jpg" alt="" /></a> </li>
                                <li><a href="#p=4">
                                    <img src="images/ad6.jpg" alt="" /></a> </li>
                                <li><a href="#p=5">
                                    <img src="images/ad7.jpg" alt="" /></a> </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
            <!--新书上架结束-->
        </div>
    </div>
    <!--第二部分开始-->
    <div class="content">
        <!--畅销榜开始-->
        <div class="mt10 cbr">
        </div>
        <div class="m200 nav-left-tab fleft">
            <div class="title_mod">
                <div class="title_wrap clearfix">
                    <ul class="tab_title fl clearfix">
                        <li class="on"><a href="javascript:void(0);" target="_blank">暢销榜</a></li>
                        <li><a href="javascript:void(0);" target="_blank">月销榜</a></li>
                        <li><a href="javascript:void(0);" target="_blank">好评榜</a></li>
                    </ul>
                </div>
                <div class="title_con">
                    <div class="side_tit_mod mt15">
                        <ul class="hover_list" id="hover_list_saleAll">
                            <!--
                            <li class="on"><a class='nodisplay' href="#" target="_blank"><span class="icon_orang fleft p m10 mh10">
                                1</span>大数据时代3</a>
                                <dl class="art_mod_2 clearfix display">
                                    <span class="icon_orang fleft ">1</span>
                                    <dd class="pic_title_mod fleft ">
                                        <a href="#" target="_blank">
                                            <img src="images/month/num1.jpg" width="68" height="68" data-original="images/month/num1.jpg" /></a></dd>
                                    <dt class="p10"><a href="#" target="_blank">大数据时代</a></dt>
                                    <dd class="normal_con">
                                        评论(10000)</dd>
                                    <dd class="link_block">
                                        ￥35.00</dd>
                                </dl>
                            </li>
                            <li><a href="#" target="_blank"><span class="icon_orang fleft p m10 mh10">2</span>大数据时代2</a>
                                <dl class="art_mod_2 clearfix">
                                    <span class="icon_orang fleft">2</span>
                                    <dd class="pic_title_mod fleft ">
                                        <a href="#" target="_blank">
                                            <img src="images/month/num1.jpg" width="68" height="68" /></a></dd>
                                    <dt class="p10"><a href="#" target="_blank">大数据时代</a></dt>
                                    <dd class="normal_con">
                                        评论(10000)</dd>
                                    <dd class="link_block">
                                        ￥35.00</dd>
                                </dl>
                            </li>
                            <li><a href="#" target="_blank"><span class="icon_orang fleft p m10 mh10">3</span>大数据时代2</a>
                                <dl class="art_mod_2 clearfix">
                                    <span class="icon_orang fleft">3</span>
                                    <dd class="pic_title_mod fleft ">
                                        <a href="#" target="_blank">
                                            <img src="images/month/num1.jpg" width="68" height="68" /></a></dd>
                                    <dt class="p10"><a href="#" target="_blank">大数据时代</a></dt>
                                    <dd class="normal_con">
                                        评论(10000)</dd>
                                    <dd class="link_block">
                                        ￥35.00</dd>
                                </dl>
                            </li>
                            <li><a href="#" target="_blank"><span class="icon_orang fleft p m10 mh10">4</span>大数据时代2</a>
                                <dl class="art_mod_2 clearfix">
                                    <span class="icon_orang fleft">4</span>
                                    <dd class="pic_title_mod fleft ">
                                        <a href="#" target="_blank">
                                            <img src="images/month/num1.jpg" width="68" height="68" /></a></dd>
                                    <dt class="p10"><a href="#" target="_blank">大数据时代</a></dt>
                                    <dd class="normal_con">
                                        评论(10000)</dd>
                                    <dd class="link_block">
                                        ￥35.00</dd>
                                </dl>
                            </li>
                            <li><a href="#" target="_blank"><span class="icon_orang fleft p m10 mh10">5</span>大数据时代2</a>
                                <dl class="art_mod_2 clearfix">
                                    <span class="icon_orang fleft">5</span>
                                    <dd class="pic_title_mod fleft ">
                                        <a href="#" target="_blank">
                                            <img src="images/month/num1.jpg" width="68" height="68" /></a></dd>
                                    <dt class="p10"><a href="#" target="_blank">大数据时代</a></dt>
                                    <dd class="normal_con">
                                        评论(10000)</dd>
                                    <dd class="link_block">
                                        ￥35.00</dd>
                                </dl>
                            </li>
                            <li><a href="#" target="_blank"><span class="block fleft p m10 mh10">6</span>大数据时代2</a>
                                <dl class="art_mod_2 clearfix">
                                    <span class="block fleft">6</span>
                                    <dd class="pic_title_mod fleft ">
                                        <a href="#" target="_blank">
                                            <img src="images/month/num1.jpg" width="68" height="68" /></a></dd>
                                    <dt class="p10"><a href="#" target="_blank">大数据时代</a></dt>
                                    <dd class="normal_con">
                                        评论(10000)</dd>
                                    <dd class="link_block">
                                        ￥35.00</dd>
                                </dl>
                            </li>
                            <li><a href="#" target="_blank"><span class="block fleft p m10 mh10">7</span>大数据时代2</a>
                                <dl class="art_mod_2 clearfix">
                                    <span class="block fleft">7</span>
                                    <dd class="pic_title_mod fleft ">
                                        <a href="#" target="_blank">
                                            <img src="images/month/num1.jpg" width="68" height="68" /></a></dd>
                                    <dt class="p10"><a href="#" target="_blank">大数据时代</a></dt>
                                    <dd class="normal_con">
                                        评论(10000)</dd>
                                    <dd class="link_block">
                                        ￥35.00</dd>
                                </dl>
                            </li>
                            <li><a href="#" target="_blank"><span class="block fleft p m10 mh10">8</span>大数据时代2</a>
                                <dl class="art_mod_2 clearfix">
                                    <span class="block fleft">8</span>
                                    <dd class="pic_title_mod fleft ">
                                        <a href="#" target="_blank">
                                            <img src="images/month/num1.jpg" width="68" height="68" /></a></dd>
                                    <dt class="p10"><a href="#" target="_blank">大数据时代</a></dt>
                                    <dd class="normal_con">
                                        评论(10000)</dd>
                                    <dd class="link_block">
                                        ￥35.00</dd>
                                </dl>
                            </li>
                            <li><a href="#" target="_blank"><span class="block fleft p m10 mh10">9</span>大数据时代2</a>
                                <dl class="art_mod_2 clearfix">
                                    <span class="block fleft">9</span>
                                    <dd class="pic_title_mod fleft ">
                                        <a href="#" target="_blank">
                                            <img src="images/month/num1.jpg" width="68" height="68" /></a></dd>
                                    <dt class="p10"><a href="#" target="_blank">大数据时代</a></dt>
                                    <dd class="normal_con">
                                        评论(10000)</dd>
                                    <dd class="link_block">
                                        ￥35.00</dd>
                                </dl>
                            </li>
                            <li><a href="#" target="_blank"><span class="block fleft p m10 mh10" style="font-size: 8px;">
                                10</span>大数据时代2</a>
                                <dl class="art_mod_2 clearfix">
                                    <span class="block fleft" style="font-size: 8px;">10</span>
                                    <dd class="pic_title_mod fleft ">
                                        <a href="#" target="_blank">
                                            <img src="images/month/num1.jpg" width="68" height="68" /></a></dd>
                                    <dt class="p10"><a href="#" target="_blank">大数据时代</a></dt>
                                    <dd class="normal_con">
                                        评论(10000)</dd>
                                    <dd class="link_block">
                                        ￥35.00</dd>
                                </dl>
                            </li>
                            <li><a href="#" target="_blank"><span class="block fleft p m10 mh10" style="font-size: 8px;">
                                11</span>大数据时代2</a>
                                <dl class="art_mod_2 clearfix">
                                    <span class="block fleft" style="font-size: 8px;">11</span>
                                    <dd class="pic_title_mod fleft ">
                                        <a href="#" target="_blank">
                                            <img src="images/month/num1.jpg" width="68" height="68" /></a></dd>
                                    <dt class="p10"><a href="#" target="_blank">大数据时代</a></dt>
                                    <dd class="normal_con">
                                        评论(10000)</dd>
                                    <dd class="link_block">
                                        ￥35.00</dd>
                                </dl>
                            </li>
                            <li><a href="#" target="_blank"><span class="block fleft p m10 mh10" style="font-size: 8px;">
                                11</span>大数据时代2</a>
                                <dl class="art_mod_2 clearfix">
                                    <span class="block fleft" style="font-size: 8px;">11</span>
                                    <dd class="pic_title_mod fleft ">
                                        <a href="#" target="_blank">
                                            <img src="images/month/num1.jpg" width="68" height="68" /></a></dd>
                                    <dt class="p10"><a href="#" target="_blank">大数据时代</a></dt>
                                    <dd class="normal_con">
                                        评论(10000)</dd>
                                    <dd class="link_block">
                                        ￥35.00</dd>
                                </dl>
                            </li>
                            <li><a href="#" target="_blank"><span class="block fleft p m10 mh10" style="font-size: 8px;">
                                12</span>大数据时代2</a>
                                <dl class="art_mod_2 clearfix">
                                    <span class="block fleft" style="font-size: 8px;">12</span>
                                    <dd class="pic_title_mod fleft ">
                                        <a href="#" target="_blank">
                                            <img src="images/month/num1.jpg" width="68" height="68" /></a></dd>
                                    <dt class="p10"><a href="#" target="_blank">大数据时代</a></dt>
                                    <dd class="normal_con">
                                        评论(10000)</dd>
                                    <dd class="link_block">
                                        ￥35.00</dd>
                                </dl>
                            </li>
                            <li><a href="#" target="_blank"><span class="block fleft p m10 mh10" style="font-size: 8px;">
                                13</span>大数据时代2</a>
                                <dl class="art_mod_2 clearfix">
                                    <span class="block fleft" style="font-size: 8px;">13</span>
                                    <dd class="pic_title_mod fleft ">
                                        <a href="#" target="_blank">
                                            <img src="images/month/num1.jpg" width="68" height="68" /></a></dd>
                                    <dt class="p10"><a href="#" target="_blank">大数据时代</a></dt>
                                    <dd class="normal_con">
                                        评论(10000)</dd>
                                    <dd class="link_block">
                                        ￥35.00</dd>
                                </dl>
                            </li>-->
                        </ul>
                    </div>
                </div>
                <!--two begin loop-->
                <div class="title_con nodisplay">
                    <dl class="art_mod_3 clearfix">
                        <!--two content begin loop-->
                        <ul class="hover_list">
                            <li class="on"><a class='nodisplay' href="#" target="_blank"><span class="icon_orang fleft p m10 mh10">
                                1</span>大数据时代3</a>
                                <dl class="art_mod_2 clearfix display">
                                    <span class="icon_orang fleft">1</span>
                                    <dd class="pic_title_mod fleft ">
                                        <a href="#" target="_blank">
                                            <img src="images/month/num1.jpg" width="68" height="68" data-original="images/month/num1.jpg" /></a></dd>
                                    <dt class="p10"><a href="#" target="_blank">大数据时代</a></dt>
                                    <dd class="normal_con">
                                        评论(10000)</dd>
                                    <dd class="link_block">
                                        ￥35.00</dd>
                                </dl>
                            </li>
                            <li><a href="#" target="_blank"><span class="icon_orang fleft p m10 mh10">2</span>大数据时代2</a>
                                <dl class="art_mod_2 clearfix">
                                    <span class="icon_orang fleft">2</span>
                                    <dd class="pic_title_mod fleft ">
                                        <a href="#" target="_blank">
                                            <img src="images/month/num1.jpg" width="68" height="68" /></a></dd>
                                    <dt class="p10"><a href="#" target="_blank">大数据时代</a></dt>
                                    <dd class="normal_con">
                                        评论(10000)</dd>
                                    <dd class="link_block">
                                        ￥35.00</dd>
                                </dl>
                            </li>
                            <li><a href="#" target="_blank"><span class="icon_orang fleft p m10 mh10">3</span>大数据时代2</a>
                                <dl class="art_mod_2 clearfix">
                                    <span class="icon_orang fleft">3</span>
                                    <dd class="pic_title_mod fleft ">
                                        <a href="#" target="_blank">
                                            <img src="images/month/num1.jpg" width="68" height="68" /></a></dd>
                                    <dt class="p10"><a href="#" target="_blank">大数据时代</a></dt>
                                    <dd class="normal_con">
                                        评论(10000)</dd>
                                    <dd class="link_block">
                                        ￥35.00</dd>
                                </dl>
                            </li>
                            <li><a href="#" target="_blank"><span class="icon_orang fleft p m10 mh10">4</span>大数据时代2</a>
                                <dl class="art_mod_2 clearfix">
                                    <span class="icon_orang fleft">4</span>
                                    <dd class="pic_title_mod fleft ">
                                        <a href="#" target="_blank">
                                            <img src="images/month/num1.jpg" width="68" height="68" /></a></dd>
                                    <dt class="p10"><a href="#" target="_blank">大数据时代</a></dt>
                                    <dd class="normal_con">
                                        评论(10000)</dd>
                                    <dd class="link_block">
                                        ￥35.00</dd>
                                </dl>
                            </li>
                            <li><a href="#" target="_blank"><span class="icon_orang fleft p m10 mh10">5</span>大数据时代2</a>
                                <dl class="art_mod_2 clearfix">
                                    <span class="icon_orang fleft">5</span>
                                    <dd class="pic_title_mod fleft ">
                                        <a href="#" target="_blank">
                                            <img src="images/month/num1.jpg" width="68" height="68" /></a></dd>
                                    <dt class="p10"><a href="#" target="_blank">大数据时代</a></dt>
                                    <dd class="normal_con">
                                        评论(10000)</dd>
                                    <dd class="link_block">
                                        ￥35.00</dd>
                                </dl>
                            </li>
                            <li><a href="#" target="_blank"><span class="block fleft p m10 mh10">6</span>大数据时代2</a>
                                <dl class="art_mod_2 clearfix">
                                    <span class="block fleft">6</span>
                                    <dd class="pic_title_mod fleft ">
                                        <a href="#" target="_blank">
                                            <img src="images/month/num1.jpg" width="68" height="68" /></a></dd>
                                    <dt class="p10"><a href="#" target="_blank">大数据时代</a></dt>
                                    <dd class="normal_con">
                                        评论(10000)</dd>
                                    <dd class="link_block">
                                        ￥35.00</dd>
                                </dl>
                            </li>
                            <li><a href="#" target="_blank"><span class="block fleft p m10 mh10">7</span>大数据时代2</a>
                                <dl class="art_mod_2 clearfix">
                                    <span class="block fleft">7</span>
                                    <dd class="pic_title_mod fleft ">
                                        <a href="#" target="_blank">
                                            <img src="images/month/num1.jpg" width="68" height="68" /></a></dd>
                                    <dt class="p10"><a href="#" target="_blank">大数据时代</a></dt>
                                    <dd class="normal_con">
                                        评论(10000)</dd>
                                    <dd class="link_block">
                                        ￥35.00</dd>
                                </dl>
                            </li>
                            <li><a href="#" target="_blank"><span class="block fleft p m10 mh10">8</span>大数据时代2</a>
                                <dl class="art_mod_2 clearfix">
                                    <span class="block fleft">8</span>
                                    <dd class="pic_title_mod fleft ">
                                        <a href="#" target="_blank">
                                            <img src="images/month/num1.jpg" width="68" height="68" /></a></dd>
                                    <dt class="p10"><a href="#" target="_blank">大数据时代</a></dt>
                                    <dd class="normal_con">
                                        评论(10000)</dd>
                                    <dd class="link_block">
                                        ￥35.00</dd>
                                </dl>
                            </li>
                            <li><a href="#" target="_blank"><span class="block fleft p m10 mh10">9</span>大数据时代2</a>
                                <dl class="art_mod_2 clearfix">
                                    <span class="block fleft">9</span>
                                    <dd class="pic_title_mod fleft ">
                                        <a href="#" target="_blank">
                                            <img src="images/month/num1.jpg" width="68" height="68" /></a></dd>
                                    <dt class="p10"><a href="#" target="_blank">大数据时代</a></dt>
                                    <dd class="normal_con">
                                        评论(10000)</dd>
                                    <dd class="link_block">
                                        ￥35.00</dd>
                                </dl>
                            </li>
                            <li><a href="#" target="_blank"><span class="block fleft p m10 mh10" style="font-size: 8px;">
                                10</span>大数据时代2</a>
                                <dl class="art_mod_2 clearfix">
                                    <span class="block fleft" style="font-size: 8px;">10</span>
                                    <dd class="pic_title_mod fleft ">
                                        <a href="#" target="_blank">
                                            <img src="images/month/num1.jpg" width="68" height="68" /></a></dd>
                                    <dt class="p10"><a href="#" target="_blank">大数据时代</a></dt>
                                    <dd class="normal_con">
                                        评论(10000)</dd>
                                    <dd class="link_block">
                                        ￥35.00</dd>
                                </dl>
                            </li>
                            <li><a href="#" target="_blank"><span class="block fleft p m10 mh10" style="font-size: 8px;">
                                11</span>大数据时代2</a>
                                <dl class="art_mod_2 clearfix">
                                    <span class="block fleft" style="font-size: 8px;">11</span>
                                    <dd class="pic_title_mod fleft ">
                                        <a href="#" target="_blank">
                                            <img src="images/month/num1.jpg" width="68" height="68" /></a></dd>
                                    <dt class="p10"><a href="#" target="_blank">大数据时代</a></dt>
                                    <dd class="normal_con">
                                        评论(10000)</dd>
                                    <dd class="link_block">
                                        ￥35.00</dd>
                                </dl>
                            </li>
                            <li><a href="#" target="_blank"><span class="block fleft p m10 mh10" style="font-size: 8px;">
                                11</span>大数据时代2</a>
                                <dl class="art_mod_2 clearfix">
                                    <span class="block fleft" style="font-size: 8px;">11</span>
                                    <dd class="pic_title_mod fleft ">
                                        <a href="#" target="_blank">
                                            <img src="images/month/num1.jpg" width="68" height="68" /></a></dd>
                                    <dt class="p10"><a href="#" target="_blank">大数据时代</a></dt>
                                    <dd class="normal_con">
                                        评论(10000)</dd>
                                    <dd class="link_block">
                                        ￥35.00</dd>
                                </dl>
                            </li>
                            <li><a href="#" target="_blank"><span class="block fleft p m10 mh10" style="font-size: 8px;">
                                12</span>大数据时代2</a>
                                <dl class="art_mod_2 clearfix">
                                    <span class="block fleft" style="font-size: 8px;">12</span>
                                    <dd class="pic_title_mod fleft ">
                                        <a href="#" target="_blank">
                                            <img src="images/month/num1.jpg" width="68" height="68" /></a></dd>
                                    <dt class="p10"><a href="#" target="_blank">大数据时代</a></dt>
                                    <dd class="normal_con">
                                        评论(10000)</dd>
                                    <dd class="link_block">
                                        ￥35.00</dd>
                                </dl>
                            </li>
                            <li><a href="#" target="_blank"><span class="block fleft p m10 mh10" style="font-size: 8px;">
                                13</span>大数据时代2</a>
                                <dl class="art_mod_2 clearfix">
                                    <span class="block fleft" style="font-size: 8px;">13</span>
                                    <dd class="pic_title_mod fleft ">
                                        <a href="#" target="_blank">
                                            <img src="images/month/num1.jpg" width="68" height="68" /></a></dd>
                                    <dt class="p10"><a href="#" target="_blank">大数据时代</a></dt>
                                    <dd class="normal_con">
                                        评论(10000)</dd>
                                    <dd class="link_block">
                                        ￥35.00</dd>
                                </dl>
                            </li>
                        </ul>
                        <!--two content over-->
                    </dl>
                </div>
                <!--two over-->
                <!--three begin loop-->
                <div class="title_con nodisplay">
                    <dl class="art_mod_3 clearfix">
                        <!--three content begin loop-->
                        <ul class="hover_list">
                            <li class="on"><a class='nodisplay' href="#" target="_blank"><span class="icon_orang fleft p m10 mh10">
                                1</span>大数据时代3</a>
                                <dl class="art_mod_2 clearfix display">
                                    <span class="icon_orang fleft">1</span>
                                    <dd class="pic_title_mod fleft ">
                                        <a href="#" target="_blank">
                                            <img src="images/month/num1.jpg" width="68" height="68" data-original="images/month/num1.jpg" /></a></dd>
                                    <dt class="p10"><a href="#" target="_blank">大数据时代</a></dt>
                                    <dd class="normal_con">
                                        评论(10000)</dd>
                                    <dd class="link_block">
                                        ￥35.00</dd>
                                </dl>
                            </li>
                            <li><a href="#" target="_blank"><span class="icon_orang fleft p m10 mh10">2</span>大数据时代2</a>
                                <dl class="art_mod_2 clearfix">
                                    <span class="icon_orang fleft">2</span>
                                    <dd class="pic_title_mod fleft ">
                                        <a href="#" target="_blank">
                                            <img src="images/month/num1.jpg" width="68" height="68" /></a></dd>
                                    <dt class="p10"><a href="#" target="_blank">大数据时代</a></dt>
                                    <dd class="normal_con">
                                        评论(10000)</dd>
                                    <dd class="link_block">
                                        ￥35.00</dd>
                                </dl>
                            </li>
                            <li><a href="#" target="_blank"><span class="icon_orang fleft p m10 mh10">3</span>大数据时代2</a>
                                <dl class="art_mod_2 clearfix">
                                    <span class="icon_orang fleft">3</span>
                                    <dd class="pic_title_mod fleft ">
                                        <a href="#" target="_blank">
                                            <img src="images/month/num1.jpg" width="68" height="68" /></a></dd>
                                    <dt class="p10"><a href="#" target="_blank">大数据时代</a></dt>
                                    <dd class="normal_con">
                                        评论(10000)</dd>
                                    <dd class="link_block">
                                        ￥35.00</dd>
                                </dl>
                            </li>
                            <li><a href="#" target="_blank"><span class="icon_orang fleft p m10 mh10">4</span>大数据时代2</a>
                                <dl class="art_mod_2 clearfix">
                                    <span class="icon_orang fleft">4</span>
                                    <dd class="pic_title_mod fleft ">
                                        <a href="#" target="_blank">
                                            <img src="images/month/num1.jpg" width="68" height="68" /></a></dd>
                                    <dt class="p10"><a href="#" target="_blank">大数据时代</a></dt>
                                    <dd class="normal_con">
                                        评论(10000)</dd>
                                    <dd class="link_block">
                                        ￥35.00</dd>
                                </dl>
                            </li>
                            <li><a href="#" target="_blank"><span class="icon_orang fleft p m10 mh10">5</span>大数据时代2</a>
                                <dl class="art_mod_2 clearfix">
                                    <span class="icon_orang fleft">5</span>
                                    <dd class="pic_title_mod fleft ">
                                        <a href="#" target="_blank">
                                            <img src="images/month/num1.jpg" width="68" height="68" /></a></dd>
                                    <dt class="p10"><a href="#" target="_blank">大数据时代</a></dt>
                                    <dd class="normal_con">
                                        评论(10000)</dd>
                                    <dd class="link_block">
                                        ￥35.00</dd>
                                </dl>
                            </li>
                            <li><a href="#" target="_blank"><span class="block fleft p m10 mh10">6</span>大数据时代2</a>
                                <dl class="art_mod_2 clearfix">
                                    <span class="block fleft">6</span>
                                    <dd class="pic_title_mod fleft ">
                                        <a href="#" target="_blank">
                                            <img src="images/month/num1.jpg" width="68" height="68" /></a></dd>
                                    <dt class="p10"><a href="#" target="_blank">大数据时代</a></dt>
                                    <dd class="normal_con">
                                        评论(10000)</dd>
                                    <dd class="link_block">
                                        ￥35.00</dd>
                                </dl>
                            </li>
                            <li><a href="#" target="_blank"><span class="block fleft p m10 mh10">7</span>大数据时代2</a>
                                <dl class="art_mod_2 clearfix">
                                    <span class="block fleft">7</span>
                                    <dd class="pic_title_mod fleft ">
                                        <a href="#" target="_blank">
                                            <img src="images/month/num1.jpg" width="68" height="68" /></a></dd>
                                    <dt class="p10"><a href="#" target="_blank">大数据时代</a></dt>
                                    <dd class="normal_con">
                                        评论(10000)</dd>
                                    <dd class="link_block">
                                        ￥35.00</dd>
                                </dl>
                            </li>
                            <li><a href="#" target="_blank"><span class="block fleft p m10 mh10">8</span>大数据时代2</a>
                                <dl class="art_mod_2 clearfix">
                                    <span class="block fleft">8</span>
                                    <dd class="pic_title_mod fleft ">
                                        <a href="#" target="_blank">
                                            <img src="images/month/num1.jpg" width="68" height="68" /></a></dd>
                                    <dt class="p10"><a href="#" target="_blank">大数据时代</a></dt>
                                    <dd class="normal_con">
                                        评论(10000)</dd>
                                    <dd class="link_block">
                                        ￥35.00</dd>
                                </dl>
                            </li>
                            <li><a href="#" target="_blank"><span class="block fleft p m10 mh10">9</span>大数据时代2</a>
                                <dl class="art_mod_2 clearfix">
                                    <span class="block fleft">9</span>
                                    <dd class="pic_title_mod fleft ">
                                        <a href="#" target="_blank">
                                            <img src="images/month/num1.jpg" width="68" height="68" /></a></dd>
                                    <dt class="p10"><a href="#" target="_blank">大数据时代</a></dt>
                                    <dd class="normal_con">
                                        评论(10000)</dd>
                                    <dd class="link_block">
                                        ￥35.00</dd>
                                </dl>
                            </li>
                            <li><a href="#" target="_blank"><span class="block fleft p m10 mh10" style="font-size: 8px;">
                                10</span>大数据时代2</a>
                                <dl class="art_mod_2 clearfix">
                                    <span class="block fleft" style="font-size: 8px;">10</span>
                                    <dd class="pic_title_mod fleft ">
                                        <a href="#" target="_blank">
                                            <img src="images/month/num1.jpg" width="68" height="68" /></a></dd>
                                    <dt class="p10"><a href="#" target="_blank">大数据时代</a></dt>
                                    <dd class="normal_con">
                                        评论(10000)</dd>
                                    <dd class="link_block">
                                        ￥35.00</dd>
                                </dl>
                            </li>
                            <li><a href="#" target="_blank"><span class="block fleft p m10 mh10" style="font-size: 8px;">
                                11</span>大数据时代2</a>
                                <dl class="art_mod_2 clearfix">
                                    <span class="block fleft" style="font-size: 8px;">11</span>
                                    <dd class="pic_title_mod fleft ">
                                        <a href="#" target="_blank">
                                            <img src="images/month/num1.jpg" width="68" height="68" /></a></dd>
                                    <dt class="p10"><a href="#" target="_blank">大数据时代</a></dt>
                                    <dd class="normal_con">
                                        评论(10000)</dd>
                                    <dd class="link_block">
                                        ￥35.00</dd>
                                </dl>
                            </li>
                            <li><a href="#" target="_blank"><span class="block fleft p m10 mh10" style="font-size: 8px;">
                                11</span>大数据时代2</a>
                                <dl class="art_mod_2 clearfix">
                                    <span class="block fleft" style="font-size: 8px;">11</span>
                                    <dd class="pic_title_mod fleft ">
                                        <a href="#" target="_blank">
                                            <img src="images/month/num1.jpg" width="68" height="68" /></a></dd>
                                    <dt class="p10"><a href="#" target="_blank">大数据时代</a></dt>
                                    <dd class="normal_con">
                                        评论(10000)</dd>
                                    <dd class="link_block">
                                        ￥35.00</dd>
                                </dl>
                            </li>
                            <li><a href="#" target="_blank"><span class="block fleft p m10 mh10" style="font-size: 8px;">
                                12</span>大数据时代2</a>
                                <dl class="art_mod_2 clearfix">
                                    <span class="block fleft" style="font-size: 8px;">12</span>
                                    <dd class="pic_title_mod fleft ">
                                        <a href="#" target="_blank">
                                            <img src="images/month/num1.jpg" width="68" height="68" /></a></dd>
                                    <dt class="p10"><a href="#" target="_blank">大数据时代</a></dt>
                                    <dd class="normal_con">
                                        评论(10000)</dd>
                                    <dd class="link_block">
                                        ￥35.00</dd>
                                </dl>
                            </li>
                            <li><a href="#" target="_blank"><span class="block fleft p m10 mh10" style="font-size: 8px;">
                                13</span>大数据时代2</a>
                                <dl class="art_mod_2 clearfix">
                                    <span class="block fleft" style="font-size: 8px;">13</span>
                                    <dd class="pic_title_mod fleft ">
                                        <a href="#" target="_blank">
                                            <img src="images/month/num1.jpg" width="68" height="68" /></a></dd>
                                    <dt class="p10"><a href="#" target="_blank">大数据时代</a></dt>
                                    <dd class="normal_con">
                                        评论(10000)</dd>
                                    <dd class="link_block">
                                        ￥35.00</dd>
                                </dl>
                            </li>
                        </ul>
                        <!--three content over-->
                    </dl>
                </div>
            </div>
        </div>
        <!--畅销榜结束-->
        <!--重磅推荐开始-->
        <div class="w970 fleft">
            <div class="weightbook fleft">
                <!--book begin-->
                <div class="fl w1000 col_tab_mod mt20 cbr">
                    <div class="col_tit_wrap weightbook-titile">
                        <h3 class="col-wi50 fleft p10">
                            重磅推荐</h3>
                        <ul id="itemlisthead">
                            <li class="on"><a href="javascript:void(0);">教材辅助</a></li>
                            <li><a href="javascript:void(0);">教育图书1</a></li>
                            <li><a href="javascript:void(0);">教育图书2</a></li>
                            <li><a href="javascript:void(0);">教育图书3</a></li>
                        </ul>
                    </div>
                    <div class="col_con_wrap pdt20" id="itemlist">
                        <!-- tab1 
                        <ul class="icon_list_mod icon_list_mod_1 fl">
                            <li><a href="#" target="_blank">
                                <img src="images/book1.jpg" data-original="" width="186" height="184" alt="1" /></a>
                                <a class="icon_tit" target="_blank" href="#"><strong>麦肯锡问题</strong><br />
                                    <strong class="deltxt">￥35.00</strong><br />
                                    <span>￥23.50</span></a> </li>
                            <li><a href="#" target="_blank">
                                <img src="images/book2.jpg" data-original="" width="186" height="184" alt="1" /></a>
                                <a class="icon_tit" target="_blank" href="#"><strong>麦肯锡问题</strong><br />
                                    <strong class="deltxt">￥35.00</strong><br />
                                    <span>￥23.50</span></a> </li>
                            <li><a href="#" target="_blank">
                                <img src="images/book3.jpg" data-original="" width="186" height="184" alt="1" /></a>
                                <a class="icon_tit" target="_blank" href="#"><strong>麦肯锡问题</strong><br />
                                    <strong class="deltxt">￥35.00</strong><br />
                                    <span>￥23.50</span></a> </li>
                            <li><a href="#" target="_blank">
                                <img src="images/book4.jpg" data-original="" width="186" height="184" alt="1" /></a>
                                <a class="icon_tit" target="_blank" href="#"><strong>麦肯锡问题</strong><br />
                                    <strong class="deltxt">￥35.00</strong><br />
                                    <span>￥23.50</span></a> </li>
                            <li><a href="#" target="_blank">
                                <img src="images/book5.jpg" data-original="" width="186" height="184" alt="1" /></a>
                                <a class="icon_tit" target="_blank" href="#"><strong>麦肯锡问题</strong><br />
                                    <strong class="deltxt">￥35.00</strong><br />
                                    <span>￥23.50</span></a> </li>
                            <li><a href="#" target="_blank">
                                <img src="images/book1.jpg" data-original="" width="186" height="184" alt="1" /></a>
                                <a class="icon_tit" target="_blank" href="#"><strong>麦肯锡问题</strong><br />
                                    <strong class="deltxt">￥35.00</strong><br />
                                    <span>￥23.50</span></a> </li>
                            <li><a href="#" target="_blank">
                                <img src="images/book2.jpg" data-original="" width="186" height="184" alt="1" /></a>
                                <a class="icon_tit" target="_blank" href="#"><strong>麦肯锡问题</strong><br />
                                    <strong class="deltxt">￥35.00</strong><br />
                                    <span>￥23.50</span></a> </li>
                            <li><a href="#" target="_blank">
                                <img src="images/book3.jpg" data-original="" width="186" height="184" alt="1" /></a>
                                <a class="icon_tit" target="_blank" href="#"><strong>麦肯锡问题</strong><br />
                                    <strong class="deltxt">￥35.00</strong><br />
                                    <span>￥23.50</span></a> </li>
                            <li><a href="#" target="_blank">
                                <img src="images/book4.jpg" data-original="" width="186" height="184" alt="1" /></a>
                                <a class="icon_tit" target="_blank" href="#"><strong>麦肯锡问题</strong><br />
                                    <strong class="deltxt">￥35.00</strong><br />
                                    <span>￥23.50</span></a> </li>
                            <li><a href="#" target="_blank">
                                <img src="images/book5.jpg" data-original="" width="186" height="184" alt="1" /></a>
                                <a class="icon_tit" target="_blank" href="#"><strong>麦肯锡问题</strong><br />
                                    <strong class="deltxt">￥35.00</strong><br />
                                    <span>￥23.50</span></a> </li>
                        </ul>
                        -->
                        <!-- tab2 
                        <ul class="icon_list_mod icon_list_mod_1 fl nodisplay">
                            <li><a href="#" target="_blank">
                                <img src="images/book1.jpg" data-original="" width="186" height="184" alt="1" /></a>
                                <a class="icon_tit" target="_blank" href="#"><strong>麦肯锡问题2</strong><br />
                                    <strong class="deltxt">￥35.00</strong><br />
                                    <span>￥23.50</span></a> </li>
                            <li><a href="#" target="_blank">
                                <img src="images/book2.jpg" data-original="" width="186" height="184" alt="1" /></a>
                                <a class="icon_tit" target="_blank" href="#"><strong>麦肯锡问题2</strong><br />
                                    <strong class="deltxt">￥35.00</strong><br />
                                    <span>￥23.50</span></a> </li>
                            <li><a href="#" target="_blank">
                                <img src="images/book3.jpg" data-original="" width="186" height="184" alt="1" /></a>
                                <a class="icon_tit" target="_blank" href="#"><strong>麦肯锡问题2</strong><br />
                                    <strong class="deltxt">￥35.00</strong><br />
                                    <span>￥23.50</span></a> </li>
                            <li><a href="#" target="_blank">
                                <img src="images/book4.jpg" data-original="" width="186" height="184" alt="1" /></a>
                                <a class="icon_tit" target="_blank" href="#"><strong>麦肯锡问题2</strong><br />
                                    <strong class="deltxt">￥35.00</strong><br />
                                    <span>￥23.50</span></a> </li>
                            <li><a href="#" target="_blank">
                                <img src="images/book5.jpg" data-original="" width="186" height="184" alt="1" /></a>
                                <a class="icon_tit" target="_blank" href="#"><strong>麦肯锡问题2</strong><br />
                                    <strong class="deltxt">￥35.00</strong><br />
                                    <span>￥23.50</span></a> </li>
                            <li><a href="#" target="_blank">
                                <img src="images/book1.jpg" data-original="" width="186" height="184" alt="1" /></a>
                                <a class="icon_tit" target="_blank" href="#"><strong>麦肯锡问题</strong><br />
                                    <strong class="deltxt">￥35.00</strong><br />
                                    <span>￥23.50</span></a> </li>
                            <li><a href="#" target="_blank">
                                <img src="images/book2.jpg" data-original="" width="186" height="184" alt="1" /></a>
                                <a class="icon_tit" target="_blank" href="#"><strong>麦肯锡问题</strong><br />
                                    <strong class="deltxt">￥35.00</strong><br />
                                    <span>￥23.50</span></a> </li>
                            <li><a href="#" target="_blank">
                                <img src="images/book3.jpg" data-original="" width="186" height="184" alt="1" /></a>
                                <a class="icon_tit" target="_blank" href="#"><strong>麦肯锡问题</strong><br />
                                    <strong class="deltxt">￥35.00</strong><br />
                                    <span>￥23.50</span></a> </li>
                            <li><a href="#" target="_blank">
                                <img src="images/book4.jpg" data-original="" width="186" height="184" alt="1" /></a>
                                <a class="icon_tit" target="_blank" href="#"><strong>麦肯锡问题</strong><br />
                                    <strong class="deltxt">￥35.00</strong><br />
                                    <span>￥23.50</span></a> </li>
                            <li><a href="#" target="_blank">
                                <img src="images/book5.jpg" data-original="" width="186" height="184" alt="1" /></a>
                                <a class="icon_tit" target="_blank" href="#"><strong>麦肯锡问题</strong><br />
                                    <strong class="deltxt">￥35.00</strong><br />
                                    <span>￥23.50</span></a> </li>
                        </ul>-->
                        <!-- tab3 
                        <ul class="icon_list_mod icon_list_mod_1 fl nodisplay">
                            <li><a href="#" target="_blank">
                                <img src="images/book1.jpg" data-original="" width="186" height="184" alt="1" /></a>
                                <a class="icon_tit" target="_blank" href="#"><strong>麦肯锡问题</strong><br />
                                    <strong class="deltxt">￥35.00</strong><br />
                                    <span>￥23.50</span></a> </li>
                            <li><a href="#" target="_blank">
                                <img src="images/book2.jpg" data-original="" width="186" height="184" alt="1" /></a>
                                <a class="icon_tit" target="_blank" href="#"><strong>麦肯锡问题</strong><br />
                                    <strong class="deltxt">￥35.00</strong><br />
                                    <span>￥23.50</span></a> </li>
                            <li><a href="#" target="_blank">
                                <img src="images/book3.jpg" data-original="" width="186" height="184" alt="1" /></a>
                                <a class="icon_tit" target="_blank" href="#"><strong>麦肯锡问题</strong><br />
                                    <strong class="deltxt">￥35.00</strong><br />
                                    <span>￥23.50</span></a> </li>
                            <li><a href="#" target="_blank">
                                <img src="images/book4.jpg" data-original="" width="186" height="184" alt="1" /></a>
                                <a class="icon_tit" target="_blank" href="#"><strong>麦肯锡问题</strong><br />
                                    <strong class="deltxt">￥35.00</strong><br />
                                    <span>￥23.50</span></a> </li>
                            <li><a href="#" target="_blank">
                                <img src="images/book5.jpg" data-original="" width="186" height="184" alt="1" /></a>
                                <a class="icon_tit" target="_blank" href="#"><strong>麦肯锡问题</strong><br />
                                    <strong class="deltxt">￥35.00</strong><br />
                                    <span>￥23.50</span></a> </li>
                            <li><a href="#" target="_blank">
                                <img src="images/book1.jpg" data-original="" width="186" height="184" alt="1" /></a>
                                <a class="icon_tit" target="_blank" href="#"><strong>麦肯锡问题</strong><br />
                                    <strong class="deltxt">￥35.00</strong><br />
                                    <span>￥23.50</span></a> </li>
                            <li><a href="#" target="_blank">
                                <img src="images/book2.jpg" data-original="" width="186" height="184" alt="1" /></a>
                                <a class="icon_tit" target="_blank" href="#"><strong>麦肯锡问题</strong><br />
                                    <strong class="deltxt">￥35.00</strong><br />
                                    <span>￥23.50</span></a> </li>
                            <li><a href="#" target="_blank">
                                <img src="images/book3.jpg" data-original="" width="186" height="184" alt="1" /></a>
                                <a class="icon_tit" target="_blank" href="#"><strong>麦肯锡问题</strong><br />
                                    <strong class="deltxt">￥35.00</strong><br />
                                    <span>￥23.50</span></a> </li>
                            <li><a href="#" target="_blank">
                                <img src="images/book4.jpg" data-original="" width="186" height="184" alt="1" /></a>
                                <a class="icon_tit" target="_blank" href="#"><strong>麦肯锡问题</strong><br />
                                    <strong class="deltxt">￥35.00</strong><br />
                                    <span>￥23.50</span></a> </li>
                            <li><a href="#" target="_blank">
                                <img src="images/book5.jpg" data-original="" width="186" height="184" alt="1" /></a>
                                <a class="icon_tit" target="_blank" href="#"><strong>麦肯锡问题</strong><br />
                                    <strong class="deltxt">￥35.00</strong><br />
                                    <span>￥23.50</span></a> </li>
                        </ul>
                        -->
                        <!-- tab4 
                        <ul class="icon_list_mod icon_list_mod_1 fl nodisplay">
                            <li><a href="#" target="_blank">
                                <img src="images/book1.jpg" data-original="" width="186" height="184" alt="1" /></a>
                                <a class="icon_tit" target="_blank" href="#"><strong>麦肯锡问题1</strong><br />
                                    <strong class="deltxt">￥35.00</strong><br />
                                    <span>￥23.50</span></a> </li>
                            <li><a href="#" target="_blank">
                                <img src="images/book2.jpg" data-original="" width="186" height="184" alt="1" /></a>
                                <a class="icon_tit" target="_blank" href="#"><strong>麦肯锡问题1</strong><br />
                                    <strong class="deltxt">￥35.00</strong><br />
                                    <span>￥23.50</span></a> </li>
                            <li><a href="#" target="_blank">
                                <img src="images/book3.jpg" data-original="" width="186" height="184" alt="1" /></a>
                                <a class="icon_tit" target="_blank" href="#"><strong>麦肯锡问题1</strong><br />
                                    <strong class="deltxt">￥35.00</strong><br />
                                    <span>￥23.50</span></a> </li>
                            <li><a href="#" target="_blank">
                                <img src="images/book4.jpg" data-original="" width="186" height="184" alt="1" /></a>
                                <a class="icon_tit" target="_blank" href="#"><strong>麦肯锡问题1</strong><br />
                                    <strong class="deltxt">￥35.00</strong><br />
                                    <span>￥23.50</span></a> </li>
                            <li><a href="#" target="_blank">
                                <img src="images/book5.jpg" data-original="" width="186" height="184" alt="1" /></a>
                                <a class="icon_tit" target="_blank" href="#"><strong>麦肯锡问题1</strong><br />
                                    <strong class="deltxt">￥35.00</strong><br />
                                    <span>￥23.50</span></a> </li>
                            <li><a href="#" target="_blank">
                                <img src="images/book1.jpg" data-original="" width="186" height="184" alt="1" /></a>
                                <a class="icon_tit" target="_blank" href="#"><strong>麦肯锡问题</strong><br />
                                    <strong class="deltxt">￥35.00</strong><br />
                                    <span>￥23.50</span></a> </li>
                            <li><a href="#" target="_blank">
                                <img src="images/book2.jpg" data-original="" width="186" height="184" alt="1" /></a>
                                <a class="icon_tit" target="_blank" href="#"><strong>麦肯锡问题</strong><br />
                                    <strong class="deltxt">￥35.00</strong><br />
                                    <span>￥23.50</span></a> </li>
                            <li><a href="#" target="_blank">
                                <img src="images/book3.jpg" data-original="" width="186" height="184" alt="1" /></a>
                                <a class="icon_tit" target="_blank" href="#"><strong>麦肯锡问题</strong><br />
                                    <strong class="deltxt">￥35.00</strong><br />
                                    <span>￥23.50</span></a> </li>
                            <li><a href="#" target="_blank">
                                <img src="images/book4.jpg" data-original="" width="186" height="184" alt="1" /></a>
                                <a class="icon_tit" target="_blank" href="#"><strong>麦肯锡问题</strong><br />
                                    <strong class="deltxt">￥35.00</strong><br />
                                    <span>￥23.50</span></a> </li>
                            <li><a href="#" target="_blank">
                                <img src="images/book5.jpg" data-original="" width="186" height="184" alt="1" /></a>
                                <a class="icon_tit" target="_blank" href="#"><strong>麦肯锡问题</strong><br />
                                    <strong class="deltxt">￥35.00</strong><br />
                                    <span>￥23.50</span></a> </li>
                        </ul>-->
                    </div>
                </div>
                <!--book over-->
            </div>
        </div>
        <!--重磅推荐结束-->
    </div>
    <!--第二部分结束-->
    <div class="cbr mh10 ">
    </div>
    <!--第三部分开始ad-->
    <div class="content">
        <div class="ad1">
            <ul>
                <li><a href="#">
                    <img src="images/ad9.jpg" width="380" height="105"></a></li>
                <li><a href="#">
                    <img src="images/ad11.jpg" width="380" height="105"></a></li>
                <li><a href="#" class="fright">
                    <img src="images/ad10.jpg" width="380" height="105"></a></li>
            </ul>
        </div>
    </div>
    <!--第三部分结束ad-->
    <!--第四部分开始-->
    <div class="cbr mh10 ">
    </div>
    <div class="content">
        <div class="m200 nav-left-tab fleft">
            <div class="newbook-reviews">
                <h3 class="col-wi50 fleft p10">
                    书评广场</h3>
                <span class="fright mp10"><a href="#">more </a>&nbsp; ></span></div>
            <div class="reviews">
                <div class="reviewsimg">
                    <img src="images/month/people.jpg" width="114" height="165"></div>
                <div class="reviewstitle">
                    <dl>
                        高效能人士的七个习惯</dl>
                    <dd class="normal_con">
                        <img src="images/month/xing.jpg"><img src="images/month/xing.jpg"><img src="images/month/xing.jpg"><img
                            src="images/month/xing.jpg"></dd>
                    <dd class="link_block">
                        ￥35.00</dd>
                    <div class="reviewstxt">
                        《高效能人士的七个习惯》高效能人士的七个习惯高效能人士的七个习惯高效能人士的七个习惯高效能人士的七个习惯高效能人士的七个习惯高效能人士的七个习惯高效能人士的七个习惯高效能人士的七个习惯高效能人士的七个习惯高效能人...</div>
                    <div class="reviewsbotom">
                        <img src="images/month/icon_pl.jpg" width="16" height="16">
                        7
                        <img src="images/month/icon_pl2.jpg" width="16" height="16">
                        1</div>
                </div>
            </div>
        </div>
        <!--第四部分开始特价专区-->
        <div class="w970 fleft">
            <div class="newbook-titile">
                <h3 class="col-wi50 fleft p10">
                    特价专区</h3>
                <span class="fright mp10"><a href="#">more </a>&nbsp; ></span></div>
            <div class="fl w1000 col_tab_mod mt20 cbr">
                <div class="col_con_wrap pdt20" id="SpecialOfferItem">
                    <!-- tab1 
                    <ul class="icon_list_mod icon_list_mod_1 fl">
                        <li><a href="#" target="_blank">
                            <img src="images/book1.jpg" data-original="" width="186" height="184" alt="1" /></a>
                            <a class="icon_tit" target="_blank" href="#"><strong>麦肯锡问题</strong><br />
                                <strong class="deltxt">￥35.00</strong><br />
                                <span>￥23.50</span></a> </li>
                        <li><a href="#" target="_blank">
                            <img src="images/book2.jpg" data-original="" width="186" height="184" alt="1" /></a>
                            <a class="icon_tit" target="_blank" href="#"><strong>麦肯锡问题</strong><br />
                                <strong class="deltxt">￥35.00</strong><br />
                                <span>￥23.50</span></a> </li>
                        <li><a href="#" target="_blank">
                            <img src="images/book3.jpg" data-original="" width="186" height="184" alt="1" /></a>
                            <a class="icon_tit" target="_blank" href="#"><strong>麦肯锡问题</strong><br />
                                <strong class="deltxt">￥35.00</strong><br />
                                <span>￥23.50</span></a> </li>
                        <li><a href="#" target="_blank">
                            <img src="images/book4.jpg" data-original="" width="186" height="184" alt="1" /></a>
                            <a class="icon_tit" target="_blank" href="#"><strong>麦肯锡问题</strong><br />
                                <strong class="deltxt">￥35.00</strong><br />
                                <span>￥23.50</span></a> </li>
                        <li><a href="#" target="_blank">
                            <img src="images/book5.jpg" data-original="" width="186" height="184" alt="1" /></a>
                            <a class="icon_tit" target="_blank" href="#"><strong>麦肯锡问题</strong><br />
                                <strong class="deltxt">￥35.00</strong><br />
                                <span>￥23.50</span></a> </li>
                        <li><a href="#" target="_blank">
                            <img src="images/book1.jpg" data-original="" width="186" height="184" alt="1" /></a>
                            <a class="icon_tit" target="_blank" href="#"><strong>麦肯锡问题</strong><br />
                                <strong class="deltxt">￥35.00</strong><br />
                                <span>￥23.50</span></a> </li>
                        <li><a href="#" target="_blank">
                            <img src="images/book2.jpg" data-original="" width="186" height="184" alt="1" /></a>
                            <a class="icon_tit" target="_blank" href="#"><strong>麦肯锡问题</strong><br />
                                <strong class="deltxt">￥35.00</strong><br />
                                <span>￥23.50</span></a> </li>
                        <li><a href="#" target="_blank">
                            <img src="images/book3.jpg" data-original="" width="186" height="184" alt="1" /></a>
                            <a class="icon_tit" target="_blank" href="#"><strong>麦肯锡问题</strong><br />
                                <strong class="deltxt">￥35.00</strong><br />
                                <span>￥23.50</span></a> </li>
                        <li><a href="#" target="_blank">
                            <img src="images/book4.jpg" data-original="" width="186" height="184" alt="1" /></a>
                            <a class="icon_tit" target="_blank" href="#"><strong>麦肯锡问题</strong><br />
                                <strong class="deltxt">￥35.00</strong><br />
                                <span>￥23.50</span></a> </li>
                        <li><a href="#" target="_blank">
                            <img src="images/book5.jpg" data-original="" width="186" height="184" alt="1" /></a>
                            <a class="icon_tit" target="_blank" href="#"><strong>麦肯锡问题</strong><br />
                                <strong class="deltxt">￥35.00</strong><br />
                                <span>￥23.50</span></a> </li>
                    </ul>-->
                </div>
            </div>
        </div>
        <!--第四部分结束特价专-->
    </div>
    <!--第四部分结束-->
    <div class="cbr mh10 ">
    </div>
    <!--第五部分开始ad-->
    <div class="content">
        <div class="ad1">
            <ul>
                <li><a href="#">
                    <img src="images/ad9.jpg"></a></li>
                <li><a href="#">
                    <img src="images/ad11.jpg"></a></li>
                <li><a href="#" class="fright">
                    <img src="images/ad10.jpg"></a></li>
            </ul>
        </div>
    </div>
    <!--第五部分结束ad-->
    <!--第六部分开始ad-->
    <div class="cbr mh10 ">
    </div>
    <div class="content">
        <div class="m200 nav-left-tab fleft">
            <!--免费试读 排行-->
            <div class="title">
                免费试读排行</div>
            <div class="title_con">
                <div class="side_tit_mod">
                    <ul class="hover_list">
                        <li class="on"><a class='nodisplay' href="#" target="_blank"><span class="icon_orang fleft p m10 mh10">
                            1</span>大数据时代3</a>
                            <dl class="art_mod_2 clearfix display">
                                <span class="icon_orang fleft">1</span>
                                <dd class="pic_title_mod fleft ">
                                    <a href="#" target="_blank">
                                        <img src="images/month/num1.jpg" width="68" height="68" data-original="images/month/num1.jpg" /></a></dd>
                                <dt class="p10"><a href="#" target="_blank">大数据时代</a></dt>
                                <dd class="normal_con">
                                    评论(10000)</dd>
                                <dd class="link_block">
                                    ￥35.00</dd>
                            </dl>
                        </li>
                        <li><a href="#" target="_blank"><span class="icon_orang fleft p m10 mh10">2</span>大数据时代2</a>
                            <dl class="art_mod_2 clearfix">
                                <span class="icon_orang fleft">2</span>
                                <dd class="pic_title_mod fleft ">
                                    <a href="#" target="_blank">
                                        <img src="images/month/num1.jpg" width="68" height="68" /></a></dd>
                                <dt class="p10"><a href="#" target="_blank">大数据时代</a></dt>
                                <dd class="normal_con">
                                    评论(10000)</dd>
                                <dd class="link_block">
                                    ￥35.00</dd>
                            </dl>
                        </li>
                        <li><a href="#" target="_blank"><span class="icon_orang fleft p m10 mh10">3</span>大数据时代2</a>
                            <dl class="art_mod_2 clearfix">
                                <span class="icon_orang fleft">3</span>
                                <dd class="pic_title_mod fleft ">
                                    <a href="#" target="_blank">
                                        <img src="images/month/num1.jpg" width="68" height="68" /></a></dd>
                                <dt class="p10"><a href="#" target="_blank">大数据时代</a></dt>
                                <dd class="normal_con">
                                    评论(10000)</dd>
                                <dd class="link_block">
                                    ￥35.00</dd>
                            </dl>
                        </li>
                        <li><a href="#" target="_blank"><span class="icon_orang fleft p m10 mh10">4</span>大数据时代2</a>
                            <dl class="art_mod_2 clearfix">
                                <span class="icon_orang fleft">4</span>
                                <dd class="pic_title_mod fleft ">
                                    <a href="#" target="_blank">
                                        <img src="images/month/num1.jpg" width="68" height="68" /></a></dd>
                                <dt class="p10"><a href="#" target="_blank">大数据时代</a></dt>
                                <dd class="normal_con">
                                    评论(10000)</dd>
                                <dd class="link_block">
                                    ￥35.00</dd>
                            </dl>
                        </li>
                        <li><a href="#" target="_blank"><span class="icon_orang fleft p m10 mh10">5</span>大数据时代2</a>
                            <dl class="art_mod_2 clearfix">
                                <span class="icon_orang fleft">5</span>
                                <dd class="pic_title_mod fleft ">
                                    <a href="#" target="_blank">
                                        <img src="images/month/num1.jpg" width="68" height="68" /></a></dd>
                                <dt class="p10"><a href="#" target="_blank">大数据时代</a></dt>
                                <dd class="normal_con">
                                    评论(10000)</dd>
                                <dd class="link_block">
                                    ￥35.00</dd>
                            </dl>
                        </li>
                    </ul>
                </div>
            </div>
            <!---->
        </div>
        <div class="w970 fleft">
            <!-- 大家都爱读 begin-->
            <div class="like">
                <div class="likebook fleft">
                    <div class="liketitle">
                        大家都爱读</div>
                    <div class="likeul">
                        <ul>
                            <li><a href="#">下栽了一本 <span class="red">做人不要....</span><span class="fright">2014-06-20</span></a></li>
                            <li><a href="#">下栽了一本 <span class="red">做人不要....</span><span class="fright">2014-06-20</span></a></li>
                            <li><a href="#">下栽了一本 <span class="red">做人不要....</span><span class="fright">2014-06-20</span></a></li>
                            <li><a href="#">下栽了一本 <span class="red">做人不要....</span><span class="fright">2014-06-20</span></a></li>
                            <li><a href="#">下栽了一本 <span class="red">做人不要....</span><span class="fright">2014-06-20</span></a></li>
                            <li><a href="#">下栽了一本 <span class="red">做人不要....</span><span class="fright">2014-06-20</span></a></li>
                            <li><a href="#">下栽了一本 <span class="red">做人不要....</span><span class="fright">2014-06-20</span></a></li>
                            <li><a href="#">下栽了一本 <span class="red">做人不要....</span><span class="fright">2014-06-20</span></a></li>
                            <li><a href="#">下栽了一本 <span class="red">做人不要....</span><span class="fright">2014-06-20</span></a></li>
                        </ul>
                    </div>
                    <!--大家都爱读 over-->
                </div>
                <div class="game_content_img2 fleft">
                    <div class="control_btn2">
                        <a class="prev2" id="prev2"></a><a class="next2" id="next2"></a>
                    </div>
                    <div class="img_content2">
                        <div class="imgs_list2" id="imgs_list2">
                            <ul class="clearfix ul_content2" id="ul_content2">
                                <li><a href="#p=1">
                                    <img src="images/ad.jpg" alt="" /></a> </li>
                                <li><a href="#p=2">
                                    <img src="images/ad12.jpg" alt="" /></a> </li>
                                <li><a href="#p=3">
                                    <img src="images/ad.jpg" alt="" /></a> </li>
                                <li><a href="#p=4">
                                    <img src="images/ad.jpg" alt="" /></a> </li>
                                <li><a href="#p=5">
                                    <img src="images/ad12.jpg" alt="" /></a> </li>
                            </ul>
                        </div>
                    </div>
                </div>
                <!--轮播 over-->
            </div>
        </div>
    </div>
    <!--第六部分结束ad-->
    <div class="cbr mh10 ">
    </div>
    <!--第七部分开始ad-->
    <div class="content">
        <div class="adserver">
            <ul>
                <li><a href="#">
                    <img src="images/adserver/ad1.jpg"></a></li>
                <li><a href="#">
                    <img src="images/adserver/ad2.jpg"></a></li>
                <li><a href="#">
                    <img src="images/adserver/ad3.jpg"></a></li>
                <li><a href="#">
                    <img src="images/adserver/ad4.jpg"></a></li>
                <li><a href="#">
                    <img src="images/adserver/ad5.jpg"></a></li>
                <li><a href="#">查看更多出版社>></a></li>
            </ul>
        </div>
        <div class="cor-line-bottom mt10">
        </div>
    </div>
    <!--第七部分结束ad-->
    <div class="cbr mh10 ">
    </div>
    <!--流程开始-->
    <div class="content">
        <div class="m-pull-210">
            <div class="procedures1">
                <img src="images/icon1.jpg" width="39" height="36"><h3>
                    购物指南</h3>
                <b>购买流程<br />
                </b><b>积分说明<br />
                </b><b>发票制度<br />
                </b>
            </div>
            <div class="procedures1">
                <img src="images/icon2.jpg" width="39" height="36"><h3>
                    购物指南</h3>
                <b>购买流程<br />
                </b><b>积分说明<br />
                </b><b>发票制度<br />
                </b>
            </div>
            <div class="procedures1">
                <img src="images/icon3.jpg" width="39" height="36"><h3>
                    购物指南</h3>
                <b>购买流程<br />
                </b><b>积分说明<br />
                </b><b>发票制度<br />
                </b>
            </div>
            <div class="procedures1">
                <img src="images/icon4.jpg" width="39" height="36"><h3>
                    购物指南</h3>
                <b>购买流程<br />
                </b><b>积分说明<br />
                </b><b>发票制度<br />
                </b>
            </div>
            <div class="procedures1">
                <img src="images/icon5.jpg" width="39" height="36"><h3>
                    购物指南</h3>
                <b>购买流程<br />
                </b><b>积分说明<br />
                </b><b>发票制度<br />
                </b>
            </div>
            <div class="procedures1">
                <img src="images/icon6.jpg" width="39" height="36"><h3>
                    购物指南</h3>
                <b>购买流程<br />
                </b><b>积分说明<br />
                </b><b>发票制度<br />
                </b>
            </div>
        </div>
        <div class="cor-line-bottom cbr mt10">
        </div>
    </div>
    <div class="cbr mh10 ">
    </div>
</asp:Content>
