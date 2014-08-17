<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true"
    CodeBehind="unsubscribeMessage.aspx.cs" Inherits="FzCompany.HXSC.unsubscribeMessage" %>

<%@ Register TagPrefix="uc" TagName="ucSample" Src="~/MySCControl.ascx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="content">
        <uc:ucSample ID="uc1" runat="server" />
        <div class="w970 fleft">
            <div class="savetitle-titile">
                <h3 class="col-wi50 fleft m10">
                    退订邮件</h3>
                <span class="fright mp10"></span>
            </div>
            <!--begin-->
            <div class="cbr">
            </div>
            <div class="addtab mt10 m8">
                <table width="100%" border="0">
                    <tr>
                        <th colspan="6" width="100%" class="pull-left">
                            &nbsp;&nbsp;交易提醒
                        </th>
                    </tr>
                    <tr>
                        <td width="15%">
                            <input type="checkbox" class="mp10">下单成功提醒
                        </td>
                        <td width="15%">
                            <input type="checkbox" class="mp10">未付款提醒
                        </td>
                        <td width="15%">
                            <input type="checkbox" class="mp10">款成功提醒
                        </td>
                        <td width="15%">
                            <input type="checkbox" class="mp10">未评价提醒
                        </td>
                        <td width="15%">
                            <input type="checkbox" class="mp10">下载提醒
                        </td>
                        <td width="15%">
                            <input type="checkbox" class="mp10">收货提醒
                        </td>
                    </tr>
                    <tr>
                        <th colspan="6" width="100%" class="pull-left">
                            &nbsp;&nbsp;促销提醒
                        </th>
                    </tr>
                    <td width="15%">
                        <input type="checkbox" class="mp10">教程辅助
                    </td>
                    <td width="15%">
                        <input type="checkbox" class="mp10">教育图书
                    </td>
                    <td width="15%">
                        <input type="checkbox" class="mp10">社科图书
                    </td>
                    <td width="15%">
                        <input type="checkbox" class="mp10">青少年读物
                    </td>
                    <td width="15%">
                    </td>
                    <td width="15%">
                    </td>
                </table>
            </div>
            <div class="addline m8">
                <div class="fl mp10">
                    <input type="checkbox">全选
                </div>
                &nbsp; &nbsp;<div class="pagebtn mt10">
                    合并退货</div>
                <div class="fright">
                    <input type="button" class="regbtn4" value="确 定"></div>
            </div>
            <!--over-->
        </div>
        <div class="cor-line-bottom cbr mt10">
        </div>
    </div>
</asp:Content>
