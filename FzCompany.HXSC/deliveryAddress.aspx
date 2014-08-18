<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true"
    CodeBehind="deliveryAddress.aspx.cs" Inherits="FzCompany.HXSC.deliveryAddress" %>

<%@ Register TagPrefix="uc" TagName="ucSample" Src="~/MySCControl.ascx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="cbr mh10">
    </div>
    <div class="content">
        <uc:ucSample ID="uc1" runat="server" />
        <div class="w970 fleft">
            <div class="savetitle-titile">
                <h3 class="col-wi50 fleft m10">
                    收货地址</h3>
                <span class="fright mp10"></span>
            </div>
            <!--begin-->
            <div class="addtab">
                <table width="100%" border="0">
                    <tr>
                        <th width="11%">
                            收货人
                        </th>
                        <th width="14%">
                            所在地区
                        </th>
                        <th width="30%">
                            街道地址
                        </th>
                        <th width="5%">
                            邮编
                        </th>
                        <th width="15%">
                            电话/手机
                        </th>
                        <th width="14%">
                            默认地址
                        </th>
                        <th width="11%">
                            操作
                        </th>
                    </tr>
                    <tr>
                        <td>
                            张三
                        </td>
                        <td>
                            福建省 福州市 XX区
                        </td>
                        <td>
                            XXXXXXXXXXXXXXXXXXXX
                        </td>
                        <td>
                            350000
                        </td>
                        <td>
                            150****1521
                        </td>
                        <td>
                            设为默认地址
                        </td>
                        <td>
                            <a href="#" class="mp10">修改</a>|<a href="#" class="ptop10">删除</a>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            张三
                        </td>
                        <td>
                            福建省 福州市 XX区
                        </td>
                        <td>
                            XXXXXXXXXXXXXXXXXXXX
                        </td>
                        <td>
                            350000
                        </td>
                        <td>
                            150****1521
                        </td>
                        <td>
                            设为默认地址
                        </td>
                        <td>
                            <a href="#" class="mp10">修改</a>|<a href="#" class="ptop10">删除</a>
                        </td>
                    </tr>
                </table>
            </div>
            <!--over-->
            <div class="addadress mh10 icon-pad">
                <div class="returntitile">
                    新增收货地址</div>
                <div class="addline">
                    <div class="dqtitile fl w80 pull-right mp10">
                        所在地区</div>
                    <select>
                        <option>上海省</option>
                        <option>广州省</option>
                    </select>
                    <select>
                        <option>上海市</option>
                        <option>广州市</option>
                    </select>
                    <select>
                        <option>上海区</option>
                        <option>广州区</option>
                    </select>
                </div>
                <div class="addline icon-pad addline20">
                    <div class="dqtitile fl w80 pull-right mp10">
                        收货人姓名</div>
                    <input type="text" class=" fl w150">
                    <div class="dqtitile fl w80 pull-right mp10">
                        手机号码</div>
                    <input type="text" class=" fl w150">
                    <div class="dqtitile fl w80 pull-right mp10">
                        电话号码</div>
                    <input type="text" class=" fl w150">
                    <div class="cbr">
                    </div>
                </div>
                <div class="addline icon-pad addline20">
                    <div class="dqtitile fl w80 pull-right mp10">
                        街道地址</div>
                    <input type="text" class=" fl w415">
                    <div class="dqtitile fl w80 pull-right mp10">
                        邮政编码</div>
                    <input type="text" class=" fl w150">
                    <div class="cbr">
                    </div>
                </div>
                <div class="addline addline20 mh10">
                    <div class="dqtitile fl w80 pull-right mp10">
                        &nbsp;</div>
                    <div class="dqtitile fl w320 ">
                        <input type="checkbox" checked class="fl">
                        设为默认地址</div>
                    <div class="cbr">
                    </div>
                </div>
            </div>
        </div>
        <div class="cor-line-bottom cbr mt10">
        </div>
    </div>
</asp:Content>
