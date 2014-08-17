<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true"
    CodeBehind="invoice.aspx.cs" Inherits="FzCompany.HXSC.invoice" %>

<%@ Register TagPrefix="uc" TagName="ucSample" Src="~/MySCControl.ascx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="content">
        <uc:ucSample ID="uc1" runat="server" />
        <div class="w970 fleft">
            <div class="savetitle-titile">
                <h3 class="col-wi50 fleft m10">
                    补开发票</h3>
                <span class="fright mp10"></span>
            </div>
            <!--begin-->
            <div class="addtab mt10 m8">
                <table width="100%" border="0" class="gwc_tb2">
                    <tr>
                        <th width="20%">
                            订单号
                        </th>
                        <th width="20%">
                            下单时间
                        </th>
                        <th width="20%">
                            发货时间
                        </th>
                        <th width="20%">
                            发票金额
                        </th>
                        <th width="20%">
                            操作
                        </th>
                    </tr>
                    <tr>
                        <td>
                            <div class="fl height55">
                                <input type="checkbox"></div>
                            &nbsp;<div class="buyline35 fl">
                                5124154</div>
                        </td>
                        <td>
                            2014-07-09
                        </td>
                        <td>
                            2014-07-09
                        </td>
                        <td>
                            $5
                        </td>
                        <td>
                            <input type="button" class="regbtn4" value="开 票">
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <div class="fl height55">
                                <input type="checkbox"></div>
                            &nbsp;<div class="buyline35 fl">
                                5124154</div>
                        </td>
                        <td>
                            2014-07-09
                        </td>
                        <td>
                            2014-07-09
                        </td>
                        <td>
                            $5
                        </td>
                        <td>
                            <input type="button" class="regbtn4" value="开 票">
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
