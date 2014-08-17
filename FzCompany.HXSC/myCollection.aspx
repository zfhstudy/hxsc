<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true"
    CodeBehind="myCollection.aspx.cs" Inherits="FzCompany.HXSC.myCollection" %>

<%@ Register TagPrefix="uc" TagName="ucSample" Src="~/MySCControl.ascx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="content">
        <uc:ucSample ID="uc1" runat="server" />
        <div class="w970 fleft">
            <div class="savetitle-titile">
                <h3 class="col-wi50 fleft m10">
                    我的收藏</h3>
                <span class="fright mp10"></span>
            </div>
            <div class="addline m8">
                <div class="fl mp10">
                    <input type="checkbox">全选
                </div>
                &nbsp; &nbsp;<div class="pagebtn mt10">
                    批量购买</div>
                &nbsp; &nbsp;<div class="pagebtn mt10">
                    批量删除</div>
            </div>
            <!--begin-->
            <div class="addtab mt10 m8">
                <table width="100%" border="0" class="gwc_tb2">
                    <tr>
                        <th colspan="2">
                            <input type="checkbox">订单号：00000000001
                        </th>
                        <th>
                            金额
                        </th>
                        <th>
                            数量
                        </th>
                    </tr>
                    <tr>
                        <td width="14%">
                            <input type="checkbox" style="height: 55px;"><img src="images/pj.jpg">
                        </td>
                        <td width="14%">
                            XXXXXXXXXXX
                        </td>
                        <td width="14%" class="tb1_td4">
                            35.0
                        </td>
                        <td>
                            <input class="min" name="" style="width: 20px; height: 18px; border: 1px solid #ccc;"
                                type="button" value="-" />
                            <input class="text_box" name="" type="text" value="1" style="width: 30px; text-align: center;
                                border: 1px solid #ccc;" />
                            <input class="add" name="" style="width: 20px; height: 18px; border: 1px solid #ccc;"
                                type="button" value="+" />
                        </td>
                    </tr>
                    <tr>
                        <td width="14%">
                            <input type="checkbox" style="height: 55px;"><img src="images/pj.jpg">
                        </td>
                        <td width="14%">
                            XXXXXXXXXXX
                        </td>
                        <td width="14%" class="tb1_td4">
                            35.0
                        </td>
                        <td>
                            <input class="min" name="" style="width: 20px; height: 18px; border: 1px solid #ccc;"
                                type="button" value="-" />
                            <input class="text_box" name="" type="text" value="1" style="width: 30px; text-align: center;
                                border: 1px solid #ccc;" />
                            <input class="add" name="" style="width: 20px; height: 18px; border: 1px solid #ccc;"
                                type="button" value="+" />
                        </td>
                    </tr>
                    <tr>
                        <td colspan="5">
                            <span>总价：</span><span id="zong1" class="red"></span>
                        </td>
                    </tr>
                </table>
            </div>
            <div class="fright m8">
                <input type="button" class="regbtn4" value="去结算"></div>
            <!--over-->
            <div class="addline m8">
                <div class="fl mp10">
                    <input type="checkbox">全选
                </div>
                &nbsp; &nbsp;<div class="pagebtn mt10">
                    批量购买</div>
                &nbsp; &nbsp;<div class="pagebtn mt10">
                    批量删除</div>
            </div>
            <div class="page mt10 fright margin-top-20">
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
