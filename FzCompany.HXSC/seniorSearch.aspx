<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true"
    CodeBehind="seniorSearch.aspx.cs" Inherits="FzCompany.HXSC.seniorSearch" %>

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
            <div class="savetitle-titile">
                <h3 class="col-wi50 fleft m10">
                    高级搜索</h3>
                <span class="fright mp10"></span>
            </div>
            <div class="cbr">
            </div>
            <div class="returntitile m8">
                基本条件</div>
            <div class="searline">
                <div class="w80 fleft pull-right mp10">
                    书名：</div>
                <div class="w320 fleft ">
                    <input type="text" name="" value="" class="regbtn1"></div>
                <div class="fleft pull-left ptop10">
                    是否正确</div>
                <div class="cbr">
                </div>
            </div>
            <div class="searline">
                <div class="w80 fleft pull-right mp10">
                    作者、译者：</div>
                <div class="w320 fleft ">
                    <input type="text" name="" value="" class="regbtn1"></div>
                <div class="cbr">
                </div>
            </div>
            <div class="searline">
                <div class="w80 fleft pull-right mp10">
                    关键字：</div>
                <div class="w320 fleft ">
                    <input type="text" name="" value="" class="regbtn1"></div>
                <div class="cbr">
                </div>
            </div>
            <div class="searline">
                <div class="w80 fleft pull-right mp10">
                    出版社：</div>
                <div class="w320 fleft ">
                    <input type="text" name="" value="" class="regbtn1"></div>
                <div class="cbr">
                </div>
            </div>
            <div class="searline">
                <div class="w80 fleft pull-right mp10">
                    isbn：</div>
                <div class="w320 fleft ">
                    <input type="text" name="" value="" class="regbtn1"></div>
                <div class="cbr">
                </div>
            </div>
            <div class="returntitile m8">
                其他条件</div>
            <div class="searline">
                <div class="w80 fleft pull-right mp10">
                    分类：</div>
                <div class="w320 fleft ">
                    <select class="regbtn1">
                        <option>新书</option>
                    </select></div>
                <div class="cbr">
                </div>
            </div>
            <div class="searline">
                <div class="w80 fleft pull-right mp10">
                    价格区间：</div>
                <div class="w320 fleft ">
                    <input type="text" name="" value="" class="regbtn1"></div>
                <div class="fleft mp10 ptop10">
                    到</div>
                <div class="w320 fleft ">
                    <input type="text" name="" value="" class="regbtn1"></div>
                <div class="cbr">
                </div>
            </div>
            <div class="searline">
                <div class="w80 fleft pull-right mp10">
                    出版时间期间：</div>
                <div class="w320 fleft ">
                    <input type="text" name="" value="" class="regbtn1"></div>
                <div class="fleft mp10 ptop10">
                    到</div>
                <div class="w320 fleft ">
                    <input type="text" name="" value="" class="regbtn1"></div>
                <div class="cbr">
                </div>
            </div>
            <div class="searline">
                <div class="w80 fleft pull-right mp10">
                    &nbsp;</div>
                <div class="w80 fleft ">
                    <input type="button" name="" value="搜索" class="regbtn4"></div>
                <div class=" fleft  ptop10">
                    清空搜索条件</div>
                <div class="cbr">
                </div>
            </div>
        </div>
        <div class="cor-line-bottom cbr mt10">
        </div>
    </div>
    <div class="cbr mh10 ">
    </div>
</asp:Content>
