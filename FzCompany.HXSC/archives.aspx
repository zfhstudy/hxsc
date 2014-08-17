<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true"
    CodeBehind="archives.aspx.cs" Inherits="FzCompany.HXSC.archives" %>

<%@ Register TagPrefix="uc" TagName="ucSample" Src="~/MySCControl.ascx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="content">
        <uc:ucSample ID="uc1" runat="server" />
        <div class="w970 fleft">
            <div class="savetitle-titile">
                <h3 class="col-wi50 fleft m10">
                    个人档案</h3>
                <span class="fright mp10"></span>
            </div>
            <div class="cbr">
            </div>
            <div class="w200 fleft m8">
                <div class="arch context-center">
                    <img src="images/SR.jpg" width="120" height="120"><br />
                    (尺寸96*96像素，300k之内)
                </div>
                <div class="arch">
                    <form action="Upload.ashx" method="post" enctype="multipart/form-data">
                    <input type="file" name="fileUp" class="" style="float: left;" />
                    </form>
                </div>
            </div>
            <div class="w750 fleft m8 ">
                <div class="w700">
                    <div class="w80 pull-right fleft  p10">
                        昵称：</div>
                    <div class="w300 fleft">
                        <input type="text" name="" value="" class="regbtn1">
                    </div>
                    <div class="  fleft  p10 color-hui">
                        您的昵称可以由英文、中文、数字组成</div>
                </div>
                <div class="cbr">
                </div>
            </div>
            <div class="w700">
                <div class="w80 pull-right fleft  p10 m8">
                    居住地：</div>
                <div class="w300 fleft">
                    <select class="regbtn1 w150 m8">
                        <option>上海省</option>
                        <option>广州省</option>
                    </select>
                    &nbsp;&nbsp;
                    <select class="regbtn1 w150 m8">
                        <option>上海市</option>
                        <option>广州省</option>
                    </select>
                </div>
                <div class="cbr">
                </div>
            </div>
            <!---->
            <div class="w700">
                <div class="w80 pull-right fleft  p10 m8">
                    性别：</div>
                <div class="fleft heightarch">
                    <input type="radio">
                    男
                    <input type="radio">
                    女</div>
                <div class="cbr">
                </div>
            </div>
            <!---->
            <div class="w700">
                <div class="w80 pull-right fleft  p10 m8">
                    身份：</div>
                <div class=" fleft heightarch">
                    <input type="radio">
                    老师
                    <input type="radio">
                    学生<input type="radio">
                    上班族<input type="radio">
                    自由职业者</div>
                <div class="cbr">
                </div>
            </div>
            <div class="cbr">
            </div>
        </div>
        <div class="w700">
            <div class="wid320 pull-right fleft  p10">
                &nbsp;</div>
            <div class=" fleft">
                <input type="text" name="" value="" class="regbtn1 w320">
            </div>
            <div class="  fleft  p10 color-hui">
                其他</div>
            <div class="cbr">
            </div>
        </div>
        <div class="w700">
            <div class="wid320 pull-right fleft  p10 m8">
                生日：</div>
            <div class="fleft">
                <select class="regbtn5  m8 ">
                    <option>2015</option>
                    <option>2014</option>
                </select>
                年 &nbsp;&nbsp;
                <select class="regbtn5  m8 ">
                    <option>1</option>
                    <option>2</option>
                </select>月
                <select class="regbtn5  m8">
                    <option>1</option>
                    <option>2</option>
                </select>日
            </div>
            <div class="cbr">
            </div>
        </div>
        <div class="w700">
            <div class="wid320 pull-right fleft p10 m8">
            </div>
            <div class="w300 fleft m8">
                <input type="button" class=" regbtn4" value="保 存"></div>
            <div class="cbr">
            </div>
        </div>
    </div>
    <div class="cor-line-bottom cbr mt10">
    </div>
    <div class="cbr mh10 ">
    </div>
</asp:Content>
