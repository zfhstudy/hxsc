<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true"
    CodeBehind="myBalance.aspx.cs" Inherits="FzCompany.HXSC.myBalance" %>

<%@ Register TagPrefix="uc" TagName="ucSample" Src="~/MySCControl.ascx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="content">
        <uc:ucSample ID="uc1" runat="server" />
        <div class="w970 fleft">
            <div class="savetitle-titile">
                <h3 class="col-wi50 fleft m10">
                    我的余额</h3>
                <span class="fright mp10"></span>
            </div>
            <!--begin-->
            <div class="saveline m420">
                <div class="w80 fleft pull-right mp10">
                    可用余额</div>
                <div class="w320 fleft ">
                    ￥100</div>
                <div class="cbr">
                </div>
            </div>
            <div class="saveline m420">
                <div class="w80 fleft pull-right mp10">
                    锁定余额</div>
                <div class="fleft">
                    ￥0</div>
                <div class="cbr">
                </div>
            </div>
            <div class="saveline m420">
                <div class="w80 fleft pull-right mp10">
                    帐户状态</div>
                <div class="fleft">
                    有效</div>
                <div class="cbr">
                </div>
            </div>
            <div class="saveline m360">
                <div class="w80 fleft pull-right mp10">
                    &nbsp;</div>
                <div class="w320  fleft">
                    <input type="button" name="" value="充 值" class="regbtn4"></div>
                <div class="cbr">
                </div>
            </div>
            <!--over-->
        </div>
        <div class="cor-line-bottom cbr mt10">
        </div>
    </div>
</asp:Content>
