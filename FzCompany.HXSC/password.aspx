<%@ Page Title="" Language="C#" MasterPageFile="~/BackMaster.Master" AutoEventWireup="true"
    CodeBehind="password.aspx.cs" Inherits="FzCompany.HXSC.password" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="cbr padding-top-60">
    </div>
    <div class="line-margin-960">
        <div class="regline">
            <div class="regtitle p10">
                找回密码</div>
        </div>
        <div class="regcontent mh10">
            <div class="regline line35 ">
                <div class="w80 m235 pull-right fleft mp10">
                    手机号</div>
                <div class="w320 fleft ">
                    <input type="text" name="" value="" class="regbtn1"></div>
                <div class="w320 fleft  pull-left p10 color-hui">
                    <input type="button" name="" value="发送短信" class="regbtn3"></div>
                <div class="cbr">
                </div>
            </div>
            <div class="regline line35">
                <div class="w80 m235 pull-right fleft mp10">
                    验证码</div>
                <div class="w320  fleft">
                    <input type="text" name="" value="" class="regbtn1"></div>
                <div class="w320 fleft  pull-left p10 color-hui">
                    是否正确</div>
                <div class="cbr">
                </div>
            </div>
            <div class="regline line35">
                <div class="w80 m235 pull-right fleft mp10">
                    &nbsp;</div>
                <div class="w320  fleft">
                    <input type="button" name="" value="下一步" class="regbtn2" onclick=" window.location.href = 'setpassword.html'"></div>
                <div class="cbr">
                </div>
            </div>
        </div>
    </div>
    <div class="cor-line-bottom cbr mt10 margin-top-60">
    </div>
</asp:Content>
