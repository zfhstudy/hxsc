<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true"
    CodeBehind="examineBook.aspx.cs" Inherits="FzCompany.HXSC.examineBook" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="content">
        <div class="w970 fleft m100">
            <div class="savetitle-titile" style="display: none;">
                <h3 class="col-wi50 fleft m10">
                    补开发票</h3>
                <span class="fright mp10"></span>
            </div>
            <!--begin-->
            <div class="addtab mt10 m8">
                <table width="100%" border="0" class="book">
                    <tr>
                        <th width="25%">
                            书名
                        </th>
                        <th width="25%">
                            上传时间
                        </th>
                        <th width="25%">
                            状态
                        </th>
                        <th width="25%">
                            操作
                        </th>
                    </tr>
                    <tr>
                        <td>
                            <div class="fl linebook35">
                                <input type="checkbox"></div>
                            &nbsp;&nbsp;<div class="fl">
                                <img src="images/pj.jpg"></div>
                            &nbsp;&nbsp;
                            <div class="fl">
                                <dl>
                                    我的女神</dl>
                                <dt>￥3.99</dt></div>
                        </td>
                        <td>
                            2014-07-09
                        </td>
                        <td>
                            未审核
                        </td>
                        <td>
                            <input type="button" class="regbtn4" value="通 过"><input type="button" class="regbtn4"
                                value="不通过">
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <div class="fl linebook35">
                                <input type="checkbox"></div>
                            &nbsp;&nbsp;<div class="fl">
                                <img src="images/pj.jpg"></div>
                            &nbsp;&nbsp;
                            <div class="fl">
                                <dl>
                                    我的女神</dl>
                                <dt>￥3.99</dt></div>
                        </td>
                        <td>
                            2014-07-09
                        </td>
                        <td>
                            未审核
                        </td>
                        <td>
                            <input type="button" class="regbtn4" value="通 过"><input type="button" class="regbtn4"
                                value="不通过">
                        </td>
                    </tr>
                </table>
            </div>
            <!--over-->
            <div class="addline m8">
                <div class="fl mp10">
                    <input type="checkbox">全选</div>
            </div>
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
