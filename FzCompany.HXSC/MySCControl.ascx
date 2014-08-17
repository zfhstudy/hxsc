<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="MySCControl.ascx.cs"
    Inherits="FzCompany.HXSC.MySCControl" %>
<!--左导航开始-->
<div class="m200 nav-left-tab fleft">
    <div class="leftnav_title">
        我的书城</div>
    <div class="main_bar_nav_sub">
        <dl>
            <dt>
                <img src="images/licon1.jpg" width="20" height="20" class="icon-pad"><a href="javascript:;">个人信息</a></dt>
            <ul class="text">
                <li><a href="saveCenter.html" target="erp_frame" title="安全中心">安全中心</a></li>
                <li><a href="deliveryAddress.html" target="erp_frame" title="收货地址">收货地址</a></li>
                <li class="line"><a href="archives.html" target="erp_frame" title="个人档案" class="on">
                    个人档案</a></li>
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
                <li><a href="myOrder.html" target="erp_frame" title="我的订单">我的订单</a></li>
                <li><a href="myCollection.html" target="erp_frame" title="我的收藏">我的收藏</a></li>
                <li><a href="myBill.html" target="erp_frame" title="我的账单">我的账单</a></li>
                <li class="line"><a href="oneselfBuyBook.aspx" target="erp_frame" title="已购图书">已购图书</a></li>
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
<script type="text/javascript">
    //左边导航栏
    $(".main_bar_nav_sub dt").toggle(function () {
        $(this).next(".text").animate({ height: 'toggle', opacity: 'toggle' }, "slow");
    }, function () { $(this).next(".text").animate({ heigth: 'toggle', opacity: 'toggle' }, "slow"); })
</script>
