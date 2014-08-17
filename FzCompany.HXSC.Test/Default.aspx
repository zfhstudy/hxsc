<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="FzCompany.HXSC.Test.Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script type="text/javascript">
        function show() {
            document.getElementById("tbResult").value = "";
            return true;
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        接口：<asp:DropDownList ID="DropDownList1" runat="server">
            <asp:ListItem Value="1031" Text="1031用户注册登录"></asp:ListItem>
            <asp:ListItem Value="1032" Text="1032用户注册登录"></asp:ListItem>
            <asp:ListItem Value="1033" Text="1033用户注册登录"></asp:ListItem>
            <asp:ListItem Value="1034" Text="1034用户注册登录"></asp:ListItem>
            <asp:ListItem Value="1035" Text="1035用户注册登录"></asp:ListItem>
            <asp:ListItem Value="1036" Text="1036修改密码"></asp:ListItem>
            <asp:ListItem Value="1037" Text="1037查看余额"></asp:ListItem>
            <asp:ListItem Value="1038" Text="1038修改密码"></asp:ListItem>
            <asp:ListItem Value="1039" Text="1039查看余额"></asp:ListItem>
            <asp:ListItem Value="1030" Text="1030修改密码"></asp:ListItem>
            <asp:ListItem Value="1001" Text="1001用户注册"></asp:ListItem>
            <asp:ListItem Value="1002" Text="1002验证用户名是否已被注册"></asp:ListItem>
            <asp:ListItem Value="1003" Text="1003修改密码"></asp:ListItem>
            <asp:ListItem Value="1004" Text="1004用户注册登录"></asp:ListItem>
            <asp:ListItem Value="1005" Text="1005用户注册登录"></asp:ListItem>
            <asp:ListItem Value="1006" Text="1006用户注册登录"></asp:ListItem>
            <asp:ListItem Value="1007" Text="1007用户注册登录"></asp:ListItem>
            <asp:ListItem Value="1008" Text="1008用户注册登录"></asp:ListItem>
            <asp:ListItem Value="1009" Text="1009用户注册登录"></asp:ListItem>
            <asp:ListItem Value="1010" Text="1010用户注册登录"></asp:ListItem>
        </asp:DropDownList>
        <br />
        参数：<asp:TextBox ID="tbParam" runat="server" Width="700px"></asp:TextBox><br />
        <asp:Button ID="Button1" runat="server" Text="发送请求" OnClick="Button1_Click" OnClientClick="return show()" /><br />
        <hr />
        响应数据：<br />
        <asp:TextBox ID="tbResult" runat="server" Height="300px" Width="700px" TextMode="MultiLine"></asp:TextBox><br />
    </div>
    </form>
</body>
</html>
