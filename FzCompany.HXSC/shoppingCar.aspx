<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true"
    CodeBehind="shoppingCar.aspx.cs" Inherits="FzCompany.HXSC.shoppingCart1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="cbr mh10">
    </div>
    <div class="content">
        <!--左导航开始-->
        <div class="m200 nav-left-tab fleft" style="display: none;">
            <div class="leftnav_title">
                我的书城</div>
            <div class="main_bar_nav_sub">
                <dl>
                    <dt>
                        <img src="images/licon1.jpg" width="20" height="20" class="icon-pad"><a href="javascript:;">个人信息</a></dt>
                    <ul class="text">
                        <li><a href="saveCenter.html" target="erp_frame" title="安全中心">安全中心</a></li>
                        <li><a href="deliveryAddress.html" target="erp_frame" title="收货地址">收货地址</a></li>
                        <li class="line"><a href="archives.html" target="erp_frame" title="个人档案">个人档案</a></li>
                    </ul>
                </dl>
                <dl>
                    <dt>
                        <img src="images/licon1.jpg" width="20" height="20" class="icon-pad"><a href="javascript:;">社区中心</a></dt>
                    <ul class="text">
                        <li class="line"><a href="myEvaluation.html" target="erp_frame" title="我的评价">我的评价</a></li>
                    </ul>
                </dl>
                <dl>
                    <dt>
                        <img src="images/licon1.jpg" width="20" height="20" class="icon-pad"><a href="javascript:;">我的交易</a></dt>
                    <ul class="text">
                        <li><a href="myOrder.html" target="erp_frame" title="我的订单" class="on">我的订单</a></li>
                        <li><a href="myCollection.html" target="erp_frame" title="我的收藏">我的收藏</a></li>
                        <li><a href="myBill.html" target="erp_frame" title="我的账单">我的账单</a></li>
                        <li class="line"><a href="oneselfBuyBook.html" target="erp_frame" title="已购图书">已购图书</a></li>
                    </ul>
                </dl>
                <dl>
                    <dt>
                        <img src="images/licon1.jpg" width="20" height="20" class="icon-pad"><a href="javascript:;">我的账号</a></dt>
                    <ul class="text">
                        <li><a href="myBalance.html" target="erp_frame" title="我的余额">我的余额</a></li>
                        <li class="line"><a href="recharge.html" target="erp_frame" title="充值">充值</a></li>
                    </ul>
                </dl>
                <dl>
                    <dt>
                        <img src="images/licon1.jpg" width="20" height="20" class="icon-pad"><a href="javascript:;">自动服务</a></dt>
                    <ul class="text">
                        <li><a href="invoice.html" target="erp_frame" title="补开发票">补开发票</a></li>
                        <li><a href="unsubscribeMessage.html" target="erp_frame" title="退订邮件">退订邮件</a></li>
                        <li><a href="returnGoods.html" target="erp_frame" title="退货">退货</a></li>
                    </ul>
                </dl>
            </div>
        </div>
        <!--左导航结束-->
        <div class="w970 fleft m240">
            <div class="savetitle-titile" style="display: none;">
                <h3 class="col-wi50 fleft m10">
                    我的订单</h3>
                <span class="fright mp10"></span>
            </div>
            <div class="addtab mt10 m8">
                <table width="100%" border="0">
                    <tr>
                        <th class="pull-left">
                            <input type="checkbox">全选
                        </th>
                        <th colspan="4" class="pull-left">
                            <img src="images/shop.png">删除选中图书
                        </th>
                    </tr>
                    <tr>
                        <td width="20%">
                            <div class="fl linebook35">
                                <input type="checkbox"></div>
                            &nbsp;&nbsp;<div class="fl">
                                <img src="images/pj.jpg"></div>
                            &nbsp;&nbsp;
                            <div class="fl">
                                <dl>
                                    我的女神</dl>
                                <dt>￥3.99</dt></div>
                        </td>
                        <td width="60%">
                            ￥2.99
                        </td>
                        <td width="20%">
                            加入收藏 ｜
                            <img src="images/shop.jpg" class="curpoit">
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <div class="fl linebook35">
                                <input type="checkbox"></div>
                            &nbsp;&nbsp;<div class="fl">
                                <img src="images/pj.jpg"></div>
                            &nbsp;&nbsp;
                            <div class="fl">
                                <dl>
                                    我的女神</dl>
                                <dt>￥3.99</dt></div>
                        </td>
                        <td>
                            ￥2.99
                        </td>
                        <td>
                            加入收藏 ｜
                            <img src="images/shop.jpg" class="curpoit">
                        </td>
                    </tr>
                    <tr>
                        <th class="pull-left">
                            <input type="checkbox">全选
                        </th>
                        <th colspan="4" class="pull-left">
                            <img src="images/shop.png">删除选中图书
                        </th>
                    </tr>
                </table>
            </div>
            <!--over-->
            <div class="fleft ">
                <a href="#" class="orange">再去逛逛</a></div>
            <div class="fright m8">
                <input type="button" name="" value="去结算" class="regbtn4">
            </div>
        </div>
        <div class="cor-line-bottom cbr mt10">
        </div>
    </div>
    <div class="cbr mh10 ">
    </div>
</asp:Content>
