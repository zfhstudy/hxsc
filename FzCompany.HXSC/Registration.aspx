<%@ Page Title="" Language="C#" MasterPageFile="~/BackMaster.Master" AutoEventWireup="true"
    CodeBehind="Registration.aspx.cs" Inherits="FzCompany.HXSC.Registration" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="cbr padding-top-60">
    </div>
    <div class="line-margin-960 ">
        <div class="regline">
            <div class="regtitle p10">
                注册新用户</div>
        </div>
        <div class="regcontent mh10">
            <div class="regline line35 ">
                <div class="w80 m235 pull-right fleft mp10">
                    邮箱/手机</div>
                <div class="w320 fleft ">
                    <input type="text" id="name" value="" class="regbtn1"></div>
                <div class="w320 fleft  pull-left p10 color-hui" style="color: Red" lang="name">
                </div>
                <div class="cbr">
                </div>
            </div>
            <div class="regline line35">
                <div class="w80 m235 pull-right fleft mp10">
                    登录密码</div>
                <div class="w320  fleft">
                    <input type="password" id="pwd" value="" class="regbtn1"></div>
                <div class="w320 fleft  pull-left p10 color-hui" style="color: Red" lang="pwd">
                </div>
                <div class="cbr">
                </div>
            </div>
            <div class="regline line35">
                <div class="w80 m235 pull-right fleft mp10">
                    确认密码
                </div>
                <div class="w320  fleft">
                    <input type="password" id="realpwd" value="" class="regbtn1"></div>
                <div class="w320 fleft  pull-left p10 color-hui" style="color: Red" lang="realpwd">
                </div>
                <div class="cbr">
                </div>
            </div>
            <div class="regline line">
                <div class="w80 m235 pull-right fleft mp10">
                    &nbsp;</div>
                <div class="w320  fleft">
                    <input type="checkbox" value="" name="" checked>
                    我已经阅读并同意《。。。。条款》</div>
                <div class="cbr">
                </div>
            </div>
            <div class="regline line35">
                <div class="w80 m235 pull-right fleft mp10">
                    &nbsp;</div>
                <div class="w320  fleft">
                    <input type="button" name="" onclick="show()" value="立即注册" class="regbtn2" /></div>
                <div class="cbr">
                </div>
            </div>
        </div>
    </div>
    <div class="cor-line-bottom cbr mt10 margin-top-60">
    </div>
    <script type="text/javascript">
        function checkname() {
            var name = $("#name").val();
            if (!name) {
                $("div[lang='name']").html("不能为空");
            } else {
                $.ajax({
                    url: "Ajax/Login.ashx",
                    type: "POST",
                    data: { MethodType: "CheckPhoneOrMail", name: name },
                    error: function () { $("div[lang='name']").html("检查出错"); },
                    success: function (data) {
                        if (data == "False") {
                            $("div[lang='name']").html("此邮箱已被注册过!");
                        } else {
                            $("div[lang='name']").html("可以使用!");
                        }
                    }
                });
            }
        }

        function checkName() {
            var name = $("div[lang='name']").html();
            if (name && name == "可以使用!") {
                return true;
            }
            return false;
        }

        function checkpwd() {
            var name = $("#pwd").val();
            if (name.length < 6) {
                $("div[lang='pwd']").html("密码必须大于等于6位!");
                return false;
            } else {
                $("div[lang='pwd']").html("正确");
                return true;
            }
        }

        function checkrealpwd() {
            var name = $("#realpwd").val();
            var realname = $("#pwd").val();
            if (name == "" || name != realname) {
                $("div[lang='realpwd']").html("两次密码不一致!");
                return false;
            } else {
                $("div[lang='realpwd']").html("正确");
                return true;
            }
        }

        $(document).ready(function () {
            $("#name").blur(function () {
                checkname();
            });
            $("#pwd").blur(function () {
                checkpwd();
            });
            $("#realpwd").blur(function () {
                checkrealpwd();
            });
        });

        function show() {
            if (!checkName() || !checkpwd() || !checkrealpwd()) {
                alert(checkName() + "*" + checkpwd() + "*" + checkrealpwd());
                return;
            }
            var name = $("#name").val();
            var pwd = $("#pwd").val();
            $.post("Ajax/Login.ashx", { MethodType: "Registraion", Name: name, Pwd: pwd },
            function (data) {
                if (data.result == "true") {
                    alert("注册成功！");
                    setTimeout(function () {
                        location.href = "index.aspx";
                    }, 1500);
                } else {
                    alert("注册失败");
                }
            });
        }
    </script>
</asp:Content>
