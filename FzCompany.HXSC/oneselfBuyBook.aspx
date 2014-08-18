<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true"
    CodeBehind="oneselfBuyBook.aspx.cs" Inherits="FzCompany.HXSC.oneselfBuyBook" %>

<%@ Register TagPrefix="uc" TagName="ucSample" Src="~/MySCControl.ascx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="content">
        <uc:ucSample ID="uc1" runat="server" />
        <div class="w970 fleft">
            <div class="savetitle-titile">
                <h3 class="col-wi50 fleft m10">
                    已购图书</h3>
                <span class="fright mp10"></span>
            </div>
            <!--begin-->
            <div class="addtab mt10 m8">
                <table width="100%" border="0" class="gwc_tb2">
                    <tr>
                        <th width="20%">
                            商品信息
                        </th>
                        <th width="20%">
                            价格
                        </th>
                        <th width="20%">
                            购买时间
                        </th>
                        <th width="20%">
                            订单号
                        </th>
                        <th width="20%">
                            操作
                        </th>
                    </tr>
                    <tr>
                        <td>
                            <div class="fl">
                                <img src="images/pj.jpg" width="52" height="52"></div>
                            &nbsp;<div class="buyline35 fl">
                                修仙</div>
                        </td>
                        <td>
                            ￥35.0
                        </td>
                        <td>
                            2014-06-06
                        </td>
                        <td>
                            85421455
                        </td>
                        <td>
                            <input type="button" class="regbtn4" value="评价">
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <div class="fl">
                                <img src="images/pj.jpg" width="52" height="52"></div>
                            &nbsp;<div class="buyline35 fl">
                                修仙</div>
                        </td>
                        <td>
                            ￥35.0
                        </td>
                        <td>
                            2014-06-06
                        </td>
                        <td>
                            85421455
                        </td>
                        <td>
                            <input type="button" class="regbtn4" value="评价">
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
