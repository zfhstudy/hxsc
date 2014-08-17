<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true"
    CodeBehind="myOrder.aspx.cs" Inherits="FzCompany.HXSC.myOrder" %>

<%@ Register TagPrefix="uc" TagName="ucSample" Src="~/MySCControl.ascx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="content">
        <uc:ucSample ID="uc1" runat="server" />
        <div class="w970 fleft">
            <div class="savetitle-titile">
                <h3 class="col-wi50 fleft m10">
                    我的订单</h3>
                <span class="fright mp10"></span>
            </div>
            <!--begin-->
            <div class="addtab mt10">
                <table width="100%" border="0">
                    <tr>
                        <th colspan="2" width="19%">
                            商品信息
                        </th>
                        <th width="13%">
                            实付款
                        </th>
                        <th colspan="2" width="26%">
                            订单信息
                        </th>
                        <th width="10%">
                            操作
                        </th>
                    </tr>
                </table>
            </div>
            <div class="addline m8">
                <div class="fl mp10">
                    <input type="checkbox">全选
                </div>
                &nbsp; &nbsp;<div class="pagebtn mt10">
                    合并支付</div>
            </div>
            <div class="addtab mt10 m8">
                <table width="100%" border="0">
                    <tr>
                        <th colspan="3" class="pull-left">
                            <input type="checkbox">订单号：00000000001
                        </th>
                        <th colspan="3" class="pull-left">
                            下单时间:2014-06-18
                        </th>
                    </tr>
                    <tr>
                        <td width="5%">
                            <img src="images/pj.jpg">
                        </td>
                        <td width="14%">
                            XXXXXXXXXXX
                        </td>
                        <td width="14%">
                            $35.0
                        </td>
                        <td width="14%">
                            未付
                        </td>
                        <td width="14%">
                            <a href="#">查 看</a><br />
                            <a href="#">修 改</a><br />
                            <a href="#">取 消</a>
                        </td>
                        <td width="8%">
                            <input type="button" class="regbtn4" value="支 付">
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <img src="images/pj.jpg">
                        </td>
                        <td>
                            XXXXXXXXXXX
                        </td>
                        <td>
                            $35.0
                        </td>
                        <td>
                            未付
                        </td>
                        <td width="14%">
                            <a href="#">查 看</a><br />
                            <a href="#">修 改</a><br />
                            <a href="#">取 消</a>
                        </td>
                        <td>
                            <input type="button" class="regbtn4" value="支 付">
                        </td>
                    </tr>
                </table>
            </div>
            <!--over-->
            <div class="addtab mt10">
                <table width="100%" border="0">
                    <tr>
                        <th colspan="2">
                            <input type="checkbox">订单号：00000000001
                        </th>
                        <th colspan="3" class="pull-left">
                            下单时间:2014-06-18
                        </th>
                    </tr>
                    <tr>
                        <td width="5%">
                            <img src="images/pj.jpg">
                        </td>
                        <td width="14%">
                            XXXXXXXXXXX
                        </td>
                        <td width="14%">
                            <div class="pjx">
                            </div>
                            <div class="pjx">
                            </div>
                            <div class="pjx">
                            </div>
                            <div class="pjx2">
                            </div>
                        </td>
                        <td width="14%">
                            情节丰富，内容详尽，图片好看
                        </td>
                        <td width="8%">
                            <input type="button" class="regbtn4" value="追加评论">
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <img src="images/pj.jpg">
                        </td>
                        <td>
                            XXXXXXXXXXX
                        </td>
                        <td>
                            <div class="pjx">
                            </div>
                            <div class="pjx">
                            </div>
                            <div class="pjx">
                            </div>
                            <div class="pjx2">
                            </div>
                        </td>
                        <td>
                            情节丰富，内容详尽，图片好看
                        </td>
                        <td>
                            <input type="button" class="regbtn4" value="追加评论">
                        </td>
                    </tr>
                </table>
            </div>
            <div class="addtab mt10">
                <table width="100%" border="0">
                    <tr>
                        <th colspan="2">
                            <input type="checkbox">订单号：00000000001
                        </th>
                        <th colspan="3" class="pull-left">
                            下单时间:2014-06-18
                        </th>
                    </tr>
                    <tr>
                        <td width="5%">
                            <img src="images/pj.jpg">
                        </td>
                        <td width="14%">
                            XXXXXXXXXXX
                        </td>
                        <td width="14%">
                            <div class="pjx">
                            </div>
                            <div class="pjx">
                            </div>
                            <div class="pjx">
                            </div>
                            <div class="pjx2">
                            </div>
                        </td>
                        <td width="14%">
                            情节丰富，内容详尽，图片好看
                        </td>
                        <td width="8%">
                            <input type="button" class="regbtn4" value="追加评论">
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <img src="images/pj.jpg">
                        </td>
                        <td>
                            XXXXXXXXXXX
                        </td>
                        <td>
                            <div class="pjx">
                            </div>
                            <div class="pjx">
                            </div>
                            <div class="pjx">
                            </div>
                            <div class="pjx2">
                            </div>
                        </td>
                        <td>
                            情节丰富，内容详尽，图片好看
                        </td>
                        <td>
                            <input type="button" class="regbtn4" value="追加评论">
                        </td>
                    </tr>
                </table>
            </div>
            <div class="page mt10 fright">
                <div class="pagebtn">
                    <a href="#">上一页</a></div>
                <div class="pagebtntxt orange">
                    1</div>
                <div class="pagebtntxt">
                    2</div>
                <div class="pagebtn">
                    <a href="#">下一页</a></div>
            </div>
        </div>
        <div class="cor-line-bottom cbr mt10">
        </div>
    </div>
</asp:Content>
