<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true"
    CodeBehind="myBill.aspx.cs" Inherits="FzCompany.HXSC.myBill" %>

<%@ Register TagPrefix="uc" TagName="ucSample" Src="~/MySCControl.ascx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="content">
        <uc:ucSample ID="uc1" runat="server" />
        <div class="w970 fleft">
            <div class="savetitle-titile">
                <h3 class="col-wi50 fleft m10">
                    我的账单</h3>
                <span class="fright mp10"></span>
            </div>
            <!--begin-->
            <div class="addtab mt10 m8">
                <table width="100%" border="0" class="gwc_tb2">
                    <tr>
                        <th>
                            日期
                        </th>
                        <th>
                            支出（-）
                        </th>
                        <th>
                            存入（+）
                        </th>
                        <th>
                            支出方式
                        </th>
                        <th>
                            用途
                        </th>
                        <th>
                            订单号
                        </th>
                    </tr>
                    <tr>
                        <td width="14%">
                            2014-06-06
                        </td>
                        <td width="14%">
                            ￥100
                        </td>
                        <td width="14%" class="tb1_td4">
                            --
                        </td>
                        <td width="14%">
                            网上银行
                        </td>
                        <td width="14%">
                            支付
                        </td>
                        <td width="14%">
                            123654789
                        </td>
                    </tr>
                    <tr>
                        <td width="14%">
                            2014-06-06
                        </td>
                        <td width="14%">
                            ￥100
                        </td>
                        <td width="14%" class="tb1_td4">
                            --
                        </td>
                        <td>
                            网上银行
                        </td>
                        <td width="8%">
                            支付
                        </td>
                        <td width="8%">
                            123654789
                        </td>
                    </tr>
                </table>
            </div>
            <!--over-->
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
