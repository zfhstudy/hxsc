<%@ Page Title="" Language="C#" MasterPageFile="~/BackMaster.Master" AutoEventWireup="true"
    CodeBehind="manageBook.aspx.cs" Inherits="FzCompany.HXSC.manageBook" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="cbr mh10">
    </div>
    <!--导航开始-->
    <div class="content m240">
        <div class="loadline mh10">
            <div class="w110 fleft pull-right loadline35">
                内部编号</div>
            <div class="fleft">
                <input type="text" name="" value="" class="regbtn6"></div>
            <div class="w110 fleft pull-right loadline35">
                查询号</div>
            <div class="fleft">
                <input type="text" name="" value="" class="regbtn6"></div>
            <div class="w110 fleft pull-right loadline35 margin-right-10">
                类别</div>
            <div class="fleft">
                <select class="regbtn5">
                    <option>武侠</option>
                </select></div>
        </div>
        <div class="loadline mt10 cbr">
            <div class="w110 fleft pull-right loadline35">
                书名</div>
            <div class="fleft">
                <input type="text" name="" value="" class="regbtn7"></div>
            <div class="w110 fleft pull-right loadline35 margin-right-10">
                语种</div>
            <div class="fleft">
                <select class="regbtn5">
                    <option>中文</option>
                </select></div>
        </div>
        <div class="loadline mt10 cbr">
            <div class="w110 fleft pull-right loadline35">
                ISBN</div>
            <div class="fleft">
                <input type="text" name="" value="" class="regbtn6 "></div>
            <div class="fleft loadline35 margin-left-10">
                /</div>
            <div class="fleft">
                <input type="text" name="" value="" class="regbtn6 "></div>
            <div class="w110 fleft pull-right loadline35 margin-right-10">
                条码</div>
            <div class="fleft">
                <input type="text" name="" value="" class="regbtn8 w184 "></div>
        </div>
        <div class="loadline mt10 cbr">
            <div class="w110 fleft pull-right loadline35">
                丛书名</div>
            <div class="fleft">
                <input type="text" name="" value="" class="regbtn8 w743 "></div>
        </div>
        <div class="loadline mt10 cbr">
            <div class="w110 fleft pull-right loadline35">
                CIP</div>
            <div class="fleft">
                <input type="text" name="" value="" class="regbtn8 w743 "></div>
        </div>
        <div class="loadline mt10 cbr">
            <div class="w110 fleft pull-right loadline35">
                原版书名</div>
            <div class="fleft">
                <input type="text" name="" value="" class="regbtn8 w310 "></div>
            <div class="w110 fleft pull-right loadline35">
                原语种</div>
            <div class="fleft">
                <input type="text" name="" value="" class="regbtn8 w310 "></div>
        </div>
        <div class="loadline mt10 cbr">
            <div class="w110 fleft pull-right loadline35">
                原版定价(元)</div>
            <div class="fleft">
                <input type="text" name="" value="" class="regbtn8 w310 "></div>
            <div class="w110 fleft pull-right loadline35">
                原版定价币种</div>
            <div class="fleft">
                <input type="text" name="" value="" class="regbtn8 w310 "></div>
        </div>
        <div class="loadline mt10 cbr">
            <div class="w110 fleft pull-right loadline35">
                出版社</div>
            <div class="fleft">
                <input type="text" name="" value="" class="regbtn8 w310 "></div>
            <div class="w110 fleft pull-right loadline35">
                定价(元)</div>
            <div class="fleft">
                <input type="text" name="" value="" class="regbtn8 w310 "></div>
        </div>
        <div class="loadline mt10 cbr">
            <div class="w110 fleft pull-right loadline35">
                出版时间</div>
            <div class="fleft">
                <input type="text" name="" value="" class="regbtn8 w310"></div>
            <div class="w110 fleft pull-right loadline35">
                首版时间</div>
            <div class="fleft">
                <input type="text" name="" value="" class="regbtn8 w310 "></div>
        </div>
        <div class="loadline mt10 cbr">
            <div class="w110 fleft pull-right loadline35">
                版印次</div>
            <div class="fleft loadline35">
                <input type="text" name="" value="" class="regbtn8 w128 ">&nbsp;&nbsp;版</div>
            <div class="fleft loadline35">
                <input type="text" name="" value="" class="regbtn8 w128 ">&nbsp;&nbsp;次</div>
            <div class="w110 fleft pull-right loadline35">
                装帧开本</div>
            <div class="fleft margin-left-10">
                <select class="regbtn9 w150">
                    <option>中文</option>
                </select></div>
            <div class="fleft margin-left-10">
                <select class="regbtn9 w150">
                    <option>中文</option>
                </select></div>
        </div>
        <div class="loadline mt10 cbr">
            <div class="w110 fleft pull-right loadline35">
                作者</div>
            <div class="fleft">
                <input type="text" name="" value="" class="regbtn8 w275"></div>
            <div class="fleft loadline35 margin-left-10 orange">
                查询</div>
            <div class="w110 fleft pull-right loadline35">
                译者</div>
            <div class="fleft">
                <input type="text" name="" value="" class="regbtn8 w275"></div>
            <div class="fleft loadline35 margin-left-10 orange">
                查询</div>
        </div>
        <div class="loadline mt10 cbr">
            <div class="w110 fleft pull-right loadline35">
                撰述方式</div>
            <div class="fleft">
                <select class="regbtn8 w310">
                    <option>23423423</option>
                </select></div>
            <div class="w110 fleft pull-right loadline35">
                主编</div>
            <div class="fleft">
                <input type="text" name="" value="" class="regbtn8 w275"></div>
            <div class="fleft loadline35 margin-left-10 orange">
                查询</div>
        </div>
        <div class="loadline mt10 cbr">
            <div class="w110 fleft pull-right loadline35">
                字数(万)</div>
            <div class="fleft loadline35">
                <input type="text" name="" value="" class="regbtn8 w128"></div>
            <div class="fleft loadline35">
                &nbsp;&nbsp;&nbsp;页数<input type="text" name="" value="" class="regbtn8 w128"></div>
            <div class="w110 fleft pull-right loadline35">
                责任主编</div>
            <div class="fleft">
                <input type="text" name="" value="" class="regbtn8 w310"></div>
        </div>
        <div class="loadline mt10 cbr">
            <div class="w110 fleft pull-right loadline35">
                印数(册)</div>
            <div class="fleft">
                <input type="text" name="" value="" class="regbtn8 w310"></div>
            <div class="w110 fleft pull-right loadline35">
                文字编辑编辑室</div>
            <div class="fleft">
                <input type="text" name="" value="" class="regbtn8 w310 "></div>
        </div>
        <div class="loadline mt10 cbr">
            <div class="w110 fleft pull-right loadline35">
                策划编辑</div>
            <div class="fleft">
                <input type="text" name="" value="" class="regbtn8 w310"></div>
            <div class="w110 fleft pull-right loadline35">
                组稿编辑</div>
            <div class="fleft">
                <input type="text" name="" value="" class="regbtn8 w310 "></div>
        </div>
        <div class="loadline mt10 cbr">
            <div class="w110 fleft pull-right loadline35">
                版式设计</div>
            <div class="fleft">
                <input type="text" name="" value="" class="regbtn8 w310"></div>
            <div class="w110 fleft pull-right loadline35">
                封面设计</div>
            <div class="fleft">
                <input type="text" name="" value="" class="regbtn8 w310 "></div>
        </div>
        <div class="loadline mt10 cbr">
            <div class="w110 fleft pull-right loadline35">
                整体设计</div>
            <div class="fleft">
                <input type="text" name="" value="" class="regbtn8 w310"></div>
            <div class="w110 fleft pull-right loadline35">
                出版地</div>
            <div class="fleft">
                <input type="text" name="" value="" class="regbtn8 w310 "></div>
        </div>
        <div class="loadline mt10 cbr">
            <div class="w110 fleft pull-right loadline35">
                读者对象</div>
            <div class="fleft">
                <input type="text" name="" value="" class="regbtn8 w310"></div>
            <div class="w110 fleft pull-right loadline35">
                绘图</div>
            <div class="fleft">
                <input type="text" name="" value="" class="regbtn8 w310 "></div>
        </div>
        <div class="loadline mt10 cbr">
            <div class="w110 fleft pull-right loadline35">
                排版人</div>
            <div class="fleft">
                <input type="text" name="" value="" class="regbtn8 w310"></div>
            <div class="w110 fleft pull-right loadline35">
                印刷单位</div>
            <div class="fleft">
                <input type="text" name="" value="" class="regbtn8 w310 "></div>
        </div>
        <div class="loadline mt10 cbr">
            <div class="w110 fleft pull-right loadline35">
                销售量</div>
            <div class="fleft">
                <input type="text" name="" value="" class="regbtn8 w165"></div>
            <div class="w110 fleft pull-right loadline35">
                己售量</div>
            <div class="fleft">
                <input type="text" name="" value="" class="regbtn8 w165 "></div>
            <div class="w110 fleft pull-right loadline35">
                下架时间</div>
            <div class="fleft">
                <input type="text" name="" value="" class="regbtn8 w165 "></div>
        </div>
        <div class="w320" style="margin: 0 auto;">
            <div class="margin-top-60">
                <input type="text" name="" value="上 传" class="regbtn2 w150 "></div>
        </div>
    </div>
    <div class="cor-line-bottom cbr mt10">
    </div>
    </div>
    <div class="cbr mh10 ">
    </div>
</asp:Content>
