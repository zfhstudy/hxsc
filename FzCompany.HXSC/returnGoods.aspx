<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true"
    CodeBehind="returnGoods.aspx.cs" Inherits="FzCompany.HXSC.returnGoods" %>

<%@ Register TagPrefix="uc" TagName="ucSample" Src="~/MySCControl.ascx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="content">
        <uc:ucSample ID="uc1" runat="server" />
        <div class="w970 fleft">
            <div class="savetitle-titile">
                <h3 class="col-wi50 fleft m10">
                    退货</h3>
                <span class="fright mp10"></span>
            </div>
            <!--begin-->
            <div class="cbr">
            </div>
            <div class="returntitile m8">
                申请退货</div>
            <div class="addtab mt10 m8">
                <table width="100%" border="0">
                    <tr>
                        <th colspan="2" width="19%">
                            商品信息
                        </th>
                        <th width="13%">
                            价格
                        </th>
                        <th width="26%">
                            订单状态
                        </th>
                        <th width="10%">
                            操作
                        </th>
                    </tr>
                    <tr>
                        <td width="5%">
                            <img src="images/pj.jpg">
                        </td>
                        <td width="14%">
                            <div class="pull-left">
                                我的女神</div>
                        </td>
                        <td width="14%">
                            $35.0
                        </td>
                        <td width="14%">
                            已发布
                        </td>
                        <td width="8%">
                            <input type="button" class="regbtn4" value="退 货">
                        </td>
                    </tr>
                    <tr>
                        <td width="5%">
                            <img src="images/pj.jpg">
                        </td>
                        <td width="14%">
                            <div class="pull-left">
                                我的女神</div>
                        </td>
                        <td width="14%">
                            $35.0
                        </td>
                        <td width="14%">
                            已发布
                        </td>
                        <td width="8%">
                            <input type="button" class="regbtn4" value="退 货">
                        </td>
                    </tr>
                </table>
            </div>
            <div class="addline m8">
                <div class="fl mp10">
                    <input type="checkbox">全选
                </div>
                &nbsp; &nbsp;<div class="pagebtn mt10">
                    合并退货</div>
            </div>
            <!--over-->
            <!--begin-->
            <div class="cbr">
            </div>
            <div class="returntitile margin-top-60">
                退货记录</div>
            <div class="addtab mt10 m8">
                <table width="100%" border="0">
                    <tr>
                        <th colspan="2" width="19%">
                            商品信息
                        </th>
                        <th width="13%">
                            价格
                        </th>
                        <th width="26%">
                            订单状态
                        </th>
                        <th width="10%">
                            操作
                        </th>
                    </tr>
                    <tr>
                        <td width="5%">
                            <img src="images/pj.jpg">
                        </td>
                        <td width="14%">
                            <div class="pull-left">
                                我的女神</div>
                        </td>
                        <td width="14%">
                            $35.0
                        </td>
                        <td width="14%">
                            已发布
                        </td>
                        <td width="8%">
                            <input type="button" class="regbtn4" value="退 货">
                        </td>
                    </tr>
                    <tr>
                        <td width="5%">
                            <img src="images/pj.jpg">
                        </td>
                        <td width="14%">
                            <div class="pull-left">
                                我的女神</div>
                        </td>
                        <td width="14%">
                            $35.0
                        </td>
                        <td width="14%">
                            已发布
                        </td>
                        <td width="8%">
                            <input type="button" class="regbtn4" value="退 货">
                        </td>
                    </tr>
                </table>
            </div>
            <!--over-->
        </div>
        <div class="cor-line-bottom cbr mt10">
        </div>
    </div>
</asp:Content>
