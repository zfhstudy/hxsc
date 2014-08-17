<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true"
    CodeBehind="saveCenter.aspx.cs" Inherits="FzCompany.HXSC.saveCenter" %>

<%@ Register TagPrefix="uc" TagName="ucSample" Src="~/MySCControl.ascx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="content">
        <uc:ucSample ID="uc1" runat="server" />
        <div class="w970 fleft">
            <div class="savetitle-titile">
                <h3 class="col-wi50 fleft m10">
                    安全中心</h3>
                <span class="fright mp10"></span>
            </div>
            <!--begin-->
            <div class="saveline m240">
                <div class="w80 fleft pull-right mp10">
                    手机号</div>
                <div class="w320 fleft ">
                    <input type="text" name="" value="" class="regbtn1"></div>
                <div class="w80 fleft color-hui pull-left ptop10">
                    是否正确</div>
                <div class="cbr">
                </div>
            </div>
            <div class="saveline m240">
                <div class="w80 fleft pull-right mp10">
                    验证码</div>
                <div class="w320  fleft">
                    <input type="text" name="" value="" class="regbtn1"></div>
                <div class="w320 fleft  pull-left color-hui ptop10">
                    是否正确</div>
                <div class="cbr">
                </div>
            </div>
            <div class="saveline m240">
                <div class="w80 fleft pull-right mp10">
                    &nbsp;</div>
                <div class="w320  fleft">
                    <input type="button" name="" value="保 存" class="regbtn2"></div>
                <div class="cbr">
                </div>
            </div>
            <!--over-->
        </div>
        <div class="cor-line-bottom cbr mt10">
        </div>
    </div>
</asp:Content>
