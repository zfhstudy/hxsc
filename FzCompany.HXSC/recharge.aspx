<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true"
    CodeBehind="recharge.aspx.cs" Inherits="FzCompany.HXSC.recharge" %>

<%@ Register TagPrefix="uc" TagName="ucSample" Src="~/MySCControl.ascx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="content">
        <uc:ucSample ID="uc1" runat="server" />
        <div class="w970 fleft">
            <div class="savetitle-titile">
                <h3 class="col-wi50 fleft m10">
                    充值</h3>
                <span class="fright mp10"></span>
            </div>
            <!--begin-->
            <div class="saveline m240">
                <div class="w80 fleft pull-right mp10">
                    充值金额</div>
                <div class="w320 fleft ">
                    <input type="text" name="" value="" class="regbtn1"></div>
                <div class="cbr">
                </div>
            </div>
            <div class="saveline m240">
                <div class="w80 fleft pull-right mp10">
                    支付方式</div>
                <div class="fleft">
                    <input type="radio" class="lineradio"><img src="images/zc2icon.jpg"><input type="radio"
                        class="lineradio m10"><img src="images/zc1icon.jpg"></div>
                <div class="cbr">
                </div>
            </div>
            <div class="saveline m240">
                <div class="w80 fleft pull-right mp10">
                    &nbsp;</div>
                <div class="w320  fleft">
                    <input type="button" name="" value="下一步" class="regbtn2"></div>
                <div class="cbr">
                </div>
            </div>
            <!--over-->
        </div>
        <div class="cor-line-bottom cbr mt10">
        </div>
    </div>
</asp:Content>
